#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

#define __user
#define __fastcall
typedef long long __int64;
typedef int16_t __int16;
typedef uint64_t _QWORD;

struct file { int unused; };
struct ztp_device;
static uint8_t fake_sp[1824];
#define SP_EL0 0
#define _ReadStatusReg(reg) ((uintptr_t)fake_sp)
long long tpd_cdev;
char unk_3A127[256] = "zte_tpd_log";

static unsigned int callback_calls;
static unsigned int stale_callback_calls;
static uintptr_t callback_argument;
static unsigned int printk_calls;

static int refresh_rotation(struct ztp_device *cdev)
{
  callback_calls++;
  callback_argument = (uintptr_t)cdev;
  return 0;
}

static int stale_refresh(struct ztp_device *cdev)
{
  (void)cdev;
  stale_callback_calls++;
  return 0;
}

int printk(const char *format, ...)
{
  (void)format;
  printk_calls++;
  return 0;
}

int snprintf(char *buffer, size_t size, const char *format, ...)
{
  (void)format;
  if (size > 0) {
    buffer[0] = '7';
    if (size > 1) buffer[1] = '\n';
    if (size > 2) buffer[2] = '\0';
  }
  return 2;
}

ssize_t simple_read_from_buffer(__int64 to, size_t count, __int64 *offset,
                                const void *from, size_t available)
{
  size_t copied = available < count ? available : count;
  memcpy((void *)(uintptr_t)to, from, copied);
  *offset += copied;
  return (ssize_t)copied;
}

#include "../../../reconstructed/zte_tpd/get_rotation_limit_level.c"

struct fixture { uint8_t device[0xe88 + sizeof(void *)]; };

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
  store_ptr(fixture->device, 0xe80, (void *)stale_refresh);
  store_ptr(fixture->device, 0xe88, with_callback ? (void *)refresh_rotation : NULL);
  *(unsigned int *)(fixture->device + 0xc) = 7;
  tpd_cdev = (long long)(uintptr_t)fixture->device;
  callback_calls = 0;
  stale_callback_calls = 0;
  callback_argument = 0;
  printk_calls = 0;
}

static void test_reads_value_and_uses_correct_callback(void)
{
  const char *name = "reads_value_and_uses_correct_callback";
  struct fixture fixture;
  struct file file = {0};
  loff_t offset = 0;
  char output[8] = {0};
  ssize_t result;

  fixture_init(&fixture, 1);
  result = get_rotation_limit_level(&file, output, sizeof(output), &offset);
  expect(result == 2, name, "read length differs");
  expect(memcmp(output, "7\n", 2) == 0, name, "formatted value differs");
  expect(callback_calls == 1, name, "callback was not called");
  expect(stale_callback_calls == 0, name, "stale callback slot was used");
  expect(callback_argument == (uintptr_t)fixture.device, name, "callback argument differs");
  expect(printk_calls == 1, name, "log contract differs");
}

static void test_nonzero_offset_does_not_touch_callback(void)
{
  const char *name = "nonzero_offset_does_not_touch_callback";
  struct fixture fixture;
  struct file file = {0};
  loff_t offset = 1;
  char output[8] = {0};

  fixture_init(&fixture, 1);
  expect(get_rotation_limit_level(&file, output, sizeof(output), &offset) == 0,
         name, "nonzero offset result differs");
  expect(callback_calls == 0 && stale_callback_calls == 0, name,
         "callback ran for nonzero offset");
  expect(printk_calls == 0, name, "nonzero offset was logged");
}

int main(void)
{
  test_reads_value_and_uses_correct_callback();
  test_nonzero_offset_does_not_touch_callback();
  puts("PASS get_rotation_limit_level host tests (2 cases)");
  return 0;
}
