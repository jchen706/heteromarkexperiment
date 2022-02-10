COMMON_PATH="./src/common/benchmark/*.cc
./src/common/command_line_option/*.cc
./src/common/time_measurement/*.cc"

for file in $COMMON_PATH
do 
  echo "Clang $file"
  clang++ -emit-llvm $file -O3 -c -std=c++14 -Wdangling-initializer-list -Wno-uninitialized -Wall -lgtest
done

rm *_test.bc


BITCODE_PATH="./*.bc"

for file in $BITCODE_PATH
do 
  echo "llc $file"
  llc --relocation-model=pic --filetype=obj $file
done

# mv *.o ../objectfiles
