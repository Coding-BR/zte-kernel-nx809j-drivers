#include <stdint.h>
#include <stddef.h>
#include <stdio.h>
#include <string.h>

typedef int64_t __int64;
#define __fastcall

struct point_info_struct {
    uint8_t reserved_00[0x54];
    uint8_t field_84;
    uint8_t reserved_55[0x2b];
    void *input;
};

_Static_assert(sizeof(struct point_info_struct) == 0x88, "point size");
_Static_assert(offsetof(struct point_info_struct, field_84) == 0x54, "active offset");
_Static_assert(offsetof(struct point_info_struct, input) == 0x80, "input offset");

struct point_info_struct point_report_info[10];
__int64 tpd_cdev;
static uint8_t cdev[0xd00];
static unsigned int calls[8], call_count;
static unsigned int printk_id, sleep_min, sleep_max, sleep_state;
static uintptr_t mutex_address;
static void *event_input[2];
static unsigned int event_type[2], event_code[2], event_value[2], event_count;

int printk(const char *fmt, const char *name, unsigned int id)
{ (void)fmt; (void)name; calls[call_count++] = 1; printk_id = id; return 0; }
void mutex_lock(uintptr_t address)
{ calls[call_count++] = 2; mutex_address = address; }
void input_event(__int64 input, unsigned int type, unsigned int code, unsigned int value)
{ calls[call_count++] = 3; event_input[event_count] = (void *)(uintptr_t)input; event_type[event_count] = type; event_code[event_count] = code; event_value[event_count++] = value; }
void input_mt_report_slot_state(__int64 input, unsigned int tool, unsigned int active)
{ (void)input; (void)tool; (void)active; calls[call_count++] = 4; }
void mutex_unlock(uintptr_t address)
{ calls[call_count++] = 5; mutex_address = address; }
void usleep_range_state(unsigned int min, unsigned int max, unsigned int state)
{ calls[call_count++] = 6; sleep_min = min; sleep_max = max; sleep_state = state; }

#include "build/point_report_reset_under_test.c"

static void check(int ok, const char *name, unsigned int *bad)
{ printf("%s %s\n", ok ? "PASS" : "FAIL", name); if (!ok) (*bad)++; }
static void reset_fixture(void)
{ memset(point_report_info, 0, sizeof(point_report_info)); memset(cdev, 0, sizeof(cdev)); memset(calls, 0, sizeof(calls)); call_count = event_count = 0; printk_id = sleep_min = sleep_max = sleep_state = 0; mutex_address = 0; tpd_cdev = (__int64)(uintptr_t)cdev; }
static void active_path(unsigned int *bad)
{ void *input = (void *)(uintptr_t)0x1234; reset_fixture(); point_report_info[3].field_84 = 1; point_report_info[3].input = input; point_report_reset(3); check(point_report_info[3].field_84 == 0, "active_clears_flag", bad); check(call_count == 7, "active_call_count", bad); check(calls[0] == 1 && calls[1] == 2 && calls[2] == 3 && calls[3] == 4 && calls[4] == 3 && calls[5] == 5 && calls[6] == 6, "active_call_order", bad); check(printk_id == 3, "active_log_id", bad); check(mutex_address == (uintptr_t)cdev + 0xc90, "active_mutex_offset", bad); check(event_count == 2 && event_input[0] == input && event_input[1] == input, "active_input_pointer", bad); check(event_type[0] == 3 && event_code[0] == 47 && event_value[0] == 3, "active_slot_event", bad); check(event_type[1] == 0 && event_code[1] == 0 && event_value[1] == 0, "active_sync_event", bad); check(sleep_min == 1000 && sleep_max == 1100 && sleep_state == 2, "active_sleep", bad); }
static void inactive_path(unsigned int *bad)
{ reset_fixture(); point_report_reset(3); check(call_count == 0, "inactive_no_calls", bad); check(point_report_info[3].field_84 == 0, "inactive_flag_unchanged", bad); }
int main(void) { unsigned int bad = 0; active_path(&bad); inactive_path(&bad); printf("SUMMARY tests=11 failures=%u\n", bad); return bad ? 1 : 0; }
