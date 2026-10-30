#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

#define __user
#define __fastcall
#define __int64 long long
#define _DWORD uint32_t
#define ZTE_TPD_HOST_TEST 1
#define snprintf zte_host_snprintf

struct file {
  int unused;
};

static long long tpd_cdev;
static unsigned int callback_calls;
static unsigned int printk_calls;
static unsigned int snprintf_calls;

int printk(const char *format, ...)
{
  (void)format;
  printk_calls++;
  return 0;
}

int zte_host_snprintf(char *buffer, size_t size, const char *format,
                      unsigned int value)
{
  snprintf_calls++;
  return __builtin_snprintf(buffer, size, format, value);
}

ssize_t simple_read_from_buffer(__int64 destination_address,
                                __int64 count, __int64 *position,
                                const void *source, __int64 available)
{
  char *destination = (char *)(uintptr_t)destination_address;
  __int64 copied;

  if (*position < 0 || count < 0 || available < 0)
    return -1;
  if (*position >= available)
    return 0;
  copied = available - *position;
  if (copied > count)
    copied = count;
  memcpy(destination, (const char *)source + *position, (size_t)copied);
  *position += copied;
  return (ssize_t)copied;
}

static int host_refresh(void *device)
{
  (void)device;
  callback_calls++;
  return 0;
}

#include "../../../reconstructed/zte_tpd/tp_palm_mode_read.c"

struct fixture {
  uint8_t device[0xfa8 + sizeof(void *)];
};

static void fail(const char *case_name, const char *message)
{
  fprintf(stderr, "FAIL %s: %s\n", case_name, message);
  exit(1);
}

static void expect(int condition, const char *case_name, const char *message)
{
  if (!condition)
    fail(case_name, message);
}

static void store_ptr(uint8_t *base, size_t offset, void *value)
{
  memcpy(base + offset, &value, sizeof(value));
}

static void store_u32(uint8_t *base, size_t offset, uint32_t value)
{
  memcpy(base + offset, &value, sizeof(value));
}

static void fixture_init(struct fixture *fixture, uint32_t value,
                         int with_callback)
{
  memset(fixture, 0, sizeof(*fixture));
  store_u32(fixture->device, 0x478, value);
  store_ptr(fixture->device, 0xfa8,
            with_callback ? (void *)host_refresh : NULL);
  tpd_cdev = (long long)(uintptr_t)fixture->device;
  callback_calls = 0;
  printk_calls = 0;
  snprintf_calls = 0;
}

static void test_value_and_callback(void)
{
  const char *case_name = "value_and_callback";
  struct fixture fixture;
  char output[16] = {0};
  loff_t position = 0;
  ssize_t result;

  fixture_init(&fixture, 1234, 1);
  result = tp_palm_mode_read(NULL, output, sizeof(output), &position);
  expect(result == 5, case_name, "unexpected read length");
  expect(memcmp(output, "1234\n", 5) == 0, case_name,
         "unexpected formatted value");
  expect(position == 5, case_name, "position was not advanced");
  expect(callback_calls == 1 && printk_calls == 1 && snprintf_calls == 1,
         case_name, "callback/log/format contract differs");
}

static void test_missing_callback_and_short_read(void)
{
  const char *case_name = "missing_callback_and_short_read";
  struct fixture fixture;
  char output[2] = {0};
  loff_t position = 0;
  ssize_t result;

  fixture_init(&fixture, 7, 0);
  result = tp_palm_mode_read(NULL, output, 2, &position);
  expect(result == 2 && memcmp(output, "7\n", 2) == 0, case_name,
         "short read contract differs");
  expect(callback_calls == 0, case_name, "missing callback was called");
}

static void test_nonzero_position_is_eof(void)
{
  const char *case_name = "nonzero_position_is_eof";
  struct fixture fixture;
  char output[8];
  loff_t position = 1;
  ssize_t result;

  fixture_init(&fixture, 9, 1);
  memset(output, 0xa5, sizeof(output));
  result = tp_palm_mode_read(NULL, output, sizeof(output), &position);
  expect(result == 0 && callback_calls == 0, case_name,
         "EOF path performed work");
  expect((unsigned char)output[0] == 0xa5, case_name,
         "EOF path modified output");
}

int main(void)
{
  test_value_and_callback();
  test_missing_callback_and_short_read();
  test_nonzero_position_is_eof();
  puts("PASS tp_palm_mode_read: 3 cases");
  return 0;
}
