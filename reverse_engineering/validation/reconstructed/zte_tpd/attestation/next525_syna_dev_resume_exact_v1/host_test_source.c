#include <stdint.h>
#include <stdio.h>
#include <string.h>

struct device { unsigned char bytes[256]; };
struct syna_tcm { unsigned char bytes[1600]; };
struct tcm_dev { unsigned char bytes[640]; };

static struct device test_device;
static unsigned char test_wrapper[1600];
static unsigned char test_tcm[1600];
static unsigned char test_transport[512];
static unsigned char test_status_page[4096];
static unsigned int dword_314A0;
static uint16_t word_314C0;
static uint8_t byte_314C2;
static int large_area_uevent_count;
static int syna_usb_detect_flag;
static int reset_result;
static int event_result;
static unsigned char event_code;
static int dynamic_config_result;
static int charger_result;
static int play_game_result;
static int report_rate_result;
static int sensibility_result;
static int follow_hand_result;
static int stability_result;
static unsigned int event_calls;
static unsigned int reset_calls;
static unsigned int app_fw_calls;
static unsigned int dynamic_calls;
static unsigned int charger_calls;
static unsigned int rotation_calls;
static unsigned int play_game_calls;
static unsigned int report_rate_calls;
static unsigned int sensibility_calls;
static unsigned int follow_hand_calls;
static unsigned int stability_calls;
static unsigned int callback_calls;
static unsigned int printk_calls;

static int test_event_data(intptr_t dev, unsigned char *code, int unused)
{
    (void)dev;
    (void)unused;
    event_calls++;
    *code = event_code;
    return event_result;
}

static int test_reset(void *dev, unsigned int delay_ms)
{
    (void)dev;
    (void)delay_ms;
    reset_calls++;
    return reset_result;
}

static int test_app_fw(void *tcm)
{
    (void)tcm;
    app_fw_calls++;
    return 0;
}

static int test_dynamic_config(intptr_t dev, unsigned char id, unsigned char value,
                               unsigned int delay_ms)
{
    (void)dev; (void)id; (void)value; (void)delay_ms;
    dynamic_calls++;
    return dynamic_config_result;
}

static int test_charger_mode(void *tcm, unsigned int enable, unsigned int delay_ms)
{
    (void)tcm; (void)enable; (void)delay_ms;
    charger_calls++;
    return charger_result;
}

static int test_enter_normal_sensing(void *tcm)
{
    (void)tcm;
    return 0;
}

static void test_transport_callback(unsigned long long transport)
{
    (void)transport;
    callback_calls++;
}

static void test_report_uevent(int value)
{
    (void)value;
}

static unsigned long test_wait_for_completion_timeout(void *completion,
                                                      unsigned long timeout)
{
    (void)completion; (void)timeout;
    return 1;
}

static int test_set_play_game(void *tcm, unsigned int value, unsigned int delay_ms)
{
    (void)tcm; (void)value; (void)delay_ms;
    play_game_calls++;
    return play_game_result;
}

static int test_set_report_rate(void *tcm, unsigned int value, unsigned int delay_ms)
{
    (void)tcm; (void)value; (void)delay_ms;
    report_rate_calls++;
    return report_rate_result;
}

static int test_set_sensibility(void *tcm, unsigned int value, unsigned int delay_ms)
{
    (void)tcm; (void)value; (void)delay_ms;
    sensibility_calls++;
    return sensibility_result;
}

static int test_set_follow_hand(void *tcm, unsigned int value, unsigned int delay_ms)
{
    (void)tcm; (void)value; (void)delay_ms;
    follow_hand_calls++;
    return follow_hand_result;
}

static int test_set_stability(void *tcm, unsigned int value, unsigned int delay_ms)
{
    (void)tcm; (void)value; (void)delay_ms;
    stability_calls++;
    return stability_result;
}

