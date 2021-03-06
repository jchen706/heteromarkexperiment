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

#include "bs_command_line_options.h"

void BsCommandLineOptions::RegisterOptions() {
  // Register General Options
  BenchmarkCommandLineOptions::RegisterOptions();

  // The name of the Benchmark -- BlackScholes
  command_line_option_.SetBenchmarkName("BS Benchmark");

  // The description of the benchmark
  command_line_option_.SetDescription(
      "This benchmark runs BlackScholes application on <input -x>"
      "number of elements");

  // Registering the option for number of inputs
  command_line_option_.AddArgument("NumElements", "integer", "1024", "-x",
                                   "--num-elements",
                                   "Number of samples to be calculated");

  // Registering the option to turn of the CPU
  command_line_option_.AddArgument("Collaborative", "bool", "false", "-c",
                                   "--collaborative",
                                   "Involving CPU in the computation.");

  // Registering the Chunk of tiles that run on GPU separately
  command_line_option_.AddArgument(
      "GpuChunk", "integer", "0", "", "--chunk",
      "The chunk of 64 thread tiles that are lunched "
      "on the GPU on every parralel/kernel launch");
}

void BsCommandLineOptions::Parse(int argc, const char *argv[]) {
  // Parse general Options
  BenchmarkCommandLineOptions::Parse(argc, argv);

  // Parse the input arguments for number of elements for BS
  num_elements_ =
      command_line_option_.GetArgumentValue("NumElements")->AsUInt32();

  active_cpu_ =
      command_line_option_.GetArgumentValue("Collaborative")->AsBool();

  gpu_chunk_ = command_line_option_.GetArgumentValue("GpuChunk")->AsUInt32();
}

void BsCommandLineOptions::ConfigureBsBenchmark(BsBenchmark *benchmark) {
  BenchmarkCommandLineOptions::ConfigureBenchmark(benchmark);

  // Call the setter to set the number of elements
  benchmark->SetNumElements(num_elements_);
  benchmark->SetActiveCPU(active_cpu_);
  benchmark->SetGpuChunk(gpu_chunk_);
}
