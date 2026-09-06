#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef uint8_t u8;
typedef uint32_t u32;

static int sleep_result;
static int gesture_result;
static unsigned int sleep_calls;
static unsigned int gesture_calls;
static unsigned int observed_sleep_mode;
static unsigned int observed_gesture_mode;
static unsigned int observed_gesture_enable;
static unsigned int delay_ms;
static unsigned int printk_calls;

static int test_printk(const char *format, ...)
{
    (void)format;
    printk_calls++;
    return 0;
}

int syna_tcm_sleep(long tcm, unsigned int command, unsigned int mode)
{
    (void)tcm;
    (void)command;
    sleep_calls++;
    observed_sleep_mode = mode;
    return sleep_result;
}

int syna_dev_enable_lowpwr_gesture(long *device, unsigned int command,
                                   unsigned int mode)
{
    (void)device;
    (void)command;
    gesture_calls++;
    observed_gesture_mode = mode;
    observed_gesture_enable = 0;
    return gesture_result;
}

void msleep(unsigned int milliseconds)
{
    delay_ms = milliseconds;
}

#define printk test_printk
#include "../../../reconstructed/zte_tpd/syna_dev_enter_normal_sensing.c"
#undef printk

static unsigned char device_mem[0x600];
static unsigned char tcm_mem[0x300];
static unsigned char power_mem[0x200];

static void put_u32(unsigned char *base, size_t offset, uint32_t value)
{
    memcpy(base + offset, &value, sizeof(value));
}

static void reset_state(uint32_t default_sleep_mode, uint32_t power_active,
                        uint8_t gesture_power, uint8_t low_power_gesture)
{
    long tcm = (long)(uintptr_t)tcm_mem;
    memset(device_mem, 0, sizeof(device_mem));
    memset(tcm_mem, 0, sizeof(tcm_mem));
    memset(power_mem, 0, sizeof(power_mem));
    memcpy(device_mem, &tcm, sizeof(tcm));
    {
        long power = (long)(uintptr_t)power_mem;
        memcpy(device_mem + 0x270, &power, sizeof(power));
    }
    put_u32(tcm_mem, 0x20c, default_sleep_mode);
    put_u32(power_mem, 0xb8, power_active);
    power_mem[0xbc] = gesture_power;
    device_mem[0x581] = low_power_gesture;
    sleep_result = 0;
    gesture_result = 0;
    sleep_calls = gesture_calls = 0;
    observed_sleep_mode = observed_gesture_mode = 0;
    observed_gesture_enable = 0;
    delay_ms = printk_calls = 0;
}

static int expect(int condition, const char *name, unsigned int *tests,
                  unsigned int *failures)
{
    (*tests)++;
    printf("%s %s\n", condition ? "PASS" : "FAIL", name);
    if (!condition)
        (*failures)++;
    return condition;
}

int main(void)
{
    unsigned int tests = 0;
    unsigned int failures = 0;
    int result;

    reset_state(7, 0, 0, 0);
    result = syna_dev_enter_normal_sensing((long *)device_mem);
    expect(result == 0 && observed_sleep_mode == 7 && sleep_calls == 1 &&
               gesture_calls == 0 && delay_ms == 0,
           "default_sleep_mode_is_used", &tests, &failures);

    reset_state(7, 1, 1, 0);
    result = syna_dev_enter_normal_sensing((long *)device_mem);
    expect(result == 0 && observed_sleep_mode == 0 && sleep_calls == 1,
           "active_gesture_power_forces_zero_mode", &tests, &failures);

    reset_state(7, 1, 0, 0);
    result = syna_dev_enter_normal_sensing((long *)device_mem);
    expect(result == 0 && observed_sleep_mode == 7 && gesture_calls == 0,
           "gesture_power_bit_zero_keeps_default_mode", &tests, &failures);

    reset_state(7, 0, 0, 0);
    sleep_result = -5;
    result = syna_dev_enter_normal_sensing((long *)device_mem);
    expect(result == -5 && gesture_calls == 0 && delay_ms == 0 &&
               printk_calls == 1,
           "sleep_failure_returns_before_gesture", &tests, &failures);

    reset_state(7, 0, 0, 1);
    result = syna_dev_enter_normal_sensing((long *)device_mem);
    expect(result == 0 && gesture_calls == 1 && observed_gesture_mode == 7 &&
               delay_ms == 100,
           "low_power_gesture_success_delays", &tests, &failures);

    reset_state(7, 1, 1, 1);
    result = syna_dev_enter_normal_sensing((long *)device_mem);
    expect(result == 0 && gesture_calls == 1 && observed_gesture_mode == 0,
           "low_power_gesture_receives_selected_mode", &tests, &failures);

    reset_state(7, 0, 0, 1);
    gesture_result = -9;
    result = syna_dev_enter_normal_sensing((long *)device_mem);
    expect(result == -9 && delay_ms == 0 && gesture_calls == 1 &&
               printk_calls == 1,
           "gesture_failure_returns_without_delay", &tests, &failures);

    reset_state(7, 0, 0, 2);
    result = syna_dev_enter_normal_sensing((long *)device_mem);
    expect(result == 0 && gesture_calls == 0 && delay_ms == 0,
           "low_power_gesture_requires_exact_one", &tests, &failures);

    printf("SUMMARY tests=%u failures=%u\n", tests, failures);
    return failures == 0 ? 0 : 1;
}
