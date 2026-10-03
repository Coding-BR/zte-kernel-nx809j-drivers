#include <stdint.h>
#include <stdio.h>
#include <string.h>

struct hw_stub { unsigned char bytes[184]; unsigned int irq; };

static unsigned char context_area[1600];
static struct hw_stub test_hw;
static int dynamic_fail_at;
static int dynamic_fail_code;
static unsigned int dynamic_calls;
static unsigned int dynamic_ids[4];
static unsigned int dynamic_values[4];
static unsigned int dynamic_delays[4];
static unsigned int irq_wake_calls;
static int irq_seen;
static unsigned int irq_wake_seen;
static unsigned int printk_calls;

static int test_irq_set_irq_wake(unsigned int irq, unsigned int on)
{
    irq_wake_calls++;
    irq_seen = (int)irq;
    irq_wake_seen = on;
    return 0;
}

static int test_dynamic_config(uintptr_t tcm, unsigned int id,
                               unsigned int value, unsigned int delay)
{
    (void)tcm;
    if (dynamic_calls < 4) {
        dynamic_ids[dynamic_calls] = id;
        dynamic_values[dynamic_calls] = value;
        dynamic_delays[dynamic_calls] = delay;
    }
    dynamic_calls++;
    return dynamic_calls == (unsigned int)dynamic_fail_at ? dynamic_fail_code : 0;
}

static int test_printk(const char *format, ...)
{
    (void)format;
    printk_calls++;
    return 0;
}

#define __int64 intptr_t
#define __fastcall
#define _QWORD unsigned long long
#define _DWORD unsigned int
#define _BYTE unsigned char
#define irq_set_irq_wake test_irq_set_irq_wake
#define syna_tcm_set_dynamic_config test_dynamic_config
#define printk test_printk
#define unk_35A56 "gesture_disable_irq"
#define unk_36AB5 "gesture_enable_irq"
#define unk_335DA "gesture_dynamic_failure"
#define unk_3B058 "gesture_config_failure"
#define unk_329E0 "gesture_config"
#define unk_3D131 "gesture_config_done"
#include "../../../reconstructed/zte_tpd/syna_dev_enable_lowpwr_gesture.c"
#undef unk_3D131
#undef unk_329E0
#undef unk_3B058
#undef unk_335DA
#undef unk_36AB5
#undef unk_35A56
#undef printk
#undef syna_tcm_set_dynamic_config
#undef irq_set_irq_wake
#undef _BYTE
#undef _DWORD
#undef _QWORD
#undef __fastcall
#undef __int64

static void store_u32(size_t offset, unsigned int value)
{
    memcpy(context_area + offset, &value, sizeof(value));
}

static void store_ptr(size_t offset, const void *value)
{
    uintptr_t pointer = (uintptr_t)value;
    memcpy(context_area + offset, &pointer, sizeof(pointer));
}

static void reset_state(void)
{
    memset(context_area, 0, sizeof(context_area));
    memset(&test_hw, 0, sizeof(test_hw));
    dynamic_fail_at = 0;
    dynamic_fail_code = -5;
    dynamic_calls = 0;
    memset(dynamic_ids, 0, sizeof(dynamic_ids));
    memset(dynamic_values, 0, sizeof(dynamic_values));
    memset(dynamic_delays, 0, sizeof(dynamic_delays));
    irq_wake_calls = 0;
    irq_seen = -1;
    irq_wake_seen = 0;
    printk_calls = 0;
    test_hw.irq = 23;
    store_ptr(78 * sizeof(uintptr_t), &test_hw);
    context_area[1409] = 1;
    store_u32(1456, 5);
    store_u32(1464, 1);
    store_u32(1476, 7);
}

static int expect_inactive(void)
{
    reset_state();
    context_area[1409] = 0;
    return syna_dev_enable_lowpwr_gesture((unsigned long long *)context_area, 1, 19) == 0 &&
           dynamic_calls == 0 && irq_wake_calls == 0 && printk_calls == 0;
}

static int expect_disable_success(void)
{
    unsigned int expected = 7U | (5U << 13);
    reset_state();
    context_area[756] = 0;
    return syna_dev_enable_lowpwr_gesture((unsigned long long *)context_area, 0, 19) == 0 &&
           context_area[756] == 0 && irq_wake_calls == 0 && dynamic_calls == 3 &&
           dynamic_ids[0] == 9 && dynamic_values[0] == 0 &&
           dynamic_ids[1] == 254 && dynamic_values[1] == expected &&
           dynamic_ids[2] == 212 && dynamic_values[2] == 3 &&
           dynamic_delays[0] == 19 && dynamic_delays[1] == 19 &&
           dynamic_delays[2] == 19 && printk_calls == 2;
}

static int expect_enable_success(void)
{
    reset_state();
    context_area[756] = 0;
    return syna_dev_enable_lowpwr_gesture((unsigned long long *)context_area, 1, 19) == 0 &&
           context_area[756] == 1 && irq_wake_calls == 1 && irq_seen == 23 &&
           irq_wake_seen == 1 && dynamic_calls == 3 &&
           dynamic_values[0] == 1 && dynamic_values[2] == 3 && printk_calls == 3;
}

static int expect_dynamic_failure(void)
{
    reset_state();
    dynamic_fail_at = 1;
    return syna_dev_enable_lowpwr_gesture((unsigned long long *)context_area, 1, 19) == -5 &&
           dynamic_calls == 1 && irq_wake_calls == 1 && context_area[756] == 1 &&
           printk_calls == 2;
}

static int expect_config_failures(void)
{
    reset_state();
    dynamic_fail_at = 2;
    int first = syna_dev_enable_lowpwr_gesture((unsigned long long *)context_area, 0, 19) == -5 &&
                dynamic_calls == 2 && printk_calls == 1;
    if (!first)
        return 0;
    reset_state();
    dynamic_fail_at = 3;
    return syna_dev_enable_lowpwr_gesture((unsigned long long *)context_area, 0, 19) == -5 &&
           dynamic_calls == 3 && printk_calls == 2;
}

int main(void)
{
    if (!expect_inactive() || !expect_disable_success() ||
        !expect_enable_success() || !expect_dynamic_failure() ||
        !expect_config_failures()) {
        fprintf(stderr, "syna_dev_enable_lowpwr_gesture contract mismatch\n");
        return 1;
    }
    puts("PASS syna_dev_enable_lowpwr_gesture host tests (5 cases)");
    return 0;
}
