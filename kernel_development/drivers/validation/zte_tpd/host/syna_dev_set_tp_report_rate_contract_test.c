#include <stdint.h>
#include <stdio.h>

#define _QWORD unsigned long long
#define __int64 long long

struct syna_tcm { void *tcm_dev; };
static struct syna_tcm test_tcm;
static int dynamic_result;
static unsigned int dynamic_calls;
static unsigned char observed_id;
static unsigned char observed_value;
static unsigned int observed_delay;
static unsigned int printk_calls;

static int test_dynamic_config(unsigned long long dev, unsigned char id, unsigned char value,
                               unsigned int delay)
{
    (void)dev;
    dynamic_calls++;
    observed_id = id;
    observed_value = value;
    observed_delay = delay;
    return dynamic_result;
}

static int test_printk(const char *format, ...)
{
    (void)format;
    printk_calls++;
    return 0;
}

#define printk test_printk
#define syna_tcm_set_dynamic_config test_dynamic_config
#define unk_3A85B "enter"
#define unk_36F56 "mode2"
#define unk_33B9F "mode3"
#define unk_38139 "mode4"
#define unk_35446 "mode0"
#define unk_397FC "mode1"
#define unk_3BDBF "invalid"
#include "../../../reconstructed/zte_tpd/syna_dev_set_tp_report_rate.c"
#undef unk_3BDBF
#undef unk_397FC
#undef unk_35446
#undef unk_38139
#undef unk_33B9F
#undef unk_36F56
#undef unk_3A85B
#undef syna_tcm_set_dynamic_config
#undef printk
#undef __int64
#undef _QWORD

static void reset_state(void)
{
    test_tcm.tcm_dev = &test_tcm;
    dynamic_result = 0;
    dynamic_calls = printk_calls = 0;
    observed_id = observed_value = 0;
    observed_delay = 0;
}

static int test_null(void)
{
    reset_state();
    return syna_dev_set_tp_report_rate(0, 0, 77) == -22 && dynamic_calls == 0;
}

static int test_modes(void)
{
    const unsigned char expected[] = {0, 5, 4, 3, 1};
    for (int mode = 0; mode < 5; ++mode) {
        reset_state();
        if (syna_dev_set_tp_report_rate(&test_tcm, mode, 77) != 0 ||
            dynamic_calls != 1 || observed_id != 230 ||
            observed_value != expected[mode] || observed_delay != 77)
            return 0;
    }
    return 1;
}

static int test_invalid_mode(void)
{
    reset_state();
    return syna_dev_set_tp_report_rate(&test_tcm, 5, 77) == 0 && dynamic_calls == 0;
}

static int test_negative_error(void)
{
    reset_state();
    dynamic_result = -5;
    return syna_dev_set_tp_report_rate(&test_tcm, 2, 77) == -5 && dynamic_calls == 1;
}

int main(void)
{
    int null_case = test_null();
    int modes = test_modes();
    int invalid = test_invalid_mode();
    int negative = test_negative_error();
    if (!null_case || !modes || !invalid || !negative) {
        fprintf(stderr, "cases null=%d modes=%d invalid=%d negative=%d\n",
                null_case, modes, invalid, negative);
        return fprintf(stderr, "syna_dev_set_tp_report_rate contract mismatch\n"), 1;
    }
    puts("PASS syna_dev_set_tp_report_rate host tests (4 cases)");
    return 0;
}
