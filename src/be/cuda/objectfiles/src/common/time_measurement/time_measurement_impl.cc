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
 * Author: Yifan Sun (yifansun@coe.neu.edu)
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

#include "src/common/time_measurement/time_measurement_impl.h"
#include "src/common/time_measurement/time_keeper_impl.h"
#include "src/common/time_measurement/time_keeper_summary_printer.h"
#include "src/common/time_measurement/timer_impl.h"
#include <iostream>

TimeMeasurementImpl::TimeMeasurementImpl() {
  timer_.reset(new TimerImpl());
  time_keeper_.reset(new TimeKeeperImpl(timer_.get()));
}

void TimeMeasurementImpl::Start() { time_keeper_->Start(); }

void TimeMeasurementImpl::End(std::initializer_list<const char *> catagories) {
  std::cout << "Entering End" << std::endl;
  time_keeper_->End(catagories);
}

void TimeMeasurementImpl::Summarize(std::ostream *ostream) {
  TimeKeeperSummaryPrinter printer(time_keeper_.get());
  printer.print(ostream);
}

double TimeMeasurementImpl::GetTime(const char *catagory) {
  return time_keeper_->GetTime(catagory);
}
