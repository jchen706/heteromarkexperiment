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

#include "ep_command_line_options.h"

void EpCommandLineOptions::RegisterOptions() {
  BenchmarkCommandLineOptions::RegisterOptions();

  command_line_option_.SetBenchmarkName("EP Benchmark");
  command_line_option_.SetDescription("This benchmark runs EP.");

  command_line_option_.AddArgument("MaxGeneration", "integer", "100", "-m",
                                   "--max-generation",
                                   "Stops after certain number of generations"
                                   " are created");

  command_line_option_.AddArgument("Population", "integer", "1024", "-x",
                                   "--population",
                                   "Number of identities to be generated in "
                                   "each generation");

  command_line_option_.AddArgument("Collaborative", "bool", "false", "-c",
                                   "--collaborative",
                                   "Execute in CPU-GPU pipelined mode");
}

void EpCommandLineOptions::Parse(int argc, const char *argv[]) {
  BenchmarkCommandLineOptions::Parse(argc, argv);

  max_generation_ =
      command_line_option_.GetArgumentValue("MaxGeneration")->AsUInt32();
  population_ = command_line_option_.GetArgumentValue("Population")->AsUInt32();
  pipelined_ = command_line_option_.GetArgumentValue("Collaborative")->AsBool();
}

void EpCommandLineOptions::ConfigureEpBenchmark(EpBenchmark *benchmark) {
  BenchmarkCommandLineOptions::ConfigureBenchmark(benchmark);
  benchmark->SetMaxGeneration(max_generation_);
  benchmark->SetPopulation(population_);
  benchmark->SetPipelined(pipelined_);
}