static void test_set_rotation(void *tcm, unsigned int value, unsigned int delay_ms)
{
    (void)tcm; (void)value; (void)delay_ms;
    rotation_calls++;
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
#define __break(value) ((void)(value))
#define SP_EL0 0
#define _ReadStatusReg(value) ((intptr_t)(test_status_page + 2048))
#define LOBYTE(value) (*((unsigned char *)&(value)))
#define HIBYTE(value) (*(((unsigned char *)&(value)) + 1))
#define printk test_printk
#define wait_for_completion_timeout test_wait_for_completion_timeout
#define report_ufp_uevent test_report_uevent
#define syna_tcm_get_event_data test_event_data
#define syna_tcm_reset test_reset
#define syna_dev_set_up_app_fw test_app_fw
#define syna_tcm_set_dynamic_config test_dynamic_config
#define syna_dev_set_charger_mode test_charger_mode
#define syna_dev_enter_normal_sensing test_enter_normal_sensing
#define syna_dev_set_play_game test_set_play_game
#define syna_dev_set_tp_report_rate test_set_report_rate
#define syna_dev_set_sensibility_level test_set_sensibility
#define syna_dev_set_follow_hand_level test_set_follow_hand
#define syna_dev_set_stability_level test_set_stability
#define syna_dev_set_display_rotation test_set_rotation
#define msleep(value) ((void)(value))
#define unk_32F51 "ufp_active"
#define unk_37652 "ufp_wait"
#define unk_3A355 "ufp_timeout"
#define unk_31973 "resume"
#define unk_360CF "normal_sensing"
#define unk_33C55 "resume_transport"
#define unk_329B7 "event_failure"
#define unk_31EEA "app_fw"
#define unk_37007 "app_fw_failure"
#define unk_39D7B "resume_ready"
#define unk_36A84 "screen_fp"
#define unk_3B058 "dynamic_failure"
#define unk_354E1 "dynamic_failure_resume"
#define unk_3D102 "charger_failure"
#define unk_34708 "play_game_failure"
#define unk_3B149 "settings"
#define unk_3B7E6 "state_a"
#define unk_37D84 "state_b"
#define unk_335AE "state_c"
#define unk_3937A "state_d"
#define unk_3A94B "reset_failure"
#define unk_3BF10 "normal_sensing_failure"
#define syna_usb_detect_flag syna_usb_detect_flag
#define large_area_uevent_count large_area_uevent_count
#include "../../../reconstructed/zte_tpd/syna_dev_resume.c"
#undef large_area_uevent_count
#undef syna_usb_detect_flag
#undef unk_3A94B
#undef unk_3BF10
#undef unk_3937A
#undef unk_335AE
#undef unk_37D84
#undef unk_3B7E6
#undef unk_3B149
#undef unk_34708
#undef unk_3D102
#undef unk_354E1
#undef unk_3B058
#undef unk_36A84
#undef unk_39D7B
#undef unk_37007
#undef unk_31EEA
#undef unk_329B7
#undef unk_33C55
#undef unk_360CF
#undef unk_31973
#undef unk_3A355
#undef unk_37652
#undef unk_32F51
#undef msleep
#undef syna_dev_set_display_rotation
#undef syna_dev_set_stability_level
#undef syna_dev_set_follow_hand_level
#undef syna_dev_set_sensibility_level
#undef syna_dev_set_tp_report_rate
#undef syna_dev_set_play_game
#undef syna_dev_enter_normal_sensing
#undef syna_dev_set_charger_mode
#undef syna_tcm_set_dynamic_config
#undef syna_dev_set_up_app_fw
#undef syna_tcm_reset
#undef syna_tcm_get_event_data
#undef report_ufp_uevent
#undef wait_for_completion_timeout
#undef printk
#undef HIBYTE
#undef LOBYTE
#undef _ReadStatusReg
#undef SP_EL0
#undef _BYTE
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
    reset_result = 0;
    event_result = 0;
    event_code = 16;
    dynamic_config_result = 0;
    charger_result = 0;
    play_game_result = 0;
    report_rate_result = 0;
    sensibility_result = 0;
    follow_hand_result = 0;
    stability_result = 0;
    syna_usb_detect_flag = 0;
    word_314C0 = 0;
    byte_314C2 = 0;
    large_area_uevent_count = 99;
    event_calls = reset_calls = app_fw_calls = dynamic_calls = 0;
    charger_calls = rotation_calls = play_game_calls = 0;
    report_rate_calls = sensibility_calls = follow_hand_calls = 0;
    stability_calls = callback_calls = printk_calls = 0;
    store_ptr(test_device.bytes, 152, test_wrapper);
    store_ptr(test_wrapper, 0, test_tcm);
    store_ptr(test_wrapper, 624, test_transport);
    store_u32(test_tcm, 524, 4096);
    test_tcm[1409] = 0;
    store_u32(test_wrapper, 1404, 0);
    store_u32(test_wrapper, 1492, 0);
    store_u32(test_wrapper, 1500, 0);
    store_u32(test_wrapper, 1528, 1);
    store_u32(test_wrapper, 1532, 2);
    store_u32(test_wrapper, 1536, 3);
    store_u32(test_wrapper, 1540, 4);
    store_u32(test_wrapper, 1544, 5);
    store_u32(test_wrapper, 1524, 6);
}

