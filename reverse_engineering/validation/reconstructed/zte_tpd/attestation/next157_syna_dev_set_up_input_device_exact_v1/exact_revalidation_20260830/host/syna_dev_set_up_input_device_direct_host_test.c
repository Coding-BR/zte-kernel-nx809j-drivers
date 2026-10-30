#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define __int64 long
#define __int8 char
#define _QWORD unsigned long long
#define _DWORD unsigned int
#define _BYTE unsigned char
#define __fastcall

enum {
    EV_SYN = 0,
    EV_KEY = 1,
    EV_ABS = 3,
    BTN_TOUCH = 330,
    BTN_TOOL_FINGER = 325,
    INPUT_PROP_DIRECT = 1,
    KEY_WAKEUP = 143,
};

struct tcm_dev { unsigned char bytes[64]; };
struct syna_tcm { unsigned char bytes[0x400]; };
struct device { struct device *parent; };
struct platform_device { struct device dev; };

struct input_dev {
    const char *name;
    const char *phys;
    unsigned char reserved_to_1c[0x1c - 2 * sizeof(void *)];
    unsigned int identity_word;
    struct device dev;
    unsigned long evbit[8];
    unsigned long keybit[8];
    unsigned long propbit[2];
    void *drvdata;
    unsigned int x_max;
    unsigned int y_max;
    unsigned int slots;
    unsigned int capability_calls;
    unsigned int abs_calls;
    unsigned int mt_calls;
};

static struct device managed_device;
static struct platform_device parent_pdev;
static struct input_dev allocated_input;
static struct input_dev old_input;
static struct syna_tcm test_tcm;
static struct tcm_dev test_dev;
static unsigned int managed_ok;
static unsigned int allocation_ok;
static int register_result;
static int dispatcher_result;
static unsigned int free_events_calls;
static unsigned int lock_calls;
static unsigned int unlock_calls;
static unsigned int unregister_calls;
static unsigned int allocate_calls;
static unsigned int register_calls;
static unsigned int free_device_calls;
static unsigned int dispatcher_calls;
static unsigned int log_calls;
static unsigned int last_dispatcher_report;
static void *last_dispatcher_context;
static unsigned int last_abs_code;
static unsigned int last_abs_max;
static unsigned int last_mt_slots;
static unsigned int last_capability_code;
static void *last_input;
static void *last_unregistered_input;

static void set_bit_host(unsigned int bit, unsigned long *words)
{
    words[bit / (8U * sizeof(*words))] |=
        1UL << (bit % (8U * sizeof(*words)));
}

#define set_bit(bit, words) set_bit_host((bit), (words))

static int test_printk(const char *format, ...)
{
    (void)format;
    log_calls++;
    return 0;
}

static void test_free_input_events(struct syna_tcm *tcm)
{
    (void)tcm;
    free_events_calls++;
}

static void test_mutex_lock(long lock)
{
    (void)lock;
    lock_calls++;
}

static void test_mutex_unlock(long lock)
{
    (void)lock;
    unlock_calls++;
}

static struct device *test_request_managed_device(void)
{
    return managed_ok ? &managed_device : NULL;
}

static long test_allocate_input_device(struct device *managed)
{
    (void)managed;
    allocate_calls++;
    if (!allocation_ok)
        return (long)0;
    memset(&allocated_input, 0, sizeof(allocated_input));
    return (long)(uintptr_t)&allocated_input;
}

static void test_input_unregister_device(struct input_dev *input)
{
    unregister_calls++;
    last_unregistered_input = input;
}

static void test_input_free_device(long input)
{
    free_device_calls++;
    last_input = (void *)(uintptr_t)input;
}

static void test_input_set_drvdata(struct input_dev *input, void *data)
{
    input->drvdata = data;
}

static void test_input_set_capability(struct input_dev *input,
                                      unsigned int type, unsigned int code)
{
    (void)type;
    input->capability_calls++;
    last_capability_code = code;
}

static void test_input_set_abs_params(struct input_dev *input,
                                      unsigned int code, int minimum,
                                      int maximum, int fuzz, int flat)
{
    (void)minimum;
    (void)fuzz;
    (void)flat;
    input->abs_calls++;
    last_abs_code = code;
    last_abs_max = (unsigned int)maximum;
    if (code == 53)
        input->x_max = (unsigned int)maximum;
    if (code == 54)
        input->y_max = (unsigned int)maximum;
}

