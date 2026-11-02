#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

#define __user
#define __fastcall
typedef long long __int64;
typedef int16_t __int16;
typedef uint32_t _DWORD;
typedef uint64_t _QWORD;

struct file { int unused; };
struct ztp_device;

long long tpd_cdev;
char unk_34061[256] = "zte_tpd_log";
static unsigned int callback_calls;
static uintptr_t callback_argument;
static unsigned int printk_calls;

static int refresh_single_game(struct ztp_device *cdev)
{
  callback_calls++;
  callback_argument = (uintptr_t)cdev;
  return 0;
}

static int wrong_callback(struct ztp_device *cdev)
{
  (void)cdev;
  callback_calls += 100;
  return 0;
}

int printk(const char *format, ...)
{
  (void)format;
  printk_calls++;
  return 0;
}

int host_simple_read_from_buffer(void __user *to, size_t count, loff_t *ppos,
                                 const void *from, size_t available)
{
  size_t offset = (size_t)*ppos;
  size_t copied;

  if (offset >= available)
    return 0;
  copied = available - offset;
  if (copied > count)
    copied = count;
  memcpy(to, (const uint8_t *)from + offset, copied);
  *ppos += (loff_t)copied;
  return (int)copied;
}

#define simple_read_from_buffer(to, count, ppos, from, available) \
  host_simple_read_from_buffer((void __user *)(uintptr_t)(to), \
                               (size_t)(count), (loff_t *)(uintptr_t)(ppos), \
                               (const void *)(from), (size_t)(available))

#include "../../../reconstructed/zte_tpd/tp_single_game_read.c"

struct fixture {
  uint8_t device[0xed8 + sizeof(void *)];
};

static void expect(int condition, const char *case_name, const char *message)
{
  if (!condition) {
    fprintf(stderr, "FAIL %s: %s\n", case_name, message);
    exit(1);
  }
}

static void store_ptr(uint8_t *base, size_t offset, void *value)
{
  memcpy(base + offset, &value, sizeof(value));
}

static void fixture_init(struct fixture *fixture, unsigned int value,
                         int with_callback)
{
  memset(fixture, 0, sizeof(*fixture));
  *(uint32_t *)(fixture->device + 0x454) = value;
  store_ptr(fixture->device, 0xed0, (void *)wrong_callback);
  store_ptr(fixture->device, 0xed8,
            with_callback ? (void *)refresh_single_game : NULL);
  tpd_cdev = (long long)(uintptr_t)fixture->device;
  callback_calls = 0;
  callback_argument = 0;
  printk_calls = 0;
}

static void test_zero_offset_refreshes_and_formats_value(void)
{
  const char *name = "zero_offset_refreshes_and_formats_value";
  struct fixture fixture;
  struct file file = {0};
  loff_t offset = 0;
  char output[8] = {0};

  fixture_init(&fixture, 42, 1);
  expect(tp_single_game_read(&file, output, sizeof(output), &offset) == 3,
         name, "formatted read length differs");
  expect(strcmp(output, "42\n") == 0, name, "formatted value differs");
  expect(offset == 3, name, "read offset was not advanced");
  expect(callback_calls == 1, name, "refresh callback was not called once");
  expect(callback_argument == (uintptr_t)fixture.device, name,
         "refresh callback argument differs");
  expect(printk_calls == 1, name, "read was not logged");
}

static void test_nonzero_offset_has_no_side_effects(void)
{
  const char *name = "nonzero_offset_has_no_side_effects";
  struct fixture fixture;
  struct file file = {0};
  loff_t offset = 1;
  char output[8] = {0};

  fixture_init(&fixture, 9, 1);
  expect(tp_single_game_read(&file, output, sizeof(output), &offset) == 0,
         name, "nonzero offset did not return zero");
  expect(callback_calls == 0, name, "callback ran for nonzero offset");
  expect(printk_calls == 0, name, "read logged for nonzero offset");
}

static void test_zero_offset_without_callback_still_reads(void)
{
  const char *name = "zero_offset_without_callback_still_reads";
  struct fixture fixture;
  struct file file = {0};
  loff_t offset = 0;
  char output[8] = {0};

  fixture_init(&fixture, 0, 0);
  expect(tp_single_game_read(&file, output, sizeof(output), &offset) == 2,
         name, "zero value read length differs");
  expect(strcmp(output, "0\n") == 0, name, "zero value differs");
  expect(callback_calls == 0, name, "missing callback was invoked");
  expect(printk_calls == 1, name, "zero read was not logged");
}

int main(void)
{
  test_zero_offset_refreshes_and_formats_value();
  test_nonzero_offset_has_no_side_effects();
  test_zero_offset_without_callback_still_reads();
  puts("PASS tp_single_game_read host tests (3 cases)");
  return 0;
}
