#include <stdint.h>
#include <stdio.h>
#include <string.h>

struct kobject { unsigned char bytes[32]; };
struct device { struct kobject kobj; };
struct platform_device { struct device dev; };
struct syna_tcm { unsigned char bytes[64]; };
struct work_struct { unsigned char bytes[8]; };
struct ufp_ops { struct platform_device *pdev; };

static unsigned char context_area[2048];
static struct syna_tcm test_tcm;
static unsigned char test_input[32];
static unsigned char status_page[4096];
static struct ufp_ops ufp_tp_ops;
static unsigned char tpd_cdev_bytes[128];
static unsigned char *tpd_cdev = tpd_cdev_bytes;
static int large_area_ignore_count;
static int large_area_uevent_count;
static int parse_result;
static unsigned int parse_calls;
static unsigned int mutex_lock_calls;
static unsigned int mutex_unlock_calls;
static unsigned int input_event_calls;
static unsigned int printk_calls;

static unsigned int test_parse_touch_report(uintptr_t tcm,
                                            const unsigned char *report,
                                            unsigned int report_len,
                                            uintptr_t context)
{
    (void)tcm;
    (void)report;
    (void)report_len;
    (void)context;
    parse_calls++;
    return (unsigned int)parse_result;
}

static void test_mutex_lock(void *lock)
{
    (void)lock;
    mutex_lock_calls++;
}

static void test_mutex_unlock(void *lock)
{
    (void)lock;
    mutex_unlock_calls++;
}

static int test_input_event(void *input, unsigned int type,
                            unsigned int code, int value)
{
    (void)input;
    (void)type;
    (void)code;
    (void)value;
    input_event_calls++;
    return 0;
}

static void test_input_mt_report_slot_state(void *input, unsigned int tool,
                                            int active)
{
    (void)input;
    (void)tool;
    (void)active;
}

static void test_report_ufp_uevent(uintptr_t value)
{
    (void)value;
}

static void test_ufp_report_gesture_uevent(const char *value)
{
    (void)value;
}

static int test_kobject_uevent_env(struct kobject *kobj, int action,
                                   unsigned long long *envp)
{
    (void)kobj;
    (void)action;
    (void)envp;
    return 0;
}

static void test_tpd_touch_press(void *input, unsigned int x, unsigned int y,
                                 uintptr_t slot, unsigned int major,
                                 unsigned int flags)
{
    (void)input; (void)x; (void)y; (void)slot; (void)major; (void)flags;
}

static void test_tpd_touch_release(void *input, uintptr_t slot, int mode)
{
    (void)input; (void)slot; (void)mode;
}

static void test_one_key_report(int state, int x, int y, uintptr_t slot)
{
    (void)state; (void)x; (void)y; (void)slot;
}

static void test_wake_up(void *wait, unsigned int mode, unsigned int nr,
                         void *key)
{
    (void)wait; (void)mode; (void)nr; (void)key;
}

static int test_printk(const char *format, ...)
{
    (void)format;
    printk_calls++;
    return 0;
}

