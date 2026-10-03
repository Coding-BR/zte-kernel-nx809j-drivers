#include <stdint.h>
#include <stdio.h>
#include <stdbool.h>

#define __fastcall
#define __int8 char
#define _BOOL8 bool
#define unk_3B2DF "%s: TRX-%03d"

static int printk_calls;

static int printk(const char *format, ...)
{
    (void)format;
    printk_calls++;
    return 0;
}

#include "../../../reconstructed/zte_tpd/syna_tcm_testing_0100_check_data.c"

static int failures;

static void reset_state(void)
{
    printk_calls = 0;
}

static void check_result(const char *name, int actual, int expected)
{
    if (actual != expected) {
        fprintf(stderr, "%s: got %d expected %d\n", name, actual, expected);
        failures++;
    }
}

static void test_equal_bytes(void)
{
    uint8_t data = 0xa5;
    uint8_t limit = 0xa5;

    reset_state();
    check_result("equal", syna_tcm_testing_0100_check_data(&data, &limit, 2), 1);
    if (printk_calls != 0)
        failures++;
}

static void test_single_bit_mismatch(void)
{
    uint8_t data = 0x00;
    uint8_t limit = 0x01;

    reset_state();
    check_result("bit-zero", syna_tcm_testing_0100_check_data(&data, &limit, 3), 0);
    if (printk_calls != 1)
        failures++;
}

static void test_all_bits_mismatch(void)
{
    uint8_t data = 0x00;
    uint8_t limit = 0xff;

    reset_state();
    check_result("all-bits", syna_tcm_testing_0100_check_data(&data, &limit, 1), 0);
    if (printk_calls != 8)
        failures++;
}

static void test_column_scaling(void)
{
    uint8_t data = 0x80;
    uint8_t limit = 0x00;

    reset_state();
    check_result("bit-seven", syna_tcm_testing_0100_check_data(&data, &limit, 5), 0);
    if (printk_calls != 1)
        failures++;
}

int main(void)
{
    test_equal_bytes();
    test_single_bit_mismatch();
    test_all_bits_mismatch();
    test_column_scaling();
    if (failures != 0)
        return 1;
    puts("PASS syna_tcm_testing_0100_check_data host tests (4 cases)");
    return 0;
}
