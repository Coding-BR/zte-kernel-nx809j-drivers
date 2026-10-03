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

long long tpd_cdev;
char unk_374F7[256] = "zte_tpd_log";
static unsigned int callback_calls;
static unsigned int stale_callback_calls;
static uintptr_t callback_argument;
static int callback_value;
static unsigned int printk_calls;

static int set_single_aod(struct ztp_device *cdev, int value)
{
  callback_calls++;
  callback_argument = (uintptr_t)cdev;
  callback_value = value;
  return 0;
}

static int stale_single_aod(struct ztp_device *cdev, int value)
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
  if (end == local || (*end != '\0' && *end != '\n') ||
      parsed > UINT32_MAX)
    return -EINVAL;
  *value = (unsigned int)parsed;
  return 0;
}

#include "../../../reconstructed/zte_tpd/tp_single_aod_write.c"

struct fixture {
  uint8_t device[0xed0 + sizeof(void *)];
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
  store_ptr(fixture->device, 0xec8, (void *)stale_single_aod);
  store_ptr(fixture->device, 0xed0,
            with_callback ? (void *)set_single_aod : NULL);
  tpd_cdev = (long long)(uintptr_t)fixture->device;
  callback_calls = 0;
  stale_callback_calls = 0;
  callback_argument = 0;
  callback_value = -1;
  printk_calls = 0;
}

static void test_nonzero_input_maps_to_five(void)
{
  const char *name = "nonzero_input_maps_to_five";
  struct fixture fixture;
  struct file file = {0};
  loff_t offset = 0;
  const char input[] = "1";

  fixture_init(&fixture, 1);
  expect(tp_single_aod_write(&file, input, sizeof(input) - 1, &offset) == 1,
         name, "successful write did not return count");
  expect(callback_calls == 1, name, "callback was not called");
  expect(stale_callback_calls == 0, name, "stale callback slot was used");
  expect(callback_argument == (uintptr_t)fixture.device, name,
         "callback argument differs");
  expect(callback_value == 5, name, "nonzero input was not mapped to five");
  expect(printk_calls == 1, name, "valid write was not logged");
}

static void test_zero_input_maps_to_zero_without_callback(void)
{
  const char *name = "zero_input_maps_to_zero_without_callback";
  struct fixture fixture;
  struct file file = {0};
  loff_t offset = 0;
  const char input[] = "0\n";

  fixture_init(&fixture, 0);
  expect(tp_single_aod_write(&file, input, sizeof(input) - 1, &offset) == 2,
         name, "zero write did not return count");
  expect(callback_calls == 0 && stale_callback_calls == 0, name,
         "callback was invoked unexpectedly");
  expect(printk_calls == 1, name, "zero write was not logged");
}

static void test_invalid_input_returns_einval_without_side_effects(void)
{
  const char *name = "invalid_input_returns_einval_without_side_effects";
  struct fixture fixture;
  struct file file = {0};
  loff_t offset = 0;
  const char input[] = "invalid";

  fixture_init(&fixture, 1);
  expect(tp_single_aod_write(&file, input, sizeof(input) - 1, &offset) == -EINVAL,
         name, "invalid input did not return -EINVAL");
  expect(callback_calls == 0 && stale_callback_calls == 0, name,
         "callback ran after parse failure");
  expect(printk_calls == 0, name, "parse failure was logged");
}

int main(void)
{
  test_nonzero_input_maps_to_five();
  test_zero_input_maps_to_zero_without_callback();
  test_invalid_input_returns_einval_without_side_effects();
  puts("PASS tp_single_aod_write host tests (3 cases)");
  return 0;
}
