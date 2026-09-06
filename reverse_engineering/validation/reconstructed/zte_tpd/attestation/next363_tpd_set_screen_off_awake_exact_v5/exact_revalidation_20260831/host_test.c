#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef long long __int64;
typedef unsigned long long _QWORD;
typedef unsigned int _DWORD;

struct ztp_device;
extern int tpd_set_screen_off_awake(struct ztp_device *cdev, int value);

uint32_t is_screen_off_awake_mode;
const char unk_3B5E0[] = "log";

static unsigned char client[0x1000] __attribute__((aligned(8)));
static unsigned char context[0x800] __attribute__((aligned(8)));
static int printk_calls;
static const char *last_format;
static const char *last_name;
static int checks;
static int failures;

int printk(const char *format, const char *name)
{
  ++printk_calls;
  last_format = format;
  last_name = name;
  return 0;
}

#include "../../../reconstructed/zte_tpd/tpd_set_screen_off_awake.c"

static void expect_int(const char *name, long long actual, long long expected)
{
  ++checks;
  if (actual != expected) {
    ++failures;
    printf("FAIL %s actual=%lld expected=%lld\n", name, actual, expected);
  }
}

static void reset_fixture(unsigned int active)
{
  memset(client, 0, sizeof(client));
  memset(context, 0, sizeof(context));
  *(uintptr_t *)(client + 0xdb8) = (uintptr_t)context;
  *(unsigned int *)(context + 0x57c) = active;
  *(unsigned int *)(context + 0x5f0) = 0x11111111;
  *(unsigned int *)(context + 0x5f4) = 0x22222222;
  is_screen_off_awake_mode = 0x33333333;
  printk_calls = 0;
  last_format = NULL;
  last_name = NULL;
}

int main(void)
{
  int result;

  reset_fixture(1);
  result = tpd_set_screen_off_awake((struct ztp_device *)client, 0x12345678);
  expect_int("active return", result, 0);
  expect_int("active requested field", *(unsigned int *)(context + 0x5f4),
             0x12345678);
  expect_int("active applied field", *(unsigned int *)(context + 0x5f0),
             0x12345678);
  expect_int("active global", is_screen_off_awake_mode, 0x12345678);
  expect_int("active no printk", printk_calls, 0);

  reset_fixture(0);
  result = tpd_set_screen_off_awake((struct ztp_device *)client, 0x87654321);
  expect_int("inactive return", result, 0);
  expect_int("inactive requested field", *(unsigned int *)(context + 0x5f4),
             0x87654321);
  expect_int("inactive applied unchanged", *(unsigned int *)(context + 0x5f0),
             0x11111111);
  expect_int("inactive global unchanged", is_screen_off_awake_mode, 0x33333333);
  expect_int("inactive printk", printk_calls, 1);
  expect_int("inactive format", last_format == unk_3B5E0, 1);
  expect_int("inactive log name", strcmp(last_name, "tpd_set_screen_off_awake"), 0);

  if (failures != 0)
    return 1;
  printf("PASS tpd_set_screen_off_awake contract test (%d checks)\n", checks);
  return 0;
}
