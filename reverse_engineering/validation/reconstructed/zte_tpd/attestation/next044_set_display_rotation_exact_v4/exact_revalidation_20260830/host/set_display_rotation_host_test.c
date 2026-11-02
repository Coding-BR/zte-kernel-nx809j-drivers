#include <errno.h>
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
char unk_31DC4[256] = "zte_tpd_log";
static unsigned int callback_calls;
static unsigned int stale_callback_calls;
static uintptr_t callback_argument;
static int callback_value;
static unsigned int printk_calls;

static int set_rotation(struct ztp_device *cdev, int value)
{
  callback_calls++;
  callback_argument = (uintptr_t)cdev;
  callback_value = value;
  return 0;
}

static int stale_rotation(struct ztp_device *cdev, int value)
{
  (void)cdev;
  (void)value;
  stale_callback_calls++;
  return 0;
}

int printk(const char *format, ...)
{
  (void)format;
  printk_calls++;
  return 0;
}

void _check_object_size(const void *object, size_t size, int is_source)
{
  (void)object;
  (void)size;
  (void)is_source;
}

unsigned long zte_inline_copy_from_user(void *to, const void __user *from,
                                        unsigned long size)
{
  memcpy(to, from, size);
  return 0;
}

int kstrtouint(const char *buffer, unsigned int base, unsigned int *value)
{
  char *end;
  unsigned long parsed;

  if (base != 0 || buffer == NULL || *buffer == '\0')
    return -EINVAL;
  parsed = strtoul(buffer, &end, 0);
  if (end == buffer || (*end != '\0' && *end != '\n') ||
      parsed > UINT32_MAX)
    return -EINVAL;
  *value = (unsigned int)parsed;
  return 0;
}

#include "../../../reconstructed/zte_tpd/set_display_rotation.c"

struct fixture {
  uint8_t device[0xe90 + sizeof(void *)];
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

static void fixture_init(struct fixture *fixture, int with_callback)
{
  memset(fixture, 0, sizeof(*fixture));
  store_ptr(fixture->device, 0xe88, (void *)stale_rotation);
  store_ptr(fixture->device, 0xe90,
            with_callback ? (void *)set_rotation : NULL);
  tpd_cdev = (long long)(uintptr_t)fixture->device;
  callback_calls = 0;
  stale_callback_calls = 0;
  callback_argument = 0;
  callback_value = -1;
  printk_calls = 0;
}

static void test_valid_write_uses_correct_callback(void)
{
  const char *name = "valid_write_uses_correct_callback";
  struct fixture fixture;
  struct file file = {0};
  loff_t offset = 0;
  const char input[] = "0x10\n";
  ssize_t result;

  fixture_init(&fixture, 1);
  result = set_display_rotation(&file, input, sizeof(input) - 1, &offset);
  expect(result == 5, name, "successful write did not return count");
  expect(callback_calls == 1, name, "callback was not called");
  expect(stale_callback_calls == 0, name, "stale callback slot was used");
  expect(callback_argument == (uintptr_t)fixture.device, name,
         "callback argument differs");
  expect(callback_value == 16, name, "base-zero value was not parsed");
  expect(*(uint32_t *)(fixture.device + 0x10) == 16, name,
         "device rotation field was not updated");
  expect(printk_calls == 1, name, "valid write was not logged");
}

static void test_count_is_capped_at_nine_bytes(void)
{
  const char *name = "count_is_capped_at_nine_bytes";
  struct fixture fixture;
  struct file file = {0};
  loff_t offset = 0;
  const char input[] = "1234567890";
  ssize_t result;

  fixture_init(&fixture, 1);
  result = set_display_rotation(&file, input, sizeof(input) - 1, &offset);
  expect(result == 9, name, "write count was not capped at nine");
  expect(callback_calls == 1, name, "capped valid input was not called");
  expect(callback_value == 123456789, name, "capped value differs");
}

static void test_invalid_write_returns_einval_without_side_effects(void)
{
  const char *name = "invalid_write_returns_einval_without_side_effects";
  struct fixture fixture;
  struct file file = {0};
  loff_t offset = 0;
  const char input[] = "invalid";

  fixture_init(&fixture, 1);
  expect(set_display_rotation(&file, input, sizeof(input) - 1, &offset) == -EINVAL,
         name, "invalid input did not return -EINVAL");
  expect(callback_calls == 0 && stale_callback_calls == 0, name,
         "callback ran after parse failure");
  expect(printk_calls == 0, name, "parse failure was logged");
}

static void test_valid_write_without_callback(void)
{
  const char *name = "valid_write_without_callback";
  struct fixture fixture;
  struct file file = {0};
  loff_t offset = 0;
  const char input[] = "7";

  fixture_init(&fixture, 0);
  expect(set_display_rotation(&file, input, sizeof(input) - 1, &offset) == 1,
         name, "valid write without callback failed");
  expect(callback_calls == 0 && stale_callback_calls == 0, name,
         "callback was invoked unexpectedly");
  expect(*(uint32_t *)(fixture.device + 0x10) == 7, name,
         "device rotation field was not updated");
  expect(printk_calls == 1, name, "valid write was not logged");
}

int main(void)
{
  test_valid_write_uses_correct_callback();
  test_count_is_capped_at_nine_bytes();
  test_invalid_write_returns_einval_without_side_effects();
  test_valid_write_without_callback();
  puts("PASS set_display_rotation host tests (4 cases)");
  return 0;
}
