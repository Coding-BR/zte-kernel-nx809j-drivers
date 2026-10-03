#include <stdint.h>
#include <stdio.h>
#include <string.h>

struct device { unsigned char bytes[256]; };
struct syna_tcm { unsigned char bytes[1600]; };

static struct device test_device;
static unsigned char test_wrapper[1600];
static unsigned char test_tcm[1600];
static unsigned char test_transport[512];
static int gesture_result;
static int sleep_result;
static unsigned int gesture_calls;
static unsigned int sleep_calls;
static unsigned int free_input_calls;
static unsigned int clear_processing_calls;
static unsigned int callback_calls;
static unsigned int printk_calls;

static int test_enable_lowpwr_gesture(intptr_t tcm, unsigned char enable,
                                      unsigned int delay_ms)
{
    (void)tcm; (void)enable; (void)delay_ms;
    gesture_calls++;
    return gesture_result;
}

static int test_sleep(intptr_t tcm, unsigned char enable, unsigned int delay_ms)
{
    (void)tcm; (void)enable; (void)delay_ms;
    sleep_calls++;
    return sleep_result;
}

static void test_free_input_events(struct syna_tcm *tcm)
{
    (void)tcm;
    free_input_calls++;
}

static void test_clear_command_processing(intptr_t tcm)
{
    (void)tcm;
    clear_processing_calls++;
}

static void test_transport_callback(intptr_t transport,
                                    unsigned long long enable)
{
    (void)transport; (void)enable;
    callback_calls++;
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

#define __int64 long long
#undef __int64
#define __int64 intptr_t
#define __fastcall
#define __int8 char
#define _QWORD unsigned long long
#define _DWORD unsigned int
#define _BYTE unsigned char
#define _BOOL8 int
#define __break(value) ((void)(value))
#define printk test_printk
#define syna_dev_enable_lowpwr_gesture test_enable_lowpwr_gesture
#define syna_tcm_sleep test_sleep
#define syna_dev_free_input_events test_free_input_events
#define syna_tcm_clear_command_processing test_clear_command_processing
#define msleep(value) ((void)(value))
#define unk_3BF3F "suspend"
#define unk_347BF "gesture_flag"
#define unk_3D163 "suspend_failure"
#define unk_37671 "gesture_failure"
#define unk_376A7 "sleep_failure"
#define unk_360F0 "suspended"
#include "../../../reconstructed/zte_tpd/syna_dev_suspend.c"
#undef unk_360F0
#undef unk_376A7
#undef unk_37671
#undef unk_3D163
#undef unk_347BF
#undef unk_3BF3F
#undef msleep
#undef syna_tcm_clear_command_processing
#undef syna_dev_free_input_events
#undef syna_tcm_sleep
#undef syna_dev_enable_lowpwr_gesture
#undef printk
#undef __break
#undef _BYTE
#undef _BOOL8
#undef _DWORD
#undef _QWORD
#undef __fastcall
#undef __int8
#undef __int64

static void reset_state(void)
{
    memset(&test_device, 0, sizeof(test_device));
    memset(test_wrapper, 0, sizeof(test_wrapper));
    memset(test_tcm, 0, sizeof(test_tcm));
    memset(test_transport, 0, sizeof(test_transport));
    gesture_result = 0;
    sleep_result = 0;
    gesture_calls = sleep_calls = free_input_calls = 0;
    clear_processing_calls = callback_calls = printk_calls = 0;
    store_ptr(test_device.bytes, 152, test_wrapper);
    store_ptr(test_wrapper, 0, test_tcm);
    store_ptr(test_wrapper, 624, test_transport);
    store_u32(test_tcm, 524, 4096);
    store_u32(test_wrapper, 1404, 1);
    store_u32(test_wrapper, 1456, 0);
    store_u32(test_wrapper, 1476, 0);
    test_wrapper[1408] = 0;
    store_ptr(test_transport, 64, (void *)test_transport_callback);
    store_u32(test_transport, 184, 17);
    test_transport[188] = 0;
}

static int test_inactive_state(void)
{
    reset_state();
    store_u32(test_wrapper, 1404, 0);
    return syna_dev_suspend((struct device *)&test_device) == 0 &&
           gesture_calls == 0 && sleep_calls == 0 && free_input_calls == 0;
}

static int test_low_power_gesture(void)
{
    reset_state();
    store_u32(test_wrapper, 1456, 1);
    return syna_dev_suspend((struct device *)&test_device) == 0 &&
           gesture_calls == 1 && sleep_calls == 0 && free_input_calls == 1 &&
           clear_processing_calls == 1 && callback_calls == 0 &&
           *(unsigned int *)(test_wrapper + 1404) == 2 && test_wrapper[1409] == 1;
}

static int test_normal_sleep(void)
{
    reset_state();
    return syna_dev_suspend((struct device *)&test_device) == 0 &&
           gesture_calls == 0 && sleep_calls == 1 && free_input_calls == 1 &&
           clear_processing_calls == 1 && callback_calls == 1 &&
           *(unsigned int *)(test_wrapper + 1404) == 2 && test_wrapper[1409] == 0;
}

static int test_screen_flag_skips_sleep(void)
{
    reset_state();
    test_wrapper[1408] = 1;
    return syna_dev_suspend((struct device *)&test_device) == 0 &&
           sleep_calls == 0 && free_input_calls == 1 && callback_calls == 1 &&
           *(unsigned int *)(test_wrapper + 1404) == 2;
}

static int test_gesture_failure(void)
{
    reset_state();
    store_u32(test_wrapper, 1456, 1);
    gesture_result = -5;
    return syna_dev_suspend((struct device *)&test_device) == -5 &&
           gesture_calls == 1 && sleep_calls == 0 && free_input_calls == 0 &&
           *(unsigned int *)(test_wrapper + 1404) == 1;
}

static int test_sleep_failure(void)
{
    reset_state();
    sleep_result = -5;
    return syna_dev_suspend((struct device *)&test_device) == -5 &&
           gesture_calls == 0 && sleep_calls == 1 && free_input_calls == 0 &&
           *(unsigned int *)(test_wrapper + 1404) == 1;
}

int main(void)
{
    int inactive = test_inactive_state();
    int gesture = test_low_power_gesture();
    int normal = test_normal_sleep();
    int screen = test_screen_flag_skips_sleep();
    int gesture_failure = test_gesture_failure();
    int sleep_failure = test_sleep_failure();
    if (!inactive || !gesture || !normal || !screen ||
        !gesture_failure || !sleep_failure) {
        fprintf(stderr, "cases inactive=%d gesture=%d normal=%d screen=%d gesture_failure=%d sleep_failure=%d\n",
                inactive, gesture, normal, screen, gesture_failure, sleep_failure);
        return fprintf(stderr, "syna_dev_suspend contract mismatch\n"), 1;
    }
    puts("PASS syna_dev_suspend host tests (6 cases)");
    return 0;
}