static int test_missing_wrapper(void)
{
    reset_state();
    store_ptr(test_device.bytes, 152, 0);
    return syna_dev_resume((struct device *)&test_device) == -22 &&
           reset_calls == 0 && app_fw_calls == 0;
}

static int test_already_resumed(void)
{
    reset_state();
    store_u32(test_wrapper, 1404, 1);
    return syna_dev_resume((struct device *)&test_device) == 0 &&
           reset_calls == 0 && app_fw_calls == 0 && dynamic_calls == 0;
}

static int test_reset_path(void)
{
    reset_state();
    return syna_dev_resume((struct device *)&test_device) == 0 &&
           reset_calls == 1 && app_fw_calls == 1 && dynamic_calls == 1 &&
           rotation_calls == 1 && report_rate_calls == 1 &&
           large_area_uevent_count == 0 &&
           *(unsigned int *)(test_wrapper + 1404) == 1 && test_wrapper[1408] == 0;
}

static int test_event_success_path(void)
{
    reset_state();
    store_ptr(test_transport, 392, (void *)test_transport_callback);
    event_code = 16;
    return syna_dev_resume((struct device *)&test_device) == 0 &&
           callback_calls == 1 && event_calls == 1 && reset_calls == 0 &&
           app_fw_calls == 1;
}

static int test_event_failure_path(void)
{
    reset_state();
    store_ptr(test_transport, 392, (void *)test_transport_callback);
    event_result = -5;
    return syna_dev_resume((struct device *)&test_device) == 0 &&
           callback_calls == 1 && event_calls == 1 && app_fw_calls == 0;
}

static int test_game_and_charger_settings(void)
{
    reset_state();
    syna_usb_detect_flag = 1;
    store_u32(test_wrapper, 1500, 1);
    return syna_dev_resume((struct device *)&test_device) == 0 &&
           charger_calls == 1 && play_game_calls == 1 &&
           sensibility_calls == 1 && follow_hand_calls == 1 &&
           stability_calls == 1 && report_rate_calls == 1;
}

int main(void)
{
    int missing = test_missing_wrapper();
    int resumed = test_already_resumed();
    int reset = test_reset_path();
    int event = test_event_success_path();
    int event_failure = test_event_failure_path();
    int settings = test_game_and_charger_settings();
    if (!missing || !resumed || !reset || !event || !event_failure || !settings) {
        fprintf(stderr, "cases missing=%d resumed=%d reset=%d event=%d event_failure=%d settings=%d\n",
                missing, resumed, reset, event, event_failure, settings);
        return fprintf(stderr, "syna_dev_resume contract mismatch\n"), 1;
    }
    puts("PASS syna_dev_resume host tests (6 cases)");
    return 0;
}
