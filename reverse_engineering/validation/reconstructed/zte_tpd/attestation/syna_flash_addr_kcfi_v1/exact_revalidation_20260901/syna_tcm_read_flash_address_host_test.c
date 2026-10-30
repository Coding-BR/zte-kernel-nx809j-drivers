#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
typedef long long __int64;
#define __fastcall

struct device {
  int marker;
};

#include "../../../reconstructed/zte_tpd/zte_tpd_tcm_layout.h"

static struct device managed_device;
static int setup_return;
static int read_return;
static int switch_calls;
static int setup_calls;
static int read_calls;
static int alloc_calls;
static int free_calls;
static unsigned int setup_delay;
static unsigned int setup_timeout;
static u32 read_address;
static u32 read_length;
static int printk_count;

static void reset_mocks(void)
{
  setup_return = 0;
  read_return = 0;
  switch_calls = 0;
  setup_calls = 0;
  read_calls = 0;
  alloc_calls = 0;
  free_calls = 0;
  setup_delay = 0;
  setup_timeout = 0;
  read_address = 0;
  read_length = 0;
  printk_count = 0;
}

int printk(const char *format, ...)
{
  (void)format;
  ++printk_count;
  return 0;
}

struct device *syna_request_managed_device(void)
{
  return &managed_device;
}

void *devm_kmalloc(struct device *device, size_t size, unsigned int flags)
{
  (void)device;
  (void)flags;
  ++alloc_calls;
  return malloc(size);
}

void devm_kfree(struct device *device, const void *pointer)
{
  (void)device;
  ++free_calls;
  free((void *)pointer);
}

#include "../../../reconstructed/zte_tpd/syna_tcm_read_flash_address.c"

int syna_tcm_set_up_flash_access(__int64 tcm, __int64 access_context,
                                 __int64 delay_ms,
                                 unsigned int timeout_ms)
{
  struct syna_tcm_flash_access_context *access =
      (struct syna_tcm_flash_access_context *)(uintptr_t)access_context;

  (void)tcm;
  ++setup_calls;
  setup_delay = (unsigned int)delay_ms;
  setup_timeout = timeout_ms;
  if (setup_return >= 0)
    access->managed_allocation = malloc(8);
  return setup_return;
}

int syna_tcm_read_flash(__int64 tcm, unsigned int address,
                        __int64 destination, unsigned int length,
                        int delay_ms)
{
  (void)tcm;
  (void)delay_ms;
  ++read_calls;
  read_address = address;
  read_length = length;
  if (read_return >= 0)
    memset((void *)(uintptr_t)destination, 0x5a, length);
  return read_return;
}

int syna_tcm_switch_fw_mode(struct tcm_dev *tcm, u8 mode,
                             unsigned int delay_ms)
{
  (void)tcm;
  (void)mode;
  (void)delay_ms;
  ++switch_calls;
  return 0;
}

static void expect_true(bool condition, const char *label)
{
  if (!condition) {
    fprintf(stderr, "FAIL: %s\n", label);
    exit(1);
  }
}

static void reset_fixture(struct tcm_dev *tcm,
                          struct tcm_transport_overlay *transport,
                          struct tcm_buffer *buffer)
{
  memset(tcm, 0, sizeof(*tcm));
  memset(transport, 0, sizeof(*transport));
  memset(buffer, 0, sizeof(*buffer));
  tcm->transport = transport;
  tcm->timing_01e8 = 43;
  reset_mocks();
}

static void test_validation(void)
{
  struct tcm_dev tcm;
  struct tcm_transport_overlay transport;
  struct tcm_buffer buffer;

  reset_fixture(&tcm, &transport, &buffer);
  expect_true(syna_tcm_read_flash_address(0, 1, 4,
                                          (__int64)(uintptr_t)&buffer, 1) == -241,
              "null tcm returns -241");

  reset_fixture(&tcm, &transport, &buffer);
  expect_true(syna_tcm_read_flash_address((__int64)(uintptr_t)&tcm, 1, 4,
                                          0, 1) == -241,
              "null destination buffer returns -241");
}

