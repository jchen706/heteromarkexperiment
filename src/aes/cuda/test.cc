#include <cstdlib>
#include <string>
#include "aes_command_line_options.h"
#include "aes_cuda_benchmark.h"
#include "src/common/benchmark/benchmark_runner.h"
#include "src/common/command_line_option/command_line_option.h"
#include "src/common/time_measurement/time_measurement.h"
#include "src/common/time_measurement/time_measurement_impl.h"

int main(int argc, char const *argv[]) {
  std::unique_ptr<AesCudaBenchmark> benchmark(new AesCudaBenchmark());
  std::unique_ptr<TimeMeasurement> timer(new TimeMeasurementImpl());
  BenchmarkRunner runner(benchmark.get(), timer.get());

  AesCommandLineOptions options;
  options.RegisterOptions();
  options.Parse(argc, argv);
  options.ConfigureAesBenchmark(benchmark.get());
  options.ConfigureBenchmarkRunner(&runner);

  runner.SetVerificationMode(true);

  runner.Run();

  return 0;
}