#include <stdarg.h>
#include <stdio.h>
#include <string.h>

struct ztp_device;
extern int tpd_set_game_partition(struct ztp_device *cdev, char *buffer);

const char unk_3A85B[] = "log";
static int printk_calls;
static const char *printk_arg1;
static const char *printk_arg2;
static int checks;
static int failures;

int printk(const char *format, ...)
{
  va_list args;
  (void)format;
  va_start(args, format);
  printk_arg1 = va_arg(args, const char *);
  printk_arg2 = va_arg(args, const char *);
  va_end(args);
  ++printk_calls;
  return 0;
}

#include "../../../reconstructed/zte_tpd/tpd_set_game_partition.c"

static void expect_int(const char *name, long long actual, long long expected)
{
  ++checks;
  if (actual != expected) {
    ++failures;
    printf("FAIL %s actual=%lld expected=%lld\n", name, actual, expected);
  }
}

static void expect_string(const char *name, const char *actual, const char *expected)
{
  ++checks;
  if (actual == NULL || strcmp(actual, expected) != 0) {
    ++failures;
    printf("FAIL %s\n", name);
  }
}

int main(void)
{
  int result = tpd_set_game_partition(NULL, NULL);
  expect_int("return", result, 0);
  expect_int("printk calls", printk_calls, 1);
  expect_string("first printk argument", printk_arg1, "tpd_set_game_partition");
  expect_string("second printk argument", printk_arg2, "tpd_set_game_partition");
  if (failures != 0)
    return 1;
  printf("PASS tpd_set_game_partition contract test (%d checks)\n", checks);
  return 0;
}
