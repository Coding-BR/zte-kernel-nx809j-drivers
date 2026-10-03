#include <stdint.h>
#include <stdio.h>

#define EINVAL 22

struct tcm_dev { unsigned char bytes[32]; };
struct syna_tcm { struct tcm_dev *tcm_dev; };

static struct syna_tcm test_tcm;
static struct tcm_dev test_dev;
static int dynamic_result;
static unsigned int dynamic_calls;
static unsigned int printk_calls;
static unsigned char observed_id;
static unsigned char observed_value;
static unsigned int observed_enable;

static int test_dynamic_config(struct tcm_dev *dev, unsigned char id,
                               unsigned char value, unsigned int enable)
{
    (void)dev;
    dynamic_calls++;
    observed_id = id;
    observed_value = value;
    observed_enable = enable;
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
#include "../../../reconstructed/zte_tpd/syna_dev_set_screen_on_fp_mode.c"
#undef syna_tcm_set_dynamic_config
#undef printk

static void reset_state(void)
{
    test_tcm.tcm_dev = &test_dev;
    dynamic_result = 0;
    dynamic_calls = printk_calls = 0;
    observed_id = observed_value = 0;
    observed_enable = 0;
}

static int test_null_tcm(void)
{
    reset_state();
    return syna_dev_set_screen_on_fp_mode(0, 1) == -22 &&
           dynamic_calls == 0 && printk_calls == 1;
}

static int test_success_normalizes_positive(void)
{
    reset_state();
    dynamic_result = 7;
    return syna_dev_set_screen_on_fp_mode(&test_tcm, 1) == 0 &&
           dynamic_calls == 1 && observed_id == 0xd4 && observed_value == 3 &&
           observed_enable == 1 && printk_calls == 1;
}

static int test_negative_error_propagates(void)
{
    reset_state();
    dynamic_result = -5;
    return syna_dev_set_screen_on_fp_mode(&test_tcm, 0) == -5 &&
           dynamic_calls == 1 && observed_enable == 0 && printk_calls == 2;
}

int main(void)
{
    int null_tcm = test_null_tcm();
    int success = test_success_normalizes_positive();
    int failure = test_negative_error_propagates();
    if (!null_tcm || !success || !failure) {
        fprintf(stderr, "cases null=%d success=%d failure=%d\n",
                null_tcm, success, failure);
        return fprintf(stderr, "syna_dev_set_screen_on_fp_mode contract mismatch\n"), 1;
    }
    puts("PASS syna_dev_set_screen_on_fp_mode host tests (3 cases)");
    return 0;
}
