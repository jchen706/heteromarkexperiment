
clang++ ga_cuda_benchmark.cu -c  -std=c++14 --cuda-path=/usr/local/cuda-10.1 --cuda-gpu-arch=sm_61 -L/usr/local/cuda-10.1/lib64 -lcudart_static -ldl -lrt -pthread -save-temps -v


clang++ -emit-llvm main.cc  -std=c++14 --cuda-gpu-arch=sm_61 -O3 -c -pthread
clang++ -emit-llvm ga_command_line_options.cc --cuda-gpu-arch=sm_61 -O3 -c -pthread
clang++ -emit-llvm ga_benchmark.cc --cuda-gpu-arch=sm_61 -O3 -c -pthread


/data/jchen/open_source_template/build/compilation/kernelTranslator ga_cuda_benchmark-cuda-nvptx64-nvidia-cuda-sm_61.bc kernel.bc 
/data/jchen/open_source_template/build/compilation/hostTranslator ga_cuda_benchmark-host-x86_64-unknown-linux-gnu.bc host.bc

llc --relocation-model=pic --filetype=obj  kernel.bc
llc --relocation-model=pic --filetype=obj  host.bc
llc --relocation-model=pic --filetype=obj  main.bc


llc --relocation-model=pic --filetype=obj  ga_command_line_options.bc
llc --relocation-model=pic --filetype=obj  ga_benchmark.bc


COMMON="./objectfiles/*.o"


g++ -g -std=c++14 -Wno-uninitialized -Wall -L/data/jchen/open_source_template/build/runtime  -L/data/jchen/open_source_template/build/runtime/threadPool -o test -fPIC -no-pie ${COMMON} ga_command_line_options.o ga_benchmark.o main.o host.o kernel.o -lc -lx86Runtime -lthreadPool -lpthread



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