static int test_input_mt_init_slots(struct input_dev *input,
                                    unsigned int slots, unsigned int flags)
{
    (void)flags;
    input->mt_calls++;
    input->slots = slots;
    last_mt_slots = slots;
    return 0;
}

static unsigned int test_input_register_device(struct input_dev *input)
{
    register_calls++;
    last_input = input;
    return (unsigned int)register_result;
}

static unsigned int test_set_report_dispatcher(struct tcm_dev *dev,
                                                unsigned int report,
                                                void *dispatcher,
                                                void *context)
{
    (void)dev;
    (void)dispatcher;
    dispatcher_calls++;
    last_dispatcher_report = report;
    last_dispatcher_context = context;
    return (unsigned int)dispatcher_result;
}

static int test_touch_report(unsigned char event, const unsigned char *data,
                             unsigned int length, void *context)
{
    (void)event;
    (void)data;
    (void)length;
    (void)context;
    return 0;
}

#define printk test_printk
#define syna_dev_free_input_events test_free_input_events
#define mutex_lock test_mutex_lock
#define mutex_unlock test_mutex_unlock
#define syna_request_managed_device test_request_managed_device
#define devm_input_allocate_device test_allocate_input_device
#define input_unregister_device test_input_unregister_device
#define input_free_device test_input_free_device
#define input_set_drvdata test_input_set_drvdata
#define input_set_capability test_input_set_capability
#define input_set_abs_params test_input_set_abs_params
#define input_mt_init_slots test_input_mt_init_slots
#define input_register_device test_input_register_device
#define syna_tcm_set_report_dispatcher test_set_report_dispatcher
#define syna_dev_process_touch_report test_touch_report
#define unk_32EDC "mode"
#define unk_3BE43 "managed"
#define unk_375CB "allocate"
#define unk_375F8 "register"
#define unk_3C485 "create"
#define unk_35F92 "dispatcher"
#define unk_3CB57 "parameters_low"
#define unk_3BE7D "parameters_high"
#include "../../../reconstructed/zte_tpd/syna_dev_set_up_input_device.c"
#undef unk_3BE7D
#undef unk_3CB57
#undef unk_35F92
#undef unk_3C485
#undef unk_375F8
#undef unk_375CB
#undef unk_3BE43
#undef unk_32EDC
#undef syna_dev_process_touch_report
#undef syna_tcm_set_report_dispatcher
#undef input_register_device
#undef input_mt_init_slots
#undef input_set_abs_params
#undef input_set_capability
#undef input_set_drvdata
#undef input_free_device
#undef input_unregister_device
#undef devm_input_allocate_device
#undef syna_request_managed_device
#undef mutex_unlock
#undef mutex_lock
#undef syna_dev_free_input_events
#undef printk

static void put_ptr(unsigned char *base, size_t offset, void *value)
{
    uintptr_t raw = (uintptr_t)value;
    memcpy(base + offset, &raw, sizeof(raw));
}

static void put_u32(unsigned char *base, size_t offset, unsigned int value)
{
    memcpy(base + offset, &value, sizeof(value));
}

static void reset_state(unsigned int mode, unsigned int width,
                        unsigned int height, unsigned int slots)
{
    memset(&test_tcm, 0, sizeof(test_tcm));
    memset(&test_dev, 0, sizeof(test_dev));
    memset(&allocated_input, 0, sizeof(allocated_input));
    memset(&old_input, 0, sizeof(old_input));
    memset(&parent_pdev, 0, sizeof(parent_pdev));
    memset(&managed_device, 0, sizeof(managed_device));
    parent_pdev.dev.parent = (struct device *)(uintptr_t)0x1234;
    put_ptr(test_tcm.bytes, 0, &test_dev);
    put_ptr(test_tcm.bytes, 8, &parent_pdev);
    test_dev.bytes[9] = (unsigned char)mode;
    put_u32(test_dev.bytes, 16, width);
    put_u32(test_dev.bytes, 20, height);
    put_u32(test_dev.bytes, 24, slots);
    managed_ok = allocation_ok = 1;
    register_result = dispatcher_result = 0;
    free_events_calls = lock_calls = unlock_calls = 0;
    unregister_calls = allocate_calls = register_calls = 0;
    free_device_calls = dispatcher_calls = log_calls = 0;
    last_dispatcher_report = 0;
    last_dispatcher_context = NULL;
    last_abs_code = last_abs_max = last_mt_slots = 0;
    last_capability_code = 0;
    last_input = NULL;
    last_unregistered_input = NULL;
}

