#include <assert.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdint.h>
#include <string.h>

static unsigned int printk_calls;
static const char *last_format;
static const char *last_function;
static const char *last_firmware;
static const char *last_limit;

static int test_printk(const char *format, ...)
{
  va_list args;

  va_start(args, format);
  printk_calls++;
  last_format = format;
  last_function = va_arg(args, const char *);
  last_firmware = va_arg(args, const char *);
  last_limit = va_arg(args, const char *);
  va_end(args);
  return 0;
}

#define __int8 char
#define __int64 long long
#define __fastcall
#define printk test_printk
#define unk_3CC6C "\0013[error] %s: Device ID mismatched, FW: %s (limit: %s)\n"
#include "../../../reconstructed/zte_tpd/syna_tcm_testing_0001_check_device_id.c"
#undef unk_3CC6C
#undef printk
#undef __fastcall
#undef __int64
#undef __int8

#define A1(ptr) ((long long)(uintptr_t)(ptr))
#define S2(ptr) ((char *)(uintptr_t)(ptr))

static void reset_printk(void)
{
  printk_calls = 0;
  last_format = NULL;
  last_function = NULL;
  last_firmware = NULL;
  last_limit = NULL;
}

static void assert_no_error(void)
{
  assert(printk_calls == 0);
  assert(last_format == NULL);
  assert(last_function == NULL);
  assert(last_firmware == NULL);
  assert(last_limit == NULL);
}

static void assert_error(const char *firmware, const char *limit)
{
  assert(printk_calls == 1);
  assert(last_format != NULL);
  assert(last_function != NULL);
  assert(strcmp(last_function, "syna_tcm_testing_0001_check_device_id") == 0);
  assert(last_firmware == firmware);
  assert(last_limit == limit);
}

int main(void)
{
  static const char device[32] = "0123456789ABCDEF";
  static const char shifted[32] = "xxxxxxxxxxx0123456789ABCDEF";
  static const char mismatch[32] = "0123456789ABCDEX";
  static const char short_id[32] = "ABD";
  static const char empty[1] = "";
  char device_copy[sizeof(device)];

  memcpy(device_copy, device, sizeof(device_copy));

  reset_printk();
  assert(syna_tcm_testing_0001_check_device_id(A1(NULL), S2("0"), 1) == 0);
  assert_no_error();
  assert(syna_tcm_testing_0001_check_device_id(A1(device), S2(NULL), 1) == 0);
  assert_no_error();

  reset_printk();
  assert(syna_tcm_testing_0001_check_device_id(A1(device), S2("0"), 1) == 1);
  assert_no_error();
  reset_printk();
  assert(syna_tcm_testing_0001_check_device_id(A1(device), S2("F"), 1) == 1);
  assert_no_error();
  reset_printk();
  assert(syna_tcm_testing_0001_check_device_id(A1(shifted), S2("0123"), 4) == 1);
  assert_no_error();

  reset_printk();
  assert(syna_tcm_testing_0001_check_device_id(A1(device), S2("0"), 0) == 1);
  assert_no_error();
  reset_printk();
  assert(syna_tcm_testing_0001_check_device_id(A1(device), S2(empty), 0) == 1);
  assert_no_error();

  reset_printk();
  assert(syna_tcm_testing_0001_check_device_id(A1(device), S2("F"), 16) == 0);
  assert_error(device, "F");
  reset_printk();
  assert(syna_tcm_testing_0001_check_device_id(A1(device), S2("EF"), 2) == 1);
  assert_no_error();
  reset_printk();
  assert(syna_tcm_testing_0001_check_device_id(A1(device), S2("X"), 1) == 0);
  assert_error(device, "X");

  reset_printk();
  assert(syna_tcm_testing_0001_check_device_id(A1(device), S2("0"), 17) == 0);
  assert_error(device, "0");
  reset_printk();
  assert(syna_tcm_testing_0001_check_device_id(A1(device), S2("0"), (size_t)-1) == 0);
  assert_error(device, "0");

  reset_printk();
  assert(syna_tcm_testing_0001_check_device_id(A1(device), S2(short_id), 3) == 0);
  assert_error(device, short_id);
  reset_printk();
  assert(syna_tcm_testing_0001_check_device_id(A1(device), S2(mismatch), 16) == 0);
  assert_error(device, mismatch);

  assert(memcmp(device, device_copy, sizeof(device_copy)) == 0);
  puts("syna_tcm_testing_0001_check_device_id host oracle: PASS");
  return 0;
}

#undef S2
#undef A1
