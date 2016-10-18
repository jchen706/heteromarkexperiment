/*
 * Hetero-mark
 *
 * Copyright (c) 2015 Northeastern University
 * All rights reserved.
 *
 * Developed by:
 *   Northeastern University Computer Architecture Research (NUCAR) Group
 *   Northeastern University
 *   http://www.ece.neu.edu/groups/nucar/
 *
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal with the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 *   Redistributions of source code must retain the above copyright notice,
 *   this list of conditions and the following disclaimers.
 *
 *   Redistributions in binary form must reproduce the above copyright
 *   notice, this list of conditions and the following disclaimers in the
 *   documentation and/or other materials provided with the distribution.
 *
 *   Neither the names of NUCAR, Northeastern University, nor the names of
 *   its contributors may be used to endorse or promote products derived
 *   from this Software without specific prior written permission.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * CONTRIBUTORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS WITH THE SOFTWARE.
 */

#include "src/be/hc/be_hc_benchmark.h"
#include <hcc/hc.hpp>
#include <cstdlib>
#include <cstdio>

void BeHcBenchmark::Initialize() { BeBenchmark::Initialize(); }

void BeHcBenchmark::Run() {
  if (collaborative_execution_) {
    CollaborativeRun();
  } else {
    NormalRun();
  }
}

void BeHcBenchmark::CollaborativeRun() {
  hc::array_view<float, 1> background(num_pixels_, background_);
  hc::array_view<uint8_t, 1> av_data(num_frames_ * num_pixels_, data_);
  hc::array_view<uint8_t, 1> av_foreground(num_frames_ * num_pixels_,
                                           foreground_);

  std::vector<hc::completion_future> futures(num_frames_);
  for (uint32_t i = 0; i < num_frames_; i++) {
    auto future = 
    hc::parallel_for_each(
      hc::extent<1>(num_pixels_), 
      [=](hc::index<1> j)[[hc]] {
        uint32_t id = i * num_pixels_ + j[0];
        if (av_data[id] > background[j]) {
          av_foreground[id] = av_data[id] - background[j];
        } else {
          av_foreground[id] = background[j] - av_data[id];
        }

        background[j] = background[j] * (1 - alpha_) + av_data[id] * alpha_;
      });
  }
  av_foreground.synchronize();
}

void BeHcBenchmark::NormalRun() {
  hc::array_view<float, 1> background(num_pixels_, background_);
  hc::array_view<uint8_t, 1> av_data(num_frames_ * num_pixels_, data_);
  hc::array_view<uint8_t, 1> av_foreground(num_frames_ * num_pixels_,
                                           foreground_);

  for (uint32_t i = 0; i < num_frames_; i++) {
    hc::parallel_for_each(
      hc::extent<1>(num_pixels_),
      [=](hc::index<1> j)[[hc]] {
        uint32_t id = i * num_pixels_ + j[0];
        if (av_data[id] > background[j]) {
          av_foreground[id] = av_data[id] - background[j];
        } else {
          av_foreground[id] = background[j] - av_data[id];
        }

        background[j] = background[j] * (1 - alpha_) + av_data[id] * alpha_;
      });

    av_foreground.synchronize();
  }
}

void BeHcBenchmark::Cleanup() { BeBenchmark::Cleanup(); }