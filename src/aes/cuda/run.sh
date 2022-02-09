
# clang++ aes_cuda_benchmark.cu -c  -std=c++11 --cuda-path=/usr/local/cuda-10.1 --cuda-gpu-arch=sm_61 -L/usr/local/cuda-10.1/lib64 -lcudart_static -ldl -lrt -pthread -save-temps -v


# clang++ -emit-llvm main.cc --cuda-gpu-arch=sm_61 -O3 -c -pthread
# clang++ -emit-llvm aes_command_line_options.cc --cuda-gpu-arch=sm_61 -O3 -c -pthread
# clang++ -emit-llvm aes_benchmark.cc --cuda-gpu-arch=sm_61 -O3 -c -pthread


# COMMON_PATH="src/common/benchmark/*.cc
# src/common/cl_util/*.cc
# src/common/command_line_option/*.cc
# src/common/time_measurement/*.cc"

# for file in $COMMON_PATH
# do 
#   echo "Clang $file"
#   clang++ -emit-llvm $file -O3 -c -lgtest
# done


# required files
# time_measurement_impl.o
# benchmark_runner.o
# benchmark_command_line_options.o
# command_line_option.o
# aes_command_line_options.o
# aes_cuda_benchmark.o

# /data/jchen/open_source_template/build/compilation/kernelTranslator aes_cuda_benchmark-cuda-nvptx64-nvidia-cuda-sm_61.bc kernel.bc 
# /data/jchen/open_source_template/build/compilation/hostTranslator aes_cuda_benchmark-host-x86_64-unknown-linux-gnu.bc host.bc

# llc --relocation-model=pic --filetype=obj  kernel.bc
# llc --relocation-model=pic --filetype=obj  host.bc
# llc --relocation-model=pic --filetype=obj  main.bc

# llc --relocation-model=pic --filetype=obj  aes_command_line_options.bc
# llc --relocation-model=pic --filetype=obj  aes_benchmark.bc


COMMON="./objectfiles/*.o"


g++ -g -std=c++14 -Wno-uninitialized -Wall -L/data/jchen/open_source_template/build/runtime  -L/data/jchen/open_source_template/build/runtime/threadPool -o demo -fPIC -no-pie ${COMMON} aes_command_line_options.o aes_benchmark.o main.o host.o kernel.o -lc -lx86Runtime -lthreadPool -lpthread



# run -i ../../data/aes/test.data -k ../../data/aes/key.data

# nvcc aes_command_line_options.cc aes_benchmark.cc main.cc aes_cuda_benchmark.cu ./src/common/command_line_option/benchmark_command_line_options.cc \
# ./src/common/benchmark/benchmark_runner.cc ./src/common/command_line_option/command_line_option.cc \
# ./src/common/command_line_option/option_parser_impl.cc ./src/common/command_line_option/option_setting_help_printer.cc \
# ./src/common/command_line_option/option_setting_impl.cc ./src/common/time_measurement/time_keeper_impl.cc \
# ./src/common/time_measurement/timer_impl.cc  ./src/common/time_measurement/time_measurement_impl.cc \
# ./src/common/time_measurement/time_keeper_summary_printer.cc 


#1  0x0000000000406365 in TimeKeeperImpl::End(std::initializer_list<char const*>) ()
#2  0x0000000000402d5f in BenchmarkRunner::Run() ()
#3  0x00000000004089ac in main ()