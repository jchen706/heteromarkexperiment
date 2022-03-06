nvcc -arch=sm_50 ep_command_line_options.cc ep_benchmark.cc main.cc ep_cuda_benchmark.cu ./src/common/command_line_option/benchmark_command_line_options.cc \
./src/common/benchmark/benchmark_runner.cc ./src/common/command_line_option/command_line_option.cc \
./src/common/command_line_option/option_parser_impl.cc ./src/common/command_line_option/option_setting_help_printer.cc \
./src/common/command_line_option/option_setting_impl.cc ./src/common/time_measurement/time_keeper_impl.cc \
./src/common/time_measurement/timer_impl.cc  ./src/common/time_measurement/time_measurement_impl.cc \
./src/common/time_measurement/time_keeper_summary_printer.cc 