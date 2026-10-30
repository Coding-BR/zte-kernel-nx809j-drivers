#include <errno.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

#define __user
#define __fastcall
typedef long long __int64;
typedef uint64_t _QWORD;

struct file { int unused; };
struct ztp_device;
#define SP_EL0 0

long long tpd_cdev;
char unk_374F7[256] = "zte_tpd_log";
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

int kstrtouint_from_user(__int64 buffer, __int64 count, unsigned int base,
                         unsigned int *value)
{
  char local[64];
  char *end;
  unsigned long parsed;
  size_t length = (size_t)count;

  if (base != 10 || length == 0 || length >= sizeof(local))
    return -EINVAL;
  memcpy(local, (const void *)(uintptr_t)buffer, length);
  local[length] = '\0';
  parsed = strtoul(local, &end, base);
  if (end == local || (*end != '\0' && *end != '\n') || parsed > UINT32_MAX)
    return -EINVAL;
  *value = (unsigned int)parsed;
  return 0;
}

#include "../../../reconstructed/zte_tpd/set_rotation_limit_level.c"

struct fixture { uint8_t device[0xe80 + sizeof(void *)]; };

static void expect(int condition, const char *name, const char *message)
{
  if (!condition) {
    fprintf(stderr, "FAIL %s: %s\n", name, message);
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
  store_ptr(fixture->device, 0xe78, (void *)stale_rotation);
  store_ptr(fixture->device, 0xe80, with_callback ? (void *)set_rotation : NULL);
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
  const char input[] = "7\n";
  ssize_t result;

  fixture_init(&fixture, 1);
  result = set_rotation_limit_level(&file, input, sizeof(input) - 1, &offset);
  expect(result == 2, name, "successful write did not return count");
  expect(callback_calls == 1, name, "callback was not called");
  expect(stale_callback_calls == 0, name, "stale callback slot was used");
  expect(callback_argument == (uintptr_t)fixture.device, name, "callback argument differs");
  expect(callback_value == 7, name, "callback value differs");
  expect(printk_calls == 1, name, "log contract differs");
}

static void test_invalid_write_returns_einval_without_side_effects(void)
{
  const char *name = "invalid_write_returns_einval_without_side_effects";
  struct fixture fixture;
  struct file file = {0};
  loff_t offset = 0;
  const char input[] = "invalid";

  fixture_init(&fixture, 1);
  expect(set_rotation_limit_level(&file, input, sizeof(input) - 1, &offset) == -EINVAL,
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
  const char input[] = "0";

  fixture_init(&fixture, 0);
  expect(set_rotation_limit_level(&file, input, sizeof(input) - 1, &offset) == 1,
         name, "zero write did not return count");
  expect(callback_calls == 0 && stale_callback_calls == 0, name,
         "missing callback was invoked");
  expect(printk_calls == 1, name, "valid zero was not logged");
}

int main(void)
{
  test_valid_write_uses_correct_callback();
  test_invalid_write_returns_einval_without_side_effects();
  test_valid_write_without_callback();
  puts("PASS set_rotation_limit_level host tests (3 cases)");
  return 0;
}
