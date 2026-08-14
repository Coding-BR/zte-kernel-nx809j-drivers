#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

struct work_struct { unsigned char bytes[8]; };
struct syna_tcm { unsigned char bytes[1024]; };
struct device { unsigned char bytes[64]; };

static unsigned char work_area[2048];
static struct device test_device;
static unsigned int wait_calls;
static unsigned long wait_timeout_seen;
static unsigned int stay_awake_calls;
static unsigned int relax_calls;
static unsigned int reflash_calls;
static unsigned int app_fw_calls;
static unsigned int input_device_calls;
static unsigned int register_fw_calls;
static unsigned int screen_fp_calls;
static unsigned int report_rate_calls;
static unsigned int report_rate_value_seen;
static unsigned int report_rate_delay_seen;
static unsigned int printk_calls;
static int reflash_result;
static int app_fw_result;
static int input_device_result;
static int screen_fp_result;
static int report_rate_result;

static unsigned long test_wait_for_completion_timeout(void *completion,
                                                      unsigned long timeout)
{
    (void)completion;
    wait_calls++;
    wait_timeout_seen = timeout;
    return 1;
}

static void test_pm_stay_awake(void *source)
{
    (void)source;
    stay_awake_calls++;
}

static void test_pm_relax(void *source)
{
    (void)source;
    relax_calls++;
}

static int test_do_reflash(struct syna_tcm *tcm, bool force)
{
    (void)tcm;
    (void)force;
    reflash_calls++;
    return reflash_result;
}

static int test_set_up_app_fw(struct syna_tcm *tcm)
{
    (void)tcm;
    app_fw_calls++;
    return app_fw_result;
}

static int test_set_up_input_device(struct syna_tcm *tcm)
{
    (void)tcm;
    input_device_calls++;
    return input_device_result;
}

static void test_register_fw_class(struct syna_tcm *tcm)
{
    (void)tcm;
    register_fw_calls++;
}

static unsigned int test_set_screen_on_fp_mode(struct syna_tcm *tcm,
                                               unsigned int enable)
{
    (void)tcm;
    (void)enable;
    screen_fp_calls++;
    return (unsigned int)screen_fp_result;
}

static int test_set_tp_report_rate(struct syna_tcm *tcm,
                                   unsigned int value,
                                   unsigned int delay_ms)
{
    (void)tcm;
    report_rate_calls++;
    report_rate_value_seen = value;
    report_rate_delay_seen = delay_ms;
    return report_rate_result;
}

static int test_printk(const char *format, ...)
{
    (void)format;
    printk_calls++;
    return 0;
}

static void store_ptr(unsigned char *base, size_t offset, const void *value)
{
    memcpy(base + offset, &value, sizeof(value));
}

static void store_u32(unsigned char *base, size_t offset, unsigned int value)
{
    memcpy(base + offset, &value, sizeof(value));
}

#define __int64 intptr_t
#define __fastcall
#define _QWORD unsigned long long
#define _DWORD unsigned int
#define _BYTE unsigned char
#define printk test_printk
#define wait_for_completion_timeout test_wait_for_completion_timeout
#define pm_stay_awake test_pm_stay_awake
#define pm_relax test_pm_relax
#define syna_dev_do_reflash test_do_reflash
#define syna_dev_set_up_app_fw test_set_up_app_fw
#define syna_dev_set_up_input_device test_set_up_input_device
#define syna_tpd_register_fw_class test_register_fw_class
#define syna_dev_set_screen_on_fp_mode test_set_screen_on_fp_mode
#define syna_dev_set_tp_report_rate test_set_tp_report_rate
#define unk_36640 "startup_inactive"
#define unk_3B114 "app_fw_failure"
#define unk_375F8 "input_device_failure"
#define unk_3C4B0 "startup_ready"
#define unk_3BEE4 "screen_fp"
#define unk_3A2DA "report_rate"
#include "../../../reconstructed/zte_tpd/syna_dev_reflash_startup_work.c"
#undef unk_3A2DA
#undef unk_3BEE4
#undef unk_3C4B0
#undef unk_375F8
#undef unk_3B114
#undef unk_36640
#undef syna_dev_set_tp_report_rate
#undef syna_dev_set_screen_on_fp_mode
#undef syna_tpd_register_fw_class
#undef syna_dev_set_up_input_device
#undef syna_dev_set_up_app_fw
#undef syna_dev_do_reflash
#undef pm_relax
#undef pm_stay_awake
#undef wait_for_completion_timeout
#undef printk
#undef _BYTE
#undef _DWORD
#undef _QWORD
#undef __fastcall
#undef __int64

