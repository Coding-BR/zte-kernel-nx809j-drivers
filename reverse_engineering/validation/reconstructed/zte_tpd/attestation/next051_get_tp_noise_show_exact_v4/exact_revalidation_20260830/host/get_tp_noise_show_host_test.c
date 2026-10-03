#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

#define __user
#define __fastcall
#define barrier() __asm__ __volatile__("" ::: "memory")
typedef long long __int64;
typedef uint64_t _QWORD;

struct file { int unused; };
struct ztp_device;

long long tpd_cdev;
static unsigned int callback_calls;
static unsigned int printk_calls;
static unsigned int lock_calls;
static unsigned int unlock_calls;
static uintptr_t callback_argument;
static uint64_t callback_value;
static __int64 expected_lock;

static int refresh_tp_noise(struct ztp_device *cdev)
{
  callback_calls++;
  callback_argument = (uintptr_t)cdev;
  return 0;
}

int printk(const char *format, ...)
{
  (void)format;
  printk_calls++;
  return 0;
}

void mutex_lock(__int64 lock)
{
  if (lock != expected_lock) {
    fprintf(stderr, "FAIL mutex_lock: unexpected lock address\n");
    exit(1);
  }
  lock_calls++;
}

void mutex_unlock(__int64 lock)
{
  if (lock != expected_lock) {
    fprintf(stderr, "FAIL mutex_unlock: unexpected lock address\n");
    exit(1);
  }
  unlock_calls++;
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
  host_simple_read_from_buffer((void *)(uintptr_t)(to), (count), \
                               (loff_t *)(void *)(ppos), (from), (available))

#include "../../../reconstructed/zte_tpd/get_tp_noise_show.c"

struct fixture {
  uint8_t device[0xee8 + sizeof(void *)];
  uint64_t noise_size;
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

static void fixture_init(struct fixture *fixture, int with_noise)
{
  memset(fixture, 0, sizeof(*fixture));
  store_ptr(fixture->device, 0xee8, (void *)refresh_tp_noise);
  fixture->noise_size = 1234;
  store_ptr(fixture->device, 0xc58,
            with_noise ? (void *)&fixture->noise_size : NULL);
  tpd_cdev = (long long)(uintptr_t)fixture->device;
  expected_lock = tpd_cdev + 0xc60;
  callback_calls = 0;
  printk_calls = 0;
  lock_calls = 0;
  unlock_calls = 0;
  callback_argument = 0;
  callback_value = fixture->noise_size;
}

static void test_valid_noise_size(void)
{
  const char *name = "valid_noise_size";
  struct fixture fixture;
  struct file file = {0};
  loff_t offset = 0;
  char output[16] = {0};

  fixture_init(&fixture, 1);
  expect(get_tp_noise_show(&file, output, sizeof(output), &offset) == 5,
         name, "formatted size length differs");
  expect(strcmp(output, "1234\n") == 0, name, "formatted size differs");
  expect(offset == 5, name, "read offset was not advanced");
  expect(callback_calls == 1, name, "callback was not called");
  expect(callback_argument == (uintptr_t)fixture.device,
         name, "callback argument differs");
  expect(lock_calls == 1 && unlock_calls == 1, name,
         "mutex was not balanced");
  expect(printk_calls == 1, name, "valid size was not logged");
}

static void test_null_noise_pointer(void)
{
  const char *name = "null_noise_pointer";
  struct fixture fixture;
  struct file file = {0};
  loff_t offset = 0;
  char output[8] = {0};

  fixture_init(&fixture, 0);
  expect(get_tp_noise_show(&file, output, sizeof(output), &offset) == 0,
         name, "null pointer did not return empty output");
  expect(callback_calls == 1, name, "callback was not called");
  expect(lock_calls == 1 && unlock_calls == 1, name,
         "mutex was not balanced");
  expect(printk_calls == 0, name, "null pointer was logged");
}

static void test_nonzero_offset_has_no_side_effects(void)
{
  const char *name = "nonzero_offset_has_no_side_effects";
  struct fixture fixture;
  struct file file = {0};
  loff_t offset = 1;
  char output[16] = {0};

  fixture_init(&fixture, 1);
  expect(get_tp_noise_show(&file, output, sizeof(output), &offset) == 0,
         name, "nonzero offset did not return zero");
  expect(callback_calls == 0 && lock_calls == 0 && unlock_calls == 0,
         name, "nonzero offset caused side effects");
  expect(printk_calls == 0, name, "nonzero offset was logged");
}

int main(void)
{
  test_valid_noise_size();
  test_null_noise_pointer();
  test_nonzero_offset_has_no_side_effects();
  puts("PASS get_tp_noise_show host tests (3 cases)");
  return 0;
}
