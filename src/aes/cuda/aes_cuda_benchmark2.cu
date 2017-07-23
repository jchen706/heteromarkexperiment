/* Copyright (c) 2015 Northeastern University
 * All rights reserved.
 *
 * Developed by:Northeastern University Computer Architecture Research (NUCAR)
 * Group, Northeastern University, http://www.ece.neu.edu/groups/nucar/
 *
 * Author: Carter McCardwell (carter@mccardwell.net, cmccardw@ece.neu.edu)
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 *  with the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense, and/
 * or sell copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 *   Redistributions of source code must retain the above copyright notice, this
 *   list of conditions and the following disclaimers. Redistributions in binary
 *   form must reproduce the above copyright notice, this list of conditions and
 *   the following disclaimers in the documentation and/or other materials
 *   provided with the distribution. Neither the names of NUCAR, Northeastern
 *   University, nor the names of its contributors may be used to endorse or
 *   promote products derived from this Software without specific prior written
 *   permission.
 *
 *   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 *   IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 *   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 *   CONTRIBUTORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 *   LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 *   FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 *   DEALINGS WITH THE SOFTWARE.
 */

#include "src/aes/cuda/aes_cuda_benchmark.h"
#include <cstring>
#include <string>
#include <memory>


__constant__  unsigned char  s[256] = {
    0x63, 0x7C, 0x77, 0x7B, 0xF2, 0x6B, 0x6F, 0xC5, 0x30, 0x01, 0x67, 0x2B,
    0xFE, 0xD7, 0xAB, 0x76, 0xCA, 0x82, 0xC9, 0x7D, 0xFA, 0x59, 0x47, 0xF0,
    0xAD, 0xD4, 0xA2, 0xAF, 0x9C, 0xA4, 0x72, 0xC0, 0xB7, 0xFD, 0x93, 0x26,
    0x36, 0x3F, 0xF7, 0xCC, 0x34, 0xA5, 0xE5, 0xF1, 0x71, 0xD8, 0x31, 0x15,
    0x04, 0xC7, 0x23, 0xC3, 0x18, 0x96, 0x05, 0x9A, 0x07, 0x12, 0x80, 0xE2,
    0xEB, 0x27, 0xB2, 0x75, 0x09, 0x83, 0x2C, 0x1A, 0x1B, 0x6E, 0x5A, 0xA0,
    0x52, 0x3B, 0xD6, 0xB3, 0x29, 0xE3, 0x2F, 0x84, 0x53, 0xD1, 0x00, 0xED,
    0x20, 0xFC, 0xB1, 0x5B, 0x6A, 0xCB, 0xBE, 0x39, 0x4A, 0x4C, 0x58, 0xCF,
    0xD0, 0xEF, 0xAA, 0xFB, 0x43, 0x4D, 0x33, 0x85, 0x45, 0xF9, 0x02, 0x7F,
    0x50, 0x3C, 0x9F, 0xA8, 0x51, 0xA3, 0x40, 0x8F, 0x92, 0x9D, 0x38, 0xF5,
    0xBC, 0xB6, 0xDA, 0x21, 0x10, 0xFF, 0xF3, 0xD2, 0xCD, 0x0C, 0x13, 0xEC,
    0x5F, 0x97, 0x44, 0x17, 0xC4, 0xA7, 0x7E, 0x3D, 0x64, 0x5D, 0x19, 0x73,
    0x60, 0x81, 0x4F, 0xDC, 0x22, 0x2A, 0x90, 0x88, 0x46, 0xEE, 0xB8, 0x14,
    0xDE, 0x5E, 0x0B, 0xDB, 0xE0, 0x32, 0x3A, 0x0A, 0x49, 0x06, 0x24, 0x5C,
    0xC2, 0xD3, 0xAC, 0x62, 0x91, 0x95, 0xE4, 0x79, 0xE7, 0xC8, 0x37, 0x6D,
    0x8D, 0xD5, 0x4E, 0xA9, 0x6C, 0x56, 0xF4, 0xEA, 0x65, 0x7A, 0xAE, 0x08,
    0xBA, 0x78, 0x25, 0x2E, 0x1C, 0xA6, 0xB4, 0xC6, 0xE8, 0xDD, 0x74, 0x1F,
    0x4B, 0xBD, 0x8B, 0x8A, 0x70, 0x3E, 0xB5, 0x66, 0x48, 0x03, 0xF6, 0x0E,
    0x61, 0x35, 0x57, 0xB9, 0x86, 0xC1, 0x1D, 0x9E, 0xE1, 0xF8, 0x98, 0x11,
    0xB0, 0x54, 0xBB, 0x16};

__device__ void SubBytes(unsigned char* input) {
  input[0] = s[input[0]];
  input[1] = s[input[1]];
  input[2] = s[input[2]];
  input[3] = s[input[3]];
  input[4] = s[input[4]];
  input[5] = s[input[5]];
  input[6] = s[input[6]];
  input[7] = s[input[7]];
  input[8] = s[input[8]];
  input[9] = s[input[9]];
  input[10] = s[input[10]];
  input[11] = s[input[11]];
  input[12] = s[input[12]];
  input[13] = s[input[13]];
  input[14] = s[input[14]];
  input[15] = s[input[15]];
}

