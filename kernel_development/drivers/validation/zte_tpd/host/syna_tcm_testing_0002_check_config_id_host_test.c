#include <assert.h>
#include <stdarg.h>
#include <stdio.h>
#include <string.h>

static unsigned int printk_calls;
static const char *last_format;
static const char *last_function;
static const unsigned char *last_firmware;
static const unsigned char *last_limit;

static int test_printk(const char *format, ...)
{
  va_list args;

  va_start(args, format);
  printk_calls++;
  last_format = format;
  last_function = va_arg(args, const char *);
  last_firmware = va_arg(args, const unsigned char *);
  last_limit = va_arg(args, const unsigned char *);
  va_end(args);
  return 0;
}

#define printk test_printk
#include "../../../reconstructed/zte_tpd/syna_tcm_testing_0002_check_config_id.c"
#undef printk

static void reset_printk(void)
{
  printk_calls = 0;
  last_format = NULL;
  last_function = NULL;
  last_firmware = NULL;
  last_limit = NULL;
}

static void assert_equal(const unsigned char *firmware,
                         const unsigned char *limit,
                         int last_index)
{
  unsigned char firmware_copy[32];
  unsigned char limit_copy[32];

  memcpy(firmware_copy, firmware, sizeof(firmware_copy));
  memcpy(limit_copy, limit, sizeof(limit_copy));
  reset_printk();
  assert(syna_tcm_testing_0002_check_config_id(firmware, limit, last_index) == 1);
  assert(printk_calls == 0);
  assert(memcmp(firmware, firmware_copy, sizeof(firmware_copy)) == 0);
  assert(memcmp(limit, limit_copy, sizeof(limit_copy)) == 0);
}

static void assert_mismatch(const unsigned char *firmware,
                            const unsigned char *limit,
                            int last_index,
                            unsigned int expected_calls)
{
  reset_printk();
  assert(syna_tcm_testing_0002_check_config_id(firmware, limit, last_index) == 0);
  assert(printk_calls == expected_calls);
  assert(last_format != NULL);
  assert(last_function != NULL);
  assert(strcmp(last_function, "syna_tcm_testing_0002_check_config_id") == 0);
  assert(last_firmware == firmware);
  assert(last_limit == limit);
}

int main(void)
{
  static const unsigned char equal_bytes[32] = "CONFIG-ID-0123456789";
  static const unsigned char different_bytes[32] = "CONFIG-ID-012345678X";
  static const unsigned char mismatch_first[32] = "xONFIG-ID-0123456789";
  static const unsigned char short_firmware[32] = "A";
  static const unsigned char short_limit[32] = "A";

  reset_printk();
  assert(syna_tcm_testing_0002_check_config_id(NULL, equal_bytes, 3) == 0);
  assert(syna_tcm_testing_0002_check_config_id(equal_bytes, NULL, 3) == 0);
  assert(printk_calls == 0);

  assert_equal(equal_bytes, different_bytes, -1);
  assert_equal(short_firmware, short_limit, 0);
  assert_equal(equal_bytes, equal_bytes, 19);
  assert_mismatch(equal_bytes, different_bytes, 19, 1);
  assert_mismatch(mismatch_first, equal_bytes, 19, 1);

  puts("syna_tcm_testing_0002_check_config_id host oracle: PASS");
  return 0;
}