#define __int64 intptr_t
#define __int8 char
#define _QWORD unsigned long long
#define _DWORD unsigned int
#define _BYTE unsigned char
#define _ReadStatusReg(value) ((intptr_t)(status_page + 1808))
#define SP_EL0 0
#define __break(value) ((void)(value))
#define printk test_printk
#define syna_tcm_parse_touch_report test_parse_touch_report
#define mutex_lock test_mutex_lock
#define mutex_unlock test_mutex_unlock
#define input_event test_input_event
#define input_mt_report_slot_state test_input_mt_report_slot_state
#define report_ufp_uevent test_report_ufp_uevent
#define ufp_report_gesture_uevent test_ufp_report_gesture_uevent
#define kobject_uevent_env test_kobject_uevent_env
#define tpd_touch_press test_tpd_touch_press
#define tpd_touch_release test_tpd_touch_release
#define one_key_report test_one_key_report
#define _wake_up test_wake_up
#define unk_3411A "null_context"
#define unk_3660C "bad_event"
#define unk_3A914 "parse_failure"
#define unk_35FD5 "gesture"
#define unk_35FFC "double_tap"
#define unk_3354D "single_tap"
#define unk_37625 "other_gesture"
#define unk_32F20 "large_area"
#define unk_3475B "large_area_ignored"
#define unk_33C0B "no_ufp_device"
#include "../../../reconstructed/zte_tpd/syna_dev_process_touch_report.c"
#undef unk_33C0B
#undef unk_3475B
#undef unk_32F20
#undef unk_37625
#undef unk_3354D
#undef unk_35FFC
#undef unk_35FD5
#undef unk_3A914
#undef unk_3660C
#undef unk_3411A
#undef _wake_up
#undef one_key_report
#undef tpd_touch_release
#undef tpd_touch_press
#undef kobject_uevent_env
#undef ufp_report_gesture_uevent
#undef report_ufp_uevent
#undef input_mt_report_slot_state
#undef input_event
#undef mutex_unlock
#undef mutex_lock
#undef syna_tcm_parse_touch_report
#undef printk
#undef __break
#undef SP_EL0
#undef _ReadStatusReg
#undef _BYTE
#undef _DWORD
#undef _QWORD
#undef __int64
#undef __int8

static void reset_state(void)
{
    uintptr_t tcm = (uintptr_t)&test_tcm;
    memset(context_area, 0, sizeof(context_area));
    memset(&test_tcm, 0, sizeof(test_tcm));
    memset(test_input, 0, sizeof(test_input));
    parse_result = 0;
    parse_calls = mutex_lock_calls = mutex_unlock_calls = 0;
    input_event_calls = printk_calls = 0;
    large_area_ignore_count = 0;
    large_area_uevent_count = 0;
    ufp_tp_ops.pdev = NULL;
    memcpy(context_area, &tcm, sizeof(tcm));
}

static int expect_null_context(void)
{
    reset_state();
    return syna_dev_process_touch_report(17, NULL, 0, NULL) == -22 &&
           parse_calls == 0 && mutex_lock_calls == 0 && printk_calls == 1;
}

static int expect_invalid_event(void)
{
    reset_state();
    return syna_dev_process_touch_report(16, NULL, 0, context_area) == -22 &&
           parse_calls == 0 && mutex_lock_calls == 0 && printk_calls == 1;
}

static int expect_parse_failure(void)
{
    reset_state();
    parse_result = -5;
    return syna_dev_process_touch_report(17, NULL, 4, context_area) == -5 &&
           parse_calls == 1 && mutex_lock_calls == 0 && printk_calls == 1;
}

static int expect_no_input_device(void)
{
    reset_state();
    memcpy(context_area + 944, &(uintptr_t){0}, sizeof(uintptr_t));
    return syna_dev_process_touch_report(17, NULL, 4, context_area) == 0 &&
           parse_calls == 1 && mutex_lock_calls == 0 && printk_calls == 0;
}

static int expect_empty_report(void)
{
    uintptr_t input = (uintptr_t)test_input;
    reset_state();
    memcpy(context_area + 944, &input, sizeof(input));
    memcpy(&test_tcm.bytes[24], &(uint32_t){0}, sizeof(uint32_t));
    return syna_dev_process_touch_report(17, NULL, 4, context_area) == 0 &&
           parse_calls == 1 && mutex_lock_calls == 1 &&
           mutex_unlock_calls == 1 && input_event_calls == 3 && printk_calls == 0;
}

int main(void)
{
    if (!expect_null_context() || !expect_invalid_event() ||
        !expect_parse_failure() || !expect_no_input_device() ||
        !expect_empty_report()) {
        fprintf(stderr, "syna_dev_process_touch_report contract mismatch\n");
        return 1;
    }
    puts("PASS syna_dev_process_touch_report host tests (5 cases)");
    return 0;
}
