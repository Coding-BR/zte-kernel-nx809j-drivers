#include <assert.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef intptr_t __int64;
typedef void *_QWORD;
typedef unsigned int _DWORD;
typedef unsigned char _BYTE;
#define __fastcall

static int request_sequence[8];
static unsigned int request_count;
static unsigned int request_index;
static int kmalloc_should_fail;
static unsigned int request_calls;
static unsigned int free_calls;
static unsigned int kmalloc_calls;
static unsigned int printk_calls;
static unsigned long long last_value;
static unsigned long last_kmalloc_size;

static const char unk_3BE43[] = "allocation";
static const char unk_3703C[] = "buffer";

static void reset_state(void)
{
  memset(request_sequence, 0, sizeof(request_sequence));
  request_count = 0;
  request_index = 0;
  kmalloc_should_fail = 0;
  request_calls = 0;
  free_calls = 0;
  kmalloc_calls = 0;
  printk_calls = 0;
  last_value = 0;
  last_kmalloc_size = 0;
}

static void set_requests(const int *values, unsigned int count)
{
  memcpy(request_sequence, values, count * sizeof(values[0]));
  request_count = count;
}

static __int64 syna_request_managed_device(void)
{
  request_calls++;
  if (request_index >= request_count)
    return 0;
  return (__int64)(uintptr_t)request_sequence[request_index++];
}

static void devm_kfree(__int64 device, void *memory)
{
  assert(device != 0 && memory != NULL);
  free_calls++;
  free(memory);
}

static void *devm_kmalloc(__int64 device, unsigned long size, unsigned int flags)
{
  (void)flags;
  assert(device != 0);
  assert(size > 0 && size <= 64);
  kmalloc_calls++;
  last_kmalloc_size = size;
  return kmalloc_should_fail ? NULL : malloc(size);
}

static int printk(const char *format, ...)
{
  va_list args;
  (void)format;
  va_start(args, format);
  (void)va_arg(args, const char *);
  last_value = va_arg(args, unsigned long long);
  va_end(args);
  printk_calls++;
  return 0;
}

#include "../../../reconstructed/zte_tpd/syna_tcm_buf_alloc.c"

static void test_existing_large_buffer(void)
{
  unsigned char state[16] = {0};
  unsigned char data[32];
  void *existing = data;
  memcpy(state, &existing, sizeof(existing));
  memset(data, 0xaa, sizeof(data));
  *(unsigned int *)(state + 8) = 16;
  *(unsigned int *)(state + 12) = 9;
  reset_state();
  assert(syna_tcm_buf_alloc((__int64)(uintptr_t)state, 8) == 0);
  assert(request_calls == 0 && free_calls == 0 && kmalloc_calls == 0);
  assert(*(unsigned int *)(state + 12) == 0);
  for (unsigned int i = 0; i < 16; ++i)
    assert(data[i] == 0);
}

static void test_allocate_success(void)
{
  unsigned char buffer[16] = {0};
  const int requests[] = {1};
  reset_state();
  set_requests(requests, 1);
  assert(syna_tcm_buf_alloc((__int64)(uintptr_t)buffer, 24) == 0);
  assert(request_calls == 1 && kmalloc_calls == 1 && printk_calls == 0);
  assert(last_kmalloc_size == 24);
  assert(*(void **)buffer != NULL && *(unsigned int *)(buffer + 8) == 24);
  assert(*(unsigned int *)(buffer + 12) == 0);
  for (unsigned int i = 0; i < 24; ++i)
    assert(*((unsigned char *)*(void **)buffer + i) == 0);
  free(*(void **)buffer);
}

static void test_allocate_no_managed_device(void)
{
  unsigned char buffer[16] = {0};
  const int requests[] = {0};
  reset_state();
  set_requests(requests, 1);
  assert(syna_tcm_buf_alloc((__int64)(uintptr_t)buffer, 16) == 4294967053LL);
  assert(request_calls == 1 && kmalloc_calls == 0 && printk_calls == 2);
  assert(*(void **)buffer == NULL && *(unsigned int *)(buffer + 8) == 0);
  assert(last_value == 16);
}

static void test_replace_existing_buffer(void)
{
  unsigned char buffer[16] = {0};
  void *old = malloc(8);
  const int requests[] = {1, 1};
  memcpy(buffer, &old, sizeof(old));
  *(unsigned int *)(buffer + 8) = 8;
  reset_state();
  set_requests(requests, 2);
  assert(syna_tcm_buf_alloc((__int64)(uintptr_t)buffer, 16) == 0);
  assert(request_calls == 2 && free_calls == 1 && kmalloc_calls == 1);
  assert(last_kmalloc_size == 16);
  assert(*(void **)buffer != NULL && *(unsigned int *)(buffer + 8) == 16);
  free(*(void **)buffer);
}

static void test_kmalloc_failure(void)
{
  unsigned char buffer[16] = {0};
  const int requests[] = {1};
  reset_state();
  set_requests(requests, 1);
  kmalloc_should_fail = 1;
  assert(syna_tcm_buf_alloc((__int64)(uintptr_t)buffer, 32) == 4294967053LL);
  assert(request_calls == 1 && kmalloc_calls == 1 && printk_calls == 1);
  assert(last_kmalloc_size == 32 && last_value == 32);
  assert(*(void **)buffer == NULL && *(unsigned int *)(buffer + 8) == 0);
}

int main(void)
{
  test_existing_large_buffer();
  test_allocate_success();
  test_allocate_no_managed_device();
  test_replace_existing_buffer();
  test_kmalloc_failure();
  puts("syna_tcm_buf_alloc host oracle: PASS (5 groups)");
  return 0;
}
