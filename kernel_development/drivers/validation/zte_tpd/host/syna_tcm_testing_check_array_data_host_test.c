#include <assert.h>
#include <stdint.h>
#include <stdarg.h>
#include <stdio.h>
#include <string.h>

static unsigned int printk_calls;
static const char *last_format;
static const char *last_function;

static unsigned int helper_calls;
static long long helper_fw[16];
static long long helper_expected[16];
static long long helper_bit_index[16];
static int helper_results[16];
static unsigned int helper_result_count;

static int test_printk(const char *format, ...)
{
  va_list args;

  va_start(args, format);
  printk_calls++;
  last_format = format;
  last_function = va_arg(args, const char *);
  va_end(args);
  return 0;
}

static int syna_tcm_testing_0100_check_data(long long fw,
                                             long long expected,
                                             long long bit_index)
{
  assert(helper_calls < 16);
  helper_fw[helper_calls] = fw;
  helper_expected[helper_calls] = expected;
  helper_bit_index[helper_calls] = bit_index;
  return helper_calls < helper_result_count ? helper_results[helper_calls++] :
                                              (helper_calls++, 1);
}

#define __int8 char
#define __int64 long long
#define __fastcall
#define LOBYTE(x) ((unsigned char *)&(x))[0]
#define printk test_printk
#define unk_3380A "\0013[error] %s: Invalid parameters to check frame data\n"
#include "../../../reconstructed/zte_tpd/syna_tcm_testing_check_array_data.c"
#undef unk_3380A
#undef printk
#undef LOBYTE
#undef __fastcall
#undef __int64
#undef __int8

static void reset_observations(void)
{
  printk_calls = 0;
  last_format = NULL;
  last_function = NULL;
  helper_calls = 0;
  helper_result_count = 0;
  memset(helper_fw, 0, sizeof(helper_fw));
  memset(helper_expected, 0, sizeof(helper_expected));
  memset(helper_bit_index, 0, sizeof(helper_bit_index));
  memset(helper_results, 0, sizeof(helper_results));
}

static void assert_no_log(void)
{
  assert(printk_calls == 0);
  assert(last_format == NULL);
  assert(last_function == NULL);
}

static void assert_parameter_log(void)
{
  assert(printk_calls == 1);
  assert(last_format != NULL);
  assert(last_function != NULL);
  assert(strcmp(last_function, "syna_tcm_testing_check_array_data") == 0);
}

static void configure_results(const int *results, unsigned int count)
{
  assert(count <= 16);
  memcpy(helper_results, results, count * sizeof(*results));
  helper_result_count = count;
}

int main(void)
{
  static const unsigned char fw[8] = {0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17};
  static const unsigned char expected[8] = {0xa0, 0xa1, 0xa2, 0xa3, 0xa4, 0xa5, 0xa6, 0xa7};
  unsigned char fw_copy[sizeof(fw)];
  unsigned char expected_copy[sizeof(expected)];
  const int all_pass[] = {1, 1, 1};
  const int one_fail[] = {1, 0, 1};
  const int non_boolean[] = {2};

  memcpy(fw_copy, fw, sizeof(fw_copy));
  memcpy(expected_copy, expected, sizeof(expected_copy));

  reset_observations();
  assert(syna_tcm_testing_check_array_data(0, 3, (long long)(uintptr_t)expected, 0) == 0);
  assert_parameter_log();
  assert(helper_calls == 0);

  reset_observations();
  assert(syna_tcm_testing_check_array_data((long long)(uintptr_t)fw, 3, 0, 0) == 0);
  assert_parameter_log();
  assert(helper_calls == 0);

  reset_observations();
  assert(syna_tcm_testing_check_array_data((long long)(uintptr_t)fw, 0,
                                           (long long)(uintptr_t)expected, 0) == 1);
  assert_no_log();
  assert(helper_calls == 0);

  reset_observations();
  configure_results(all_pass, 3);
  assert(syna_tcm_testing_check_array_data((long long)(uintptr_t)fw, 3,
                                           (long long)(uintptr_t)expected, 0) == 1);
  assert_no_log();
  assert(helper_calls == 3);
  assert(helper_fw[0] == (long long)(uintptr_t)(fw + 0));
  assert(helper_fw[2] == (long long)(uintptr_t)(fw + 2));
  assert(helper_expected[0] == (long long)(uintptr_t)expected);
  assert(helper_expected[2] == (long long)(uintptr_t)expected);
  assert(helper_bit_index[0] == 0);
  assert(helper_bit_index[2] == 2);

  reset_observations();
  configure_results(one_fail, 3);
  assert(syna_tcm_testing_check_array_data((long long)(uintptr_t)fw, 3,
                                           (long long)(uintptr_t)expected, 0) == 0);
  assert_no_log();
  assert(helper_calls == 3);

  reset_observations();
  configure_results(all_pass, 3);
  assert(syna_tcm_testing_check_array_data((long long)(uintptr_t)fw, 3,
                                           (long long)(uintptr_t)expected, 3) == 1);
  assert_no_log();
  assert(helper_calls == 3);
  assert(helper_expected[0] == (long long)(uintptr_t)(expected + 0));
  assert(helper_expected[2] == (long long)(uintptr_t)(expected + 2));

  reset_observations();
  configure_results(all_pass, 3);
  assert(syna_tcm_testing_check_array_data((long long)(uintptr_t)fw, 3,
                                           (long long)(uintptr_t)expected, 2) == 1);
  assert_no_log();
  assert(helper_calls == 3);
  assert(helper_expected[0] == (long long)(uintptr_t)expected);
  assert(helper_expected[2] == (long long)(uintptr_t)expected);

  reset_observations();
  configure_results(all_pass, 3);
  assert(syna_tcm_testing_check_array_data((long long)(uintptr_t)fw, 3,
                                           (long long)(uintptr_t)expected, 99) == 1);
  assert_no_log();
  assert(helper_calls == 3);
  assert(helper_expected[1] == (long long)(uintptr_t)(expected + 1));

  reset_observations();
  configure_results(non_boolean, 1);
  assert(syna_tcm_testing_check_array_data((long long)(uintptr_t)fw, 1,
                                           (long long)(uintptr_t)expected, 1) == 0);
  assert_no_log();
  assert(helper_calls == 1);

  reset_observations();
  assert(syna_tcm_testing_check_array_data((long long)(uintptr_t)fw, 0x80000002ULL,
                                           (long long)(uintptr_t)expected, 0) == 1);
  assert_no_log();
  assert(helper_calls == 0);

  reset_observations();
  assert(syna_tcm_testing_check_array_data((long long)(uintptr_t)fw, 0x100000000ULL,
                                           (long long)(uintptr_t)expected, 0) == 1);
  assert_no_log();
  assert(helper_calls == 0);

  assert(memcmp(fw, fw_copy, sizeof(fw)) == 0);
  assert(memcmp(expected, expected_copy, sizeof(expected)) == 0);
  puts("syna_tcm_testing_check_array_data host oracle: PASS");
  return 0;
}
