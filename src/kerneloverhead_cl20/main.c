#define __NO_STD_VECTOR
#define MAX_SOURCE_SIZE (0x100000)

#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include <string.h>

#include <CL/cl.h>

int main(int argc, const char * argv[])
{
  srand(time(NULL));
  clock_t c_main_start, c_main_stop, c_test_start, c_test_stop;
  c_main_start = clock();
  
  FILE *cl_code = fopen("kernel.cl", "r");
  if (cl_code == NULL) { printf("\nerror: clfile\n"); return(1); }
  char *source_str = (char *)malloc(MAX_SOURCE_SIZE);
  int res = fread(source_str, 1, MAX_SOURCE_SIZE, cl_code);
  fclose(cl_code);
  size_t source_length = strlen(source_str);

  cl_int err;
  cl_platform_id platform;
  cl_context context;
  cl_command_queue queue;
  cl_device_id device;
  cl_program program;

  err = clGetPlatformIDs(1, &platform, NULL);
  if (err != CL_SUCCESS) { printf("platformid %i", err); return 1; }

  err = clGetDeviceIDs(platform, CL_DEVICE_TYPE_GPU, 1, &device, NULL);
  if (err != CL_SUCCESS) { printf("deviceid %i", err); return 1; }

  context = clCreateContext(0, 1, &device, NULL, NULL, &err);
  if (err != CL_SUCCESS) { printf("createcontext %i", err); return 1; }

  queue = clCreateCommandQueueWithProperties(context, device, NULL, &err);
  if (err != CL_SUCCESS) { printf("commandqueue %i", err); return 1; }

  program = clCreateProgramWithSource(context, 1, (const char**)&source_str, &source_length, &err);
  if (err != CL_SUCCESS) { printf("createprogram %i", err); return 1; }

  
  err = clBuildProgram(program, 1, &device, NULL, NULL, NULL);
  if (err != CL_SUCCESS) { printf("buildprogram ocl12 %i", err); }
  
  if (err == CL_BUILD_PROGRAM_FAILURE) {
    size_t log_size;
    clGetProgramBuildInfo(program, device, CL_PROGRAM_BUILD_LOG, 0, NULL, &log_size);
    char *log = (char *) malloc(log_size);
    clGetProgramBuildInfo(program, device, CL_PROGRAM_BUILD_LOG, log_size, log, NULL);
    printf("%s\n", log);
    return 1;
  }

  float diff = 0;
  int i;

	    for (int y = 1; y < 11; y++)
	    {
	      printf("\nTest %i, %i kernels spawned", y, y*100);
	      cl_kernel kernel = clCreateKernel(program, "CLRunner", &err);
	      if (err != CL_SUCCESS) { printf("createkernel %i", err); }
	      cl_event event;
	      const size_t local = 1;
	      const size_t global = 1;
	      c_test_start = clock();
	      for (int i = 0; i < y*100; i++)
		{
		  err = clEnqueueNDRangeKernel(queue, kernel, 1, NULL, &global, &local, 0, NULL, NULL);
		  if (err != CL_SUCCESS) { printf("enqueuendrangekernel %i", err); }
		  clFinish(queue);
		}
	      c_test_stop = clock();
	      diff = (((float)c_test_stop - (float)c_test_start) / CLOCKS_PER_SEC ) * 1000;
	      printf("\n\tTest %i-1 done, time: %f ms", y, diff);
	      c_test_start = clock();
	      for (int i = 0; i < y*100; i++)
		{
		  err = clEnqueueNDRangeKernel(queue, kernel, 1, NULL, &global, &local, 0, NULL, NULL);
		  if (err != CL_SUCCESS) { printf("enqueuendrangekernel %i", err); }
		}
	      clFinish(queue);
	      c_test_stop = clock();
	      diff = (((float)c_test_stop - (float)c_test_start) / CLOCKS_PER_SEC ) * 1000;
	      printf("\n\tTest %i-2 done, time: %f ms", y, diff);
	    }

  clReleaseContext(context);
  clReleaseCommandQueue(queue);
  printf("\n");
}