static void reset_state(void)
{
    memset(work_area, 0, sizeof(work_area));
    memset(&test_device, 0, sizeof(test_device));
    wait_calls = stay_awake_calls = relax_calls = 0;
    reflash_calls = app_fw_calls = input_device_calls = 0;
    register_fw_calls = screen_fp_calls = report_rate_calls = 0;
    report_rate_value_seen = report_rate_delay_seen = 0;
    printk_calls = 0;
    reflash_result = app_fw_result = input_device_result = 0;
    screen_fp_result = report_rate_result = 0;
    store_ptr(work_area, 8, &test_device);
    store_u32(work_area, 968 + 560, 0x12345678U);
    work_area[968 + 443] = 1;
}

static struct work_struct *test_work(void)
{
    return (struct work_struct *)(work_area + 968);
}

static int expect_inactive(void)
{
    reset_state();
    work_area[968 + 443] = 0;
    syna_dev_reflash_startup_work(test_work());
    return wait_calls == 1 && wait_timeout_seen == 250 &&
           stay_awake_calls == 0 && relax_calls == 0 && reflash_calls == 0 &&
           printk_calls == 1;
}

static int expect_reflash_failure(void)
{
    reset_state();
    reflash_result = -5;
    syna_dev_reflash_startup_work(test_work());
    return stay_awake_calls == 1 && relax_calls == 1 && reflash_calls == 1 &&
           app_fw_calls == 0 && input_device_calls == 0 &&
           register_fw_calls == 0 && report_rate_calls == 0 && printk_calls == 0;
}

static int expect_app_failure(void)
{
    reset_state();
    app_fw_result = -5;
    syna_dev_reflash_startup_work(test_work());
    return stay_awake_calls == 1 && relax_calls == 1 && reflash_calls == 1 &&
           app_fw_calls == 1 && input_device_calls == 0 &&
           register_fw_calls == 0 && report_rate_calls == 0 && printk_calls == 1;
}

static int expect_input_failure(void)
{
    reset_state();
    input_device_result = -5;
    syna_dev_reflash_startup_work(test_work());
    return stay_awake_calls == 1 && relax_calls == 1 && reflash_calls == 1 &&
           app_fw_calls == 1 && input_device_calls == 1 &&
           register_fw_calls == 0 && report_rate_calls == 0 && printk_calls == 1;
}

static int expect_success(void)
{
    reset_state();
    syna_dev_reflash_startup_work(test_work());
    return stay_awake_calls == 1 && relax_calls == 1 && reflash_calls == 1 &&
           app_fw_calls == 1 && input_device_calls == 1 &&
           register_fw_calls == 1 && screen_fp_calls == 1 &&
           report_rate_calls == 1 && report_rate_value_seen == 0x12345678U &&
           report_rate_delay_seen == 0 && printk_calls == 3;
}

int main(void)
{
    int inactive = expect_inactive();
    int reflash_failure = expect_reflash_failure();
    int app_failure = expect_app_failure();
    int input_failure = expect_input_failure();
    int success = expect_success();
    if (!inactive || !reflash_failure || !app_failure || !input_failure || !success) {
        fprintf(stderr, "cases inactive=%d reflash=%d app=%d input=%d success=%d\n",
                inactive, reflash_failure, app_failure, input_failure, success);
        fprintf(stderr, "syna_dev_reflash_startup_work contract mismatch\n");
        return 1;
    }
    puts("PASS syna_dev_reflash_startup_work host tests (5 cases)");
    return 0;
}