static void check(int condition, const char *name, unsigned int *tests,
                  unsigned int *failures)
{
    (*tests)++;
    printf("%s %s\n", condition ? "PASS" : "FAIL", name);
    if (!condition)
        (*failures)++;
}

int main(void)
{
    unsigned int tests = 0;
    unsigned int failures = 0;
    struct syna_tcm *tcm = &test_tcm;
    uintptr_t old = (uintptr_t)&old_input;

    reset_state(0, 1080, 2400, 10);
    check(syna_dev_set_up_input_device(tcm) == 0 && free_events_calls == 0 &&
              lock_calls == 0 && log_calls == 1,
          "mode_disabled_returns_without_side_effects", &tests, &failures);

    reset_state(1, 0, 0, 10);
    check(syna_dev_set_up_input_device(tcm) == 0 && free_events_calls == 1 &&
              lock_calls == 0,
          "zero_dimensions_stop_before_lock", &tests, &failures);

    reset_state(1, 1080, 2400, 10);
    put_u32(test_tcm.bytes, 952, 1080);
    put_u32(test_tcm.bytes, 956, 2400);
    put_u32(test_tcm.bytes, 960, 10);
    check(syna_dev_set_up_input_device(tcm) == 0 && lock_calls == 0 &&
              log_calls == 1,
          "cached_parameters_skip_reallocation", &tests, &failures);

    reset_state(1, 1080, 2400, 10);
    managed_ok = 0;
    check(syna_dev_set_up_input_device(tcm) == -22 && lock_calls == 1 &&
              unlock_calls == 1 && allocate_calls == 0,
          "managed_device_failure_unlocks", &tests, &failures);

    reset_state(1, 1080, 2400, 10);
    allocation_ok = 0;
    check(syna_dev_set_up_input_device(tcm) == -19 && allocate_calls == 1 &&
              register_calls == 0 && unlock_calls == 1,
          "allocation_failure_returns_enodev", &tests, &failures);

    reset_state(1, 1080, 2400, 10);
    register_result = -5;
    check(syna_dev_set_up_input_device(tcm) == -5 && register_calls == 1 &&
              free_device_calls == 1 && dispatcher_calls == 0,
          "registration_failure_is_preserved", &tests, &failures);

    reset_state(1, 1080, 2400, 10);
    dispatcher_result = -7;
    check(syna_dev_set_up_input_device(tcm) == 0 && register_calls == 1 &&
              dispatcher_calls == 1 && last_dispatcher_report == 17 &&
              last_dispatcher_context == tcm && unlock_calls == 1,
          "dispatcher_failure_keeps_registered_input", &tests, &failures);

    reset_state(1, 1080, 2400, 10);
    check(syna_dev_set_up_input_device(tcm) == 0 && register_calls == 1 &&
              dispatcher_calls == 1 && allocated_input.drvdata == tcm &&
              allocated_input.dev.parent == parent_pdev.dev.parent &&
              allocated_input.identity_word == 0x00010001 &&
              allocated_input.x_max == 1080 && allocated_input.y_max == 2400 &&
              allocated_input.slots == 10 && allocated_input.capability_calls == 1 &&
              allocated_input.abs_calls == 4 && allocated_input.mt_calls == 1,
          "success_configures_input_and_caches_parameters", &tests, &failures);

    reset_state(1, 1080, 2400, 10);
    put_ptr(test_tcm.bytes, 944, &old_input);
    check(syna_dev_set_up_input_device(tcm) == 0 && unregister_calls == 1 &&
              last_unregistered_input == &old_input && register_calls == 1 &&
              unlock_calls == 1,
          "replacement_unregisters_previous_input", &tests, &failures);

    reset_state(1, 1080, 2400, 12);
    put_u32(test_tcm.bytes, 952, 1080);
    put_u32(test_tcm.bytes, 956, 2400);
    put_u32(test_tcm.bytes, 960, 11);
    check(syna_dev_set_up_input_device(tcm) == 0 && log_calls == 0 &&
              lock_calls == 1 && register_calls == 1 &&
              allocated_input.slots == 12,
          "slot_count_change_reallocates", &tests, &failures);

    (void)old;
    printf("SUMMARY tests=%u failures=%u\n", tests, failures);
    return failures == 0 ? 0 : 1;
}
