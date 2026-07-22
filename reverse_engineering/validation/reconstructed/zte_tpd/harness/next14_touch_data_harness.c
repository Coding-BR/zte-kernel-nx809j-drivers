#include <stdbool.h>
#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define ARRAY_SIZE(array) (sizeof(array) / sizeof((array)[0]))

static unsigned int printk_calls;
static char last_printk[128];

static int printk(const char *format, ...)
{
  va_list arguments;
  int result;

  printk_calls++;
  va_start(arguments, format);
  result = vsnprintf(last_printk, sizeof(last_printk), format, arguments);
  va_end(arguments);
  return result;
}

#include "../../../curated/zte_tpd/syna_tcm_get_touch_data.c"

typedef int (*touch_data_fn)(const unsigned char *report_data,
                             unsigned int report_size,
                             unsigned int bit_offset,
                             unsigned int bit_count,
                             unsigned int *value);

_Static_assert(__builtin_types_compatible_p(
                 typeof(&syna_tcm_get_touch_data), touch_data_fn),
               "syna_tcm_get_touch_data ABI");

#define REQUIRE(condition) do { \
  if (!(condition)) { \
    fprintf(stderr, "%s:%d: requirement failed: %s\n", \
            __func__, __LINE__, #condition); \
    return false; \
  } \
} while (0)

static void reset_log(void)
{
  printk_calls = 0;
  memset(last_printk, 0, sizeof(last_printk));
}

static unsigned int reference_extract(const unsigned char *data,
                                      unsigned int bit_offset,
                                      unsigned int bit_count)
{
  unsigned int result = 0;
  unsigned int index;

  for (index = 0; index < bit_count; index++) {
    unsigned int source_bit = bit_offset + index;

    result |= ((data[source_bit >> 3] >> (source_bit & 7)) & 1U) << index;
  }
  return result;
}

static bool test_signature_contract(void)
{
  return true;
}

static bool test_zero_bit_count(void)
{
  const unsigned char data[] = { 0xa5 };
  unsigned int value = 0xdeadbeefU;

  reset_log();
  REQUIRE(syna_tcm_get_touch_data(data, ARRAY_SIZE(data), 0, 0, &value) ==
          -241);
  REQUIRE(value == 0xdeadbeefU);
  REQUIRE(printk_calls == 1);
  REQUIRE(strcmp(last_printk,
                 "\0013[error] syna_tcm_get_touch_data: Invalid number of bits 0\n") == 0);
  return true;
}

static bool test_too_many_bits(void)
{
  const unsigned char data[] = { 0xa5 };
  unsigned int value = 0x11223344U;

  reset_log();
  REQUIRE(syna_tcm_get_touch_data(data, ARRAY_SIZE(data), 0, 33, &value) ==
          -241);
  REQUIRE(value == 0x11223344U);
  REQUIRE(printk_calls == 1);
  REQUIRE(strcmp(last_printk,
                 "\0013[error] syna_tcm_get_touch_data: Invalid number of bits 33\n") == 0);
  return true;
}

static bool test_null_report(void)
{
  unsigned int value = 0xa5a5a5a5U;

  reset_log();
  REQUIRE(syna_tcm_get_touch_data(NULL, 1, 0, 1, &value) == -241);
  REQUIRE(value == 0xa5a5a5a5U);
  REQUIRE(printk_calls == 1);
  REQUIRE(strcmp(last_printk,
                 "\0013[error] syna_tcm_get_touch_data: Invalid report data\n") == 0);
  return true;
}

static bool test_out_of_bounds_zeroes_value(void)
{
  const unsigned char data[] = { 0xff };
  unsigned int value = 0x55aa55aaU;

  reset_log();
  REQUIRE(syna_tcm_get_touch_data(data, ARRAY_SIZE(data), 7, 2, &value) == 0);
  REQUIRE(value == 0);
  REQUIRE(printk_calls == 0);
  return true;
}

static bool test_single_bit(void)
{
  const unsigned char data[] = { 0x08 };
  unsigned int value = 0;

  reset_log();
  REQUIRE(syna_tcm_get_touch_data(data, ARRAY_SIZE(data), 3, 1, &value) == 0);
  REQUIRE(value == 1);
  REQUIRE(printk_calls == 0);
  return true;
}

static bool test_cross_byte(void)
{
  const unsigned char data[] = { 0xac, 0x35 };
  unsigned int value = 0;

  reset_log();
  REQUIRE(syna_tcm_get_touch_data(data, ARRAY_SIZE(data), 4, 8, &value) == 0);
  REQUIRE(value == 0x5a);
  REQUIRE(printk_calls == 0);
  return true;
}

static bool test_aligned_32_bits(void)
{
  const unsigned char data[] = { 0x78, 0x56, 0x34, 0x12 };
  unsigned int value = 0;

  reset_log();
  REQUIRE(syna_tcm_get_touch_data(data, ARRAY_SIZE(data), 0, 32, &value) == 0);
  REQUIRE(value == 0x12345678U);
  REQUIRE(printk_calls == 0);
  return true;
}

static bool test_unaligned_32_bits(void)
{
  const unsigned char data[] = { 0xe3, 0x41, 0x29, 0x95, 0x7a };
  unsigned int value = 0;

  reset_log();
  REQUIRE(syna_tcm_get_touch_data(data, ARRAY_SIZE(data), 5, 32, &value) == 0);
  REQUIRE(value == reference_extract(data, 5, 32));
  REQUIRE(printk_calls == 0);
  return true;
}

static bool test_bounded_reference_matrix(void)
{
  const unsigned char data[] = {
    0xe3, 0x41, 0x29, 0x95, 0x7a, 0x0c, 0xd6, 0xb8
  };
  unsigned int bit_offset;

  reset_log();
  for (bit_offset = 0; bit_offset < 32; bit_offset++) {
    unsigned int bit_count;

    for (bit_count = 1; bit_count <= 32; bit_count++) {
      unsigned int value = 0;

      REQUIRE(bit_offset + bit_count <= sizeof(data) * 8);
      REQUIRE(syna_tcm_get_touch_data(data, ARRAY_SIZE(data), bit_offset,
                                      bit_count, &value) == 0);
      REQUIRE(value == reference_extract(data, bit_offset, bit_count));
    }
  }
  REQUIRE(printk_calls == 0);
  return true;
}

struct test_case {
  const char *name;
  bool (*run)(void);
};

int main(void)
{
  static const struct test_case tests[] = {
    { "signature_contract", test_signature_contract },
    { "zero_bit_count", test_zero_bit_count },
    { "too_many_bits", test_too_many_bits },
    { "null_report", test_null_report },
    { "out_of_bounds_zeroes_value", test_out_of_bounds_zeroes_value },
    { "single_bit", test_single_bit },
    { "cross_byte", test_cross_byte },
    { "aligned_32_bits", test_aligned_32_bits },
    { "unaligned_32_bits", test_unaligned_32_bits },
    { "bounded_reference_matrix", test_bounded_reference_matrix },
  };
  size_t index;
  size_t passed = 0;

  for (index = 0; index < ARRAY_SIZE(tests); index++) {
    if (tests[index].run()) {
      printf("PASS %s\n", tests[index].name);
      passed++;
    } else {
      printf("FAIL %s\n", tests[index].name);
    }
  }
  printf("SUMMARY %zu/%zu passed\n", passed, ARRAY_SIZE(tests));
  return passed == ARRAY_SIZE(tests) ? EXIT_SUCCESS : EXIT_FAILURE;
}
