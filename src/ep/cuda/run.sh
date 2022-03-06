
clang++ ep_cuda_benchmark.cu -c  -std=c++11 --cuda-path=/usr/local/cuda-10.1 --cuda-gpu-arch=sm_50 -L/usr/local/cuda-10.1/lib64 -lcudart_static -ldl -lrt -lm -pthread -save-temps -v


clang++ -emit-llvm main.cc  -std=c++11 --cuda-gpu-arch=sm_50 -O3 -c -pthread
clang++ -emit-llvm ep_command_line_options.cc --cuda-gpu-arch=sm_50 -O3 -c -pthread
clang++ -emit-llvm ep_benchmark.cc --cuda-gpu-arch=sm_50 -O3 -c -pthread


/data/jchen/open_source_template/build/compilation/kernelTranslator ep_cuda_benchmark-cuda-nvptx64-nvidia-cuda-sm_50.bc kernel.bc 
/data/jchen/open_source_template/build/compilation/hostTranslator ep_cuda_benchmark-host-x86_64-unknown-linux-gnu.bc host.bc

llc --relocation-model=pic --filetype=obj  kernel.bc
llc --relocation-model=pic --filetype=obj  host.bc
llc --relocation-model=pic --filetype=obj  main.bc


llc --relocation-model=pic --filetype=obj  ep_command_line_options.bc
llc --relocation-model=pic --filetype=obj  ep_benchmark.bc


COMMON="./objectfiles/*.o"



g++ -g -std=c++11 -Wno-uninitialized -Wall -L/data/jchen/open_source_template/build/runtime  -L/data/jchen/open_source_template/build/runtime/threadPool -o test -fPIC -no-pie ${COMMON} ep_command_line_options.o ep_benchmark.o main.o host.o kernel.o -lc -lx86Runtime -lthreadPool -lpthread

# g++ -g -std=c++11 -Wno-uninitialized -Wall  -L/home/robinhan/repo/open_source_template/build/runtime \
#  -L/home/robinhan/repo/open_source_template/build/runtime/threadPool -o test -fPIC -no-pie ${COMMON} ep_command_line_options.o ep_benchmark.o main.o host.o kernel.o -lc -lx86Runtime -lthreadPool -lpthread -lm

# /data/jchen/open_source_template/build/compilation/kernelTranslator ep_cuda_benchmark-cuda-nvptx64-nvidia-cuda-sm_61.bc kernel.bc 
# /data/jchen/open_source_template/build/compilation/hostTranslator ep_cuda_benchmark-host-x86_64-unknown-linux-gnu.bc host.bc


# llc --relocation-model=pic --filetype=obj  kernel.bc
# llc --relocation-model=pic --filetype=obj  host.bc

# COMMON="./objectfiles/*.o"


# g++ -o ep -fPIC -no-pie -L/home/robinhan/repo/open_source_template/build/runtime \
#   -L/home/robinhan/repo/open_source_template/build/runtime/threadPool \
#   cuda/main.cc host.o kernel.o *.cc   ${COMMON} \
#   -I../.. -I/home/robinhan/repo/open_source_template/runtime/include/ \
#   -I../.. -I/home/robinhan/repo/open_source_template/runtime/threadPool/include/ \
#  -lpthread -lc -lx86Runtime -lthreadPool

# ./ep -q -v

# run -i ../../data/aes/test.data -k ../../data/aes/key.data



# BITCODE_PATH="../../data/aes/*B.data"

# for file in $BITCODE_PATH
# do 
#    echo "############"
#    echo "\n"
#   echo "RUNNING $file"
    
#   ./test -i $file -k ../../data/aes/key.data
# done


# run -i ../../data/aes/test.data -k ../../data/aes/key.data

# nvcc aes_command_line_options.cc aes_benchmark.cc main.cc aes_cuda_benchmark.cu ./src/common/command_line_option/benchmark_command_line_options.cc \
# ./src/common/benchmark/benchmark_runner.cc ./src/common/command_line_option/command_line_option.cc \
# ./src/common/command_line_option/option_parser_impl.cc ./src/common/command_line_option/option_setting_help_printer.cc \
# ./src/common/command_line_option/option_setting_impl.cc ./src/common/time_measurement/time_keeper_impl.cc \
# ./src/common/time_measurement/timer_impl.cc  ./src/common/time_measurement/time_measurement_impl.cc \
# ./src/common/time_measurement/time_keeper_summary_printer.cc 