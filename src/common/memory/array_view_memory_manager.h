#ifndef SRC_COMMON_MEMORY_ARRAY_VIEW_MEMORY_MANAGER_
#define SRC_COMMON_MEMORY_ARRAY_VIEW_MEMORY_MANAGER_

#include <hcc/hc.hpp>

#include "src/common/memory/memory_manager.h"

#if COMPILE_HCC

class ArrayViewMemory : public Memory {
 protected:
  hc::array_view<uint8_t, 1> d_buf_;

 public:
  ArrayViewMemory(void *h_buf, size_t byte_size)
      : Memory(h_buf, byte_size), d_buf_(byte_size, (uint8_t *)h_buf) {
    d_buf_.synchronize_to(hc::accelerator().get_default_view());
  };

  void *GetDevicePtr() override {
    return static_cast<void *>(d_buf_.accelerator_pointer());
  }

  void HostToDevice() override { d_buf_.refresh(); }

  void DeviceToHost() override {
    d_buf_.synchronize_to(
        hc::accelerator(L"cpu").get_default_view());
    d_buf_.synchronize();
  }

  void Free() override {
    // The GPU memory will be freed when the array_view is destructed.
  }
};

class ArrayViewMemoryManager : public MemoryManager {
 public:
  ArrayViewMemory *Shadow(void *buf, size_t byte_size) {
    return new ArrayViewMemory(buf, byte_size);
  }
};

#endif  // COMPILE_HCC
#endif  // SRC_COMMON_MEMORY_ARRAY_VIEW_MEMORY_MANAGER_