__device__ void MixColumns(unsigned char* arr) {
  for (int i = 0; i < 4; i++) {
    unsigned char a[4];
    unsigned char b[4];
    unsigned char c;
    unsigned char h;
    for (c = 0; c < 4; c++) {
      a[c] = arr[(4 * i + c)];
      h = a[c] & 0x80;
      b[c] = a[c] << 1;
      if (h == 0x80) {
        b[c] ^= 0x1b;
      }
    }
    arr[i * 4 + 0] = b[0] ^ a[3] ^ a[2] ^ b[1] ^ a[1];
    arr[i * 4 + 1] = b[1] ^ a[0] ^ a[3] ^ b[2] ^ a[2];
    arr[i * 4 + 2] = b[2] ^ a[1] ^ a[0] ^ b[3] ^ a[3];
    arr[i * 4 + 3] = b[3] ^ a[2] ^ a[1] ^ b[0] ^ a[0];
  }
}

__device__ void ShiftRows(unsigned char* input) {
  unsigned char state[16];
  state[0] = input[0];
  state[1] = input[5];
  state[2] = input[10];
  state[3] = input[15];
  state[4] = input[4];
  state[5] = input[9];
  state[6] = input[14];
  state[7] = input[3];
  state[8] = input[8];
  state[9] = input[13];
  state[10] = input[2];
  state[11] = input[7];
  state[12] = input[12];
  state[13] = input[1];
  state[14] = input[6];
  state[15] = input[11];

  input[0] = state[0];
  input[1] = state[1];
  input[2] = state[2];
  input[3] = state[3];
  input[4] = state[4];
  input[5] = state[5];
  input[6] = state[6];
  input[7] = state[7];
  input[8] = state[8];
  input[9] = state[9];
  input[10] = state[10];
  input[11] = state[11];
  input[12] = state[12];
  input[13] = state[13];
  input[14] = state[14];
  input[15] = state[15];
}

__device__ void AddRoundKey(unsigned char* state,  uint* expanded_key, int offset) {
  for (int i = 0; i < 4; i++) {
    uint word = expanded_key[offset + i];
    unsigned char bytes[4];

    bytes[0] = (word & 0xff000000) >> 24;
    bytes[1] = (word & 0x00ff0000) >> 16;
    bytes[2] = (word & 0x0000ff00) >> 8;
    bytes[3] = (word & 0x000000ff) >> 0;

    state[i * 4] ^= bytes[0];
    state[i * 4 + 1] ^= bytes[1];
    state[i * 4 + 2] ^= bytes[2];
    state[i * 4 + 3] ^= bytes[3];
  }
}

__global__ void aes_cuda(unsigned char *input, uint *expanded_key){
	unsigned char state[16];

	uint tid = blockIdx.x * blockDim.x + threadIdx.x;

	for(int i = 0; i < 16; i++){
		state[i] = input[tid * 16 + i];
	}

	AddRoundKey(state, expanded_key, 0);

	for (int i = 1; i < 14; i++) {
		SubBytes(state);
		ShiftRows(state);
		MixColumns(state);
		AddRoundKey(state, expanded_key, i * 4);
	}

	SubBytes(state);
	ShiftRows(state);
	AddRoundKey(state, expanded_key, 14 * 4);

	for (int i = 0; i < 16; i++) {
		input[tid * 16 + i] = state[i];
	}
}
	

		
void AesCudaBenchmark::Initialize() {
  AesBenchmark::Initialize();
  InitializeDeviceMemory();
}

void AesCudaBenchmark::InitializeDeviceMemory() {
	cudaMalloc((void**)&dev_ciphertext_, text_length_);
	cudaMalloc((void**)&dev_key_,kExpandedKeyLengthInBytes);
}

void AesCudaBenchmark::Cleanup() {
  AesBenchmark::Cleanup();
  cudaFree(dev_ciphertext_);
  cudaFree(dev_key_);
}
void AesCudaBenchmark::Run() {
  ExpandKey();
  CopyDataToDevice();
  RunKernel();
  CopyDataBackFromDevice();
}

void AesCudaBenchmark::CopyDataToDevice() {	
	cudaMemcpy(dev_ciphertext_, ciphertext_, text_length_, cudaMemcpyHostToDevice);
	cudaMemcpy(dev_key_, expanded_key_, kExpandedKeyLengthInBytes, cudaMemcpyHostToDevice); 
}

void AesCudaBenchmark::RunKernel() {
	int num_blocks = text_length_ / 16;
	printf("Num of blocks % d\n", num_blocks);
	dim3 grid_size(static_cast<size_t> (num_blocks / 64.00));
	dim3 block_size(64);
        
        aes_cuda<<<grid_size, block_size>>>(dev_ciphertext_, dev_key_);	

}

void AesCudaBenchmark::CopyDataBackFromDevice() {
	cudaMemcpy(ciphertext_, dev_ciphertext_, text_length_, cudaMemcpyDeviceToHost);
  }
