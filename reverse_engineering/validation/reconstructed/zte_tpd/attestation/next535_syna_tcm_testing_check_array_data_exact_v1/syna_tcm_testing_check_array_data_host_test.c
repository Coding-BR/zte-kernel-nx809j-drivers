#include <stdint.h>
#include <stdio.h>
#include <stdarg.h>
#include <string.h>

typedef int64_t __int64;
#define __fastcall
#define LOBYTE(value) (((uint8_t *)&(value))[0])
#define unk_3380A "%s invalid input"

static int checker_result = 1;
static int checker_calls;
static uint32_t observed_indices[8];
static uintptr_t observed_data[8];
static uintptr_t observed_expected[8];

static int printk(const char *format, ...)
{
    (void)format;
    return 0;
}

static __int64 syna_tcm_testing_0100_check_data(__int64 data,
                                                 __int64 expected,
                                                 uint32_t index)
{
    if (checker_calls < 8) {
        observed_data[checker_calls] = (uintptr_t)data;
        observed_expected[checker_calls] = (uintptr_t)expected;
        observed_indices[checker_calls] = index;
    }
    checker_calls++;
    return checker_result;
}

#include "../../../reconstructed/zte_tpd/syna_tcm_testing_check_array_data.c"

static int failures;

static void reset_state(void)
{
    checker_result = 1;
    checker_calls = 0;
    memset(observed_indices, 0, sizeof(observed_indices));
    memset(observed_data, 0, sizeof(observed_data));
    memset(observed_expected, 0, sizeof(observed_expected));
}

static void check_result(const char *name, int actual, int expected)
{
    if (actual != expected) {
        fprintf(stderr, "%s: got %d expected %d\n", name, actual, expected);
        failures++;
    }
}

static void test_invalid_inputs(void)
{
    uint8_t data[4] = {0};
    uint8_t expected[4] = {0};

    reset_state();
    check_result("null-data", syna_tcm_testing_check_array_data(0, 2,
                  (__int64)(uintptr_t)expected, 2), 0);
    check_result("null-expected", syna_tcm_testing_check_array_data(
                  (__int64)(uintptr_t)data, 2, 0, 2), 0);
    if (checker_calls != 0)
        failures++;
}

static void test_empty_array(void)
{
    uint8_t data[4] = {0};
    uint8_t expected[4] = {0};

    reset_state();
    check_result("empty", syna_tcm_testing_check_array_data(
                  (__int64)(uintptr_t)data, 0,
                  (__int64)(uintptr_t)expected, 0), 1);
    if (checker_calls != 0)
        failures++;
}

static void test_expected_array_selection(void)
{
    uint8_t data[8] = {0};
    uint8_t expected[8] = {0};

    reset_state();
    check_result("full-expected", syna_tcm_testing_check_array_data(
                  (__int64)(uintptr_t)data, 3,
                  (__int64)(uintptr_t)expected, 3), 1);
    if (checker_calls != 3 || observed_indices[0] != 0 || observed_indices[2] != 2 ||
        observed_data[1] != (uintptr_t)(data + 1) ||
        observed_expected[1] != (uintptr_t)(expected + 1))
        failures++;

    reset_state();
    checker_result = 0;
    check_result("shared-expected-failure", syna_tcm_testing_check_array_data(
                  (__int64)(uintptr_t)data, 3,
                  (__int64)(uintptr_t)expected, 1), 0);
    if (checker_calls != 3 || observed_expected[0] != (uintptr_t)expected ||
        observed_expected[2] != (uintptr_t)expected)
        failures++;
}

int main(void)
{
    test_invalid_inputs();
    test_empty_array();
    test_expected_array_selection();
    if (failures != 0)
        return 1;
    puts("PASS syna_tcm_testing_check_array_data host tests (4 cases)");
    return 0;
}
