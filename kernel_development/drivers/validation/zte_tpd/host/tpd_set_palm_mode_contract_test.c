#include <stdint.h>
#include <stdio.h>
#include <stdarg.h>
#include <string.h>

typedef long long __int64;
typedef unsigned long long _QWORD;
typedef unsigned int _DWORD;

struct ztp_device;
extern int tpd_set_palm_mode(struct ztp_device *cdev, int value);

const char unk_37B5F[] = "log";

static unsigned char client[0x1000] __attribute__((aligned(8)));
static unsigned char context[0x800] __attribute__((aligned(8)));
static int printk_calls;
static const char *last_format;
static const char *last_name;
static int last_value;
static int checks;
static int failures;

int printk(const char *format, ...)
{
  va_list args;

  va_start(args, format);
  last_format = format;
  last_name = va_arg(args, const char *);
  last_value = va_arg(args, int);
  va_end(args);
  ++printk_calls;
  return 0;
}

#include "../../../reconstructed/zte_tpd/tpd_set_palm_mode.c"

static void expect_int(const char *name, long long actual, long long expected)
{
  ++checks;
  if (actual != expected) {
    ++failures;
    printf("FAIL %s actual=%lld expected=%lld\n", name, actual, expected);
  }
}

static void reset_fixture(void)
{
  memset(client, 0, sizeof(client));
  memset(context, 0, sizeof(context));
  *(uintptr_t *)(client + 0xdb8) = (uintptr_t)context;
  printk_calls = 0;
  last_format = NULL;
  last_name = NULL;
  last_value = 0;
}

int main(void)
{
  int result;

  reset_fixture();
  result = tpd_set_palm_mode((struct ztp_device *)client, 0x12345678);
  expect_int("return", result, 0);
  expect_int("stored value", *(unsigned int *)(context + 0x5e4), 0x12345678);
  expect_int("printk calls", printk_calls, 1);
  expect_int("printk format", last_format == unk_37B5F, 1);
  expect_int("printk name", strcmp(last_name, "tpd_set_palm_mode"), 0);
  expect_int("printk value", last_value, 0x12345678);
  expect_int("unrelated field", *(unsigned int *)(context + 0x5e0), 0);

  if (failures != 0)
    return 1;
  printf("PASS tpd_set_palm_mode contract test (%d checks)\n", checks);
  return 0;
}
