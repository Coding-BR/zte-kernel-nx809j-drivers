#include <stdbool.h>
#include <assert.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define __int64 long long
#define __int8 char
#define __int16 short
#define __int32 int
typedef unsigned long long _QWORD;
typedef unsigned char _BYTE;
typedef unsigned short _WORD;
typedef unsigned int _DWORD;
#define __fastcall

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;

#include "../../../reconstructed/zte_tpd/zte_tpd_tcm_layout.h"

static bool managed_available;
static unsigned char managed_token;
static int allocation_count;
static int fail_allocation_number;
static int free_count;
static int lock_count;
static int unlock_count;
static int printk_count;

void *unk_38244 = (void *)0x1;
void *unk_3BA82 = (void *)0x2;
void *unk_3BE43 = (void *)0x3;
void *unk_38286 = (void *)0x4;
void *unk_3703C = (void *)0x5;
void *unk_378CD = (void *)0x6;
void *unk_3944E = (void *)0x7;
void *unk_34F34 = (void *)0x8;

static void reset_mocks(void)
{
  managed_available = true;
  allocation_count = 0;
  fail_allocation_number = 0;
  free_count = 0;
  lock_count = 0;
  unlock_count = 0;
  printk_count = 0;
}

int printk(const void *format, const char *function, ...)
{
  (void)format;
  (void)function;
  ++printk_count;
  return 0;
}

__int64 syna_request_managed_device(void)
{
  return managed_available ? (__int64)(uintptr_t)&managed_token : 0;
}

void *devm_kmalloc(__int64 device, size_t size, unsigned int flags)
{
  void *memory;

  (void)device;
  (void)flags;
  ++allocation_count;
  if (fail_allocation_number == allocation_count)
    return NULL;
  memory = malloc(size);
  if (memory)
    memset(memory, 0xa5, size);
  return memory;
}

void devm_kfree(__int64 device, void *memory)
{
  (void)device;
  if (memory) {
    ++free_count;
    free(memory);
  }
}

void mutex_lock(__int64 lock)
{
  (void)lock;
  ++lock_count;
}

void mutex_unlock(__int64 lock)
{
  (void)lock;
  ++unlock_count;
}

#include "../../../reconstructed/zte_tpd/syna_tcm_buf_copy_2.c"

static void expect_true(bool condition, const char *label)
{
  if (!condition) {
    fprintf(stderr, "FAIL: %s\n", label);
    exit(1);
  }
}

static void init_buffer(struct tcm_buffer *buffer, u8 *data,
                        u32 capacity, u32 length)
{
  memset(buffer, 0, sizeof(*buffer));
  buffer->data = data;
  buffer->buf_size = capacity;
  buffer->data_length = length;
}

static void test_copy_without_growth(void)
{
  struct tcm_buffer destination;
  struct tcm_buffer source;
  u8 *destination_data = malloc(8);
  u8 *source_data = malloc(4);

  expect_true(destination_data && source_data, "allocate copy fixtures");
  memcpy(source_data, "ABCD", 4);
  init_buffer(&destination, destination_data, 8, 0);
  init_buffer(&source, source_data, 4, 4);
  reset_mocks();
  expect_true(syna_tcm_buf_copy_2(&destination, &source) == 0,
              "copy without growth succeeds");
  expect_true(destination.data_length == 4 &&
              memcmp(destination.data, "ABCD", 4) == 0,
              "copy transfers bytes and length");
  expect_true(destination.lock_depth == 0 && source.lock_depth == 0 &&
              lock_count == 2 && unlock_count == 2,
              "copy releases both locks");
  free(destination_data);
  free(source_data);
}

static void test_growth_and_zeroing(void)
{
  struct tcm_buffer destination;
  struct tcm_buffer source;
  u8 *old_destination = malloc(2);
  u8 *source_data = malloc(4);

  expect_true(old_destination && source_data, "allocate growth fixtures");
  memcpy(source_data, "WXYZ", 4);
  init_buffer(&destination, old_destination, 2, 0);
  init_buffer(&source, source_data, 4, 4);
  reset_mocks();
  expect_true(syna_tcm_buf_copy_2(&destination, &source) == 0,
              "growth copy succeeds");
  expect_true(destination.data != old_destination &&
              destination.buf_size == 5 &&
              destination.data_length == 4 &&
              memcmp(destination.data, "WXYZ", 4) == 0,
              "growth allocates length plus one and copies");
  expect_true(destination.lock_depth == 0 && source.lock_depth == 0,
              "growth releases both locks");
  free(destination.data);
  free(source_data);
}

static void test_allocation_failure(void)
{
  struct tcm_buffer destination;
  struct tcm_buffer source;
  u8 *old_destination = malloc(2);
  u8 *source_data = malloc(4);

  expect_true(old_destination && source_data, "allocate failure fixtures");
  memcpy(source_data, "FAIL", 4);
  init_buffer(&destination, old_destination, 2, 0);
  init_buffer(&source, source_data, 4, 4);
  reset_mocks();
  fail_allocation_number = 1;
  expect_true(syna_tcm_buf_copy_2(&destination, &source) == -243,
              "allocation failure returns -243");
  expect_true(destination.data == NULL && destination.buf_size == 0 &&
              destination.lock_depth == 0 && source.lock_depth == 0 &&
              unlock_count == 2,
              "allocation failure clears destination and unlocks");
  free(source_data);
}

static void test_invalid_copy_and_managed_device(void)
{
  struct tcm_buffer destination;
  struct tcm_buffer source;
  u8 destination_data[8];
  u8 source_data[4] = {1, 2, 3, 4};
  u8 *managed_destination;

  init_buffer(&destination, destination_data, 8, 0);
  init_buffer(&source, source_data, 2, 4);
  reset_mocks();
  expect_true(syna_tcm_buf_copy_2(&destination, &source) == -22,
              "insufficient destination returns -22");
  expect_true(destination.lock_depth == 0 && source.lock_depth == 0,
              "invalid copy unlocks both");

  init_buffer(&destination, destination_data, 8, 0);
  init_buffer(&source, NULL, 8, 4);
  reset_mocks();
  expect_true(syna_tcm_buf_copy_2(&destination, &source) == -22,
              "null source data returns -22");

  managed_destination = malloc(2);
  expect_true(managed_destination != NULL, "allocate managed-device fixture");
  init_buffer(&destination, managed_destination, 2, 0);
  init_buffer(&source, source_data, 4, 4);
  reset_mocks();
  managed_available = false;
  expect_true(syna_tcm_buf_copy_2(&destination, &source) == -243,
              "missing managed device returns -243");
  expect_true(destination.data == NULL && destination.lock_depth == 0 &&
              source.lock_depth == 0,
              "missing managed device cleans destination");
  free(managed_destination);
}

static void test_nested_lock_depth(void)
{
  struct tcm_buffer destination;
  struct tcm_buffer source;
  u8 destination_data[4];
  u8 source_data[2] = {9, 8};

  init_buffer(&destination, destination_data, 4, 0);
  init_buffer(&source, source_data, 2, 2);
  destination.lock_depth = 2;
  source.lock_depth = 3;
  reset_mocks();
  expect_true(syna_tcm_buf_copy_2(&destination, &source) == 0,
              "nested lock copy succeeds");
  expect_true(destination.lock_depth == 2 && source.lock_depth == 3,
              "nested lock depths are restored");
}

int main(void)
{
  test_copy_without_growth();
  test_growth_and_zeroing();
  test_allocation_failure();
  test_invalid_copy_and_managed_device();
  test_nested_lock_depth();
  puts("PASS: syna_tcm_buf_copy_2 host contract");
  return 0;
}