static void test_bootloader_read_and_reuse(void)
{
  struct tcm_dev tcm;
  struct tcm_transport_overlay transport;
  struct tcm_buffer buffer;
  u8 storage[8];

  reset_fixture(&tcm, &transport, &buffer);
  buffer.data = storage;
  buffer.buf_size = sizeof(storage);
  tcm.firmware_mode = 0x0b;
  expect_true(syna_tcm_read_flash_address(
                  (__int64)(uintptr_t)&tcm, 0x1234, 4,
                  (__int64)(uintptr_t)&buffer, 7) == 0,
              "bootloader flash read succeeds");
  expect_true(setup_calls == 0 && read_calls == 1 &&
              read_address == 0x1234 && read_length == 4 &&
              buffer.data_length == 4 && storage[0] == 0x5a,
              "existing buffer read contract is correct");
  expect_true(switch_calls == 0, "bootloader mode is not switched");
}

static void test_resize_and_application_cleanup(void)
{
  struct tcm_dev tcm;
  struct tcm_transport_overlay transport;
  struct tcm_buffer buffer;
  u8 *old_storage;

  reset_fixture(&tcm, &transport, &buffer);
  old_storage = malloc(2);
  buffer.data = old_storage;
  buffer.buf_size = 2;
  tcm.firmware_mode = 1;
  expect_true(syna_tcm_read_flash_address(
                  (__int64)(uintptr_t)&tcm, 0x55, 8,
                  (__int64)(uintptr_t)&buffer, 9) == 0,
              "application flash read succeeds");
  expect_true(setup_calls == 1 && setup_delay == 9 && setup_timeout == 43 &&
              read_calls == 1 && buffer.buf_size == 8 &&
              buffer.data_length == 8 && switch_calls == 1 &&
              free_calls == 2 && alloc_calls == 1,
              "resize, setup, switch and cleanup are balanced");
  free(buffer.data);
}

static void test_zero_length_and_failures(void)
{
  struct tcm_dev tcm;
  struct tcm_transport_overlay transport;
  struct tcm_buffer buffer;
  u8 storage[4];

  reset_fixture(&tcm, &transport, &buffer);
  tcm.firmware_mode = 1;
  buffer.data = storage;
  buffer.buf_size = sizeof(storage);
  expect_true(syna_tcm_read_flash_address(
                  (__int64)(uintptr_t)&tcm, 1, 0,
                  (__int64)(uintptr_t)&buffer, 1) == 0,
              "zero length is a no-op");
  expect_true(read_calls == 0 && switch_calls == 1,
              "zero length skips flash read but restores application mode");

  reset_fixture(&tcm, &transport, &buffer);
  tcm.firmware_mode = 0x0b;
  read_return = -19;
  expect_true(syna_tcm_read_flash_address(
                  (__int64)(uintptr_t)&tcm, 2, 4,
                  (__int64)(uintptr_t)&buffer, 1) == -19,
              "flash read failure is propagated");
  expect_true(buffer.data_length == 0, "failed read leaves length zero");
  free(buffer.data);

  reset_fixture(&tcm, &transport, &buffer);
  tcm.firmware_mode = 0x0b;
  setup_return = -22;
  expect_true(syna_tcm_read_flash_address(
                  (__int64)(uintptr_t)&tcm, 2, 4,
                  (__int64)(uintptr_t)&buffer, 1) == 0,
              "bootloader mode does not call setup");
  free(buffer.data);

  reset_fixture(&tcm, &transport, &buffer);
  tcm.firmware_mode = 1;
  setup_return = -22;
  expect_true(syna_tcm_read_flash_address(
                  (__int64)(uintptr_t)&tcm, 2, 4,
                  (__int64)(uintptr_t)&buffer, 1) == -22,
              "setup failure is propagated");
}

int main(void)
{
  test_validation();
  test_bootloader_read_and_reuse();
  test_resize_and_application_cleanup();
  test_zero_length_and_failures();
  puts("PASS: syna_tcm_read_flash_address host contract");
  return 0;
}
