#include <stdint.h>
#include <stdio.h>
#include <string.h>

struct syna_tcm { unsigned char bytes[800]; };
struct tcm_dev { unsigned char bytes[640]; };
struct tcm_application_info { unsigned char bytes[64]; };
struct wrapper { unsigned char bytes[704]; };

static struct wrapper test_wrapper;
static struct tcm_dev test_dev;
static int app_result;
static int preserve_result;
static unsigned int app_calls;
static unsigned int preserve_calls;
static unsigned int observed_transfer_size;
static unsigned int printk_calls;

static int test_syna_tcm_get_app_info(struct tcm_dev *dev,
                                      struct tcm_application_info *info,
                                      unsigned int transfer_size)
{
    (void)dev;
    (void)info;
    app_calls++;
    observed_transfer_size = transfer_size;
    return app_result;
}

static int test_syna_tcm_preserve_touch_report_config(struct tcm_dev *dev,
                                                      unsigned int transfer_size)
{
    (void)dev;
    preserve_calls++;
    observed_transfer_size = transfer_size;
    return preserve_result;
}

static int test_printk(const char *format, ...)
{
    (void)format;
    printk_calls++;
    return 0;
}

#define __int64 long long
#undef __int64
#define __int64 intptr_t
#define __fastcall
#define __int8 char
#define _QWORD unsigned long long
#define _DWORD unsigned int
#define _BYTE unsigned char
#define unk_32EDC "mode_failure"
#define unk_3298B "app_failure"
#define unk_3609B "preserve_failure"
#define printk test_printk
#define syna_tcm_get_app_info test_syna_tcm_get_app_info
#define syna_tcm_preserve_touch_report_config test_syna_tcm_preserve_touch_report_config
#include "../../../reconstructed/zte_tpd/syna_dev_set_up_app_fw.c"
#undef syna_tcm_preserve_touch_report_config
#undef syna_tcm_get_app_info
#undef printk
#undef unk_3609B
#undef unk_3298B
#undef unk_32EDC
#undef _BYTE
#undef _DWORD
#undef _QWORD
#undef __fastcall
#undef __int64
#undef __int8

static void store_ptr(unsigned char *base, size_t offset, const void *value)
{
    memcpy(base + offset, &value, sizeof(value));
}

static void store_u32(unsigned char *base, size_t offset, unsigned int value)
{
    memcpy(base + offset, &value, sizeof(value));
}

static void reset_state(void)
{
    memset(&test_wrapper, 0, sizeof(test_wrapper));
    memset(&test_dev, 0, sizeof(test_dev));
    app_result = 0;
    preserve_result = 0;
    app_calls = preserve_calls = observed_transfer_size = printk_calls = 0;
    store_ptr(test_wrapper.bytes, 0, &test_dev);
    store_ptr(test_wrapper.bytes, 624, (void *)(intptr_t)-168);
    test_dev.bytes[9] = 1;
    store_u32(test_dev.bytes, 524, 4096);
}

static int test_null_wrapper(void)
{
    reset_state();
    return syna_dev_set_up_app_fw(0) == -22 && app_calls == 0 && printk_calls == 0;
}

static int test_wrong_mode(void)
{
    reset_state();
    test_dev.bytes[9] = 0;
    return syna_dev_set_up_app_fw((struct syna_tcm *)&test_wrapper) == -22 &&
           app_calls == 0 && preserve_calls == 0 && printk_calls == 1;
}

static int test_default_transfer_size(void)
{
    reset_state();
    return syna_dev_set_up_app_fw((struct syna_tcm *)&test_wrapper) == 0 &&
           app_calls == 1 && preserve_calls == 1 && observed_transfer_size == 4096;
}

static int test_active_device_uses_zero_size(void)
{
    reset_state();
    store_ptr(test_wrapper.bytes, 624, &test_dev);
    store_u32(test_dev.bytes, 184, 17);
    test_dev.bytes[188] = 1;
    return syna_dev_set_up_app_fw((struct syna_tcm *)&test_wrapper) == 0 &&
           app_calls == 1 && preserve_calls == 1 && observed_transfer_size == 0;
}

static int test_app_failure_is_propagated(void)
{
    reset_state();
    app_result = -19;
    return syna_dev_set_up_app_fw((struct syna_tcm *)&test_wrapper) == -19 &&
           app_calls == 1 && preserve_calls == 0 && printk_calls == 1;
}

static int test_preserve_failure_is_propagated(void)
{
    reset_state();
    preserve_result = -5;
    return syna_dev_set_up_app_fw((struct syna_tcm *)&test_wrapper) == -5 &&
           app_calls == 1 && preserve_calls == 1 && printk_calls == 1;
}

int main(void)
{
    int null_wrapper = test_null_wrapper();
    int wrong_mode = test_wrong_mode();
    int default_size = test_default_transfer_size();
    int active = test_active_device_uses_zero_size();
    int app_failure = test_app_failure_is_propagated();
    int preserve_failure = test_preserve_failure_is_propagated();
    if (!null_wrapper || !wrong_mode || !default_size || !active ||
        !app_failure || !preserve_failure) {
        fprintf(stderr, "cases null=%d mode=%d default=%d active=%d app=%d preserve=%d\n",
                null_wrapper, wrong_mode, default_size, active, app_failure,
                preserve_failure);
        return fprintf(stderr, "syna_dev_set_up_app_fw contract mismatch\n"), 1;
    }
    puts("PASS syna_dev_set_up_app_fw host tests (6 cases)");
    return 0;
}
