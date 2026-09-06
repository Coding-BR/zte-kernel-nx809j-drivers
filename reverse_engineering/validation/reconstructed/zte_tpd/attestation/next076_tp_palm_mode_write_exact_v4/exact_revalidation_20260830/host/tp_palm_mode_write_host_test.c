#include <stdint.h>
#include <stdio.h>
#include <stdarg.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>
#include <sys/types.h>

#define __user
#define __int64 long long
#define ZTE_TPD_HOST_TEST 1

struct file { int unused; };

static long long tpd_cdev;
static unsigned int callback_calls;
static unsigned int printk_calls;
static unsigned int last_value;
static const char *last_name;
static const char *last_format;

int kstrtouint_from_user(const char *buffer, size_t count, unsigned int base,
                         unsigned int *value)
{
  char local[32];
  char *end;
  unsigned long parsed;

  if (base != 10 || count == 0 || count >= sizeof(local))
    return -1;
  memcpy(local, buffer, count);
  local[count] = '\0';
  parsed = strtoul(local, &end, base);
  if (end == local || *end != '\0' || parsed > UINT32_MAX)
    return -1;
  *value = (unsigned int)parsed;
  return 0;
}

int printk(const char *format, ...)
{
  va_list args;

  va_start(args, format);
  last_format = format;
  last_name = va_arg(args, const char *);
  last_value = va_arg(args, unsigned int);
  va_end(args);
  ++printk_calls;
  return 0;
}

static void host_callback(void *device, bool value)
{
  (void)device;
  (void)value;
  ++callback_calls;
}

#include "../../../reconstructed/zte_tpd/tp_palm_mode_write.c"

struct fixture {
  uint8_t device[0xfb0 + sizeof(void *)];
};

static void fail(const char *name, const char *message)
{
  fprintf(stderr, "FAIL %s: %s\n", name, message);
  exit(1);
}

static void expect(int condition, const char *name, const char *message)
{
  if (!condition)
    fail(name, message);
}

static void store_ptr(uint8_t *base, size_t offset, void *value)
{
  memcpy(base + offset, &value, sizeof(value));
}

static void fixture_init(struct fixture *fixture, int with_callback)
{
  memset(fixture, 0, sizeof(*fixture));
  store_ptr(fixture->device, 0xfb0,
            with_callback ? (void *)host_callback : NULL);
  tpd_cdev = (long long)(uintptr_t)fixture->device;
  callback_calls = 0;
  printk_calls = 0;
  last_value = 0;
  last_name = NULL;
  last_format = NULL;
}

static void test_zero_normalizes_and_calls(void)
{
  const char *name = "zero_normalizes_and_calls";
  struct fixture fixture;
  const char input[] = "0";
  ssize_t result;

  fixture_init(&fixture, 1);
  result = tp_palm_mode_write(NULL, input, sizeof(input) - 1, NULL);
  expect(result == 1, name, "write length differs");
  expect(callback_calls == 1, name, "callback was not called");
  expect(printk_calls == 1 && last_value == 0, name,
         "log contract differs");
  expect(strcmp(last_name, "tp_palm_mode_write") == 0, name,
         "log name differs");
}

static void test_nonzero_normalizes_and_calls(void)
{
  const char *name = "nonzero_normalizes_and_calls";
  struct fixture fixture;
  const char input[] = "1234";
  ssize_t result;

  fixture_init(&fixture, 1);
  result = tp_palm_mode_write(NULL, input, sizeof(input) - 1, NULL);
  expect(result == 4, name, "write length differs");
  expect(callback_calls == 1, name, "callback was not called");
  expect(last_value == 1, name, "nonzero input was not normalized");
}

static void test_invalid_input_is_rejected(void)
{
  const char *name = "invalid_input_is_rejected";
  struct fixture fixture;
  const char input[] = "bad";
  ssize_t result;

  fixture_init(&fixture, 1);
  result = tp_palm_mode_write(NULL, input, sizeof(input) - 1, NULL);
  expect(result == -22, name, "invalid input was not rejected");
  expect(callback_calls == 0 && printk_calls == 0, name,
         "invalid path had side effects");
}

int main(void)
{
  test_zero_normalizes_and_calls();
  test_nonzero_normalizes_and_calls();
  test_invalid_input_is_rejected();
  puts("PASS tp_palm_mode_write: 3 cases");
  return 0;
}
