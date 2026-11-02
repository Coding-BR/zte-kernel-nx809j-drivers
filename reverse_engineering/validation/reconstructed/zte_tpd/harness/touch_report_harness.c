#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef int64_t __int64;

#define __int16 short
#define __int8 char

#define __fastcall
#define ARRAY_SIZE(array) (sizeof(array) / sizeof((array)[0]))

struct event_record {
    uint16_t type;
    uint16_t code;
    int value;
};

static uint8_t cdev[0xd00];
static struct event_record events[16];
static unsigned int event_count;
static unsigned int slot_state_count;
static uintptr_t mutex_addresses[4];
static unsigned int mutex_count;
__int64 tpd_cdev;

static void fail(const char *name)
{
    printf("FAIL %s\n", name);
}

static void pass(const char *name)
{
    printf("PASS %s\n", name);
}

static void check(int condition, const char *name, unsigned int *failures)
{
    if (condition)
        pass(name);
    else {
        fail(name);
        (*failures)++;
    }
}

void mutex_lock(uintptr_t address)
{
    mutex_addresses[mutex_count++] = address;
}

void mutex_unlock(uintptr_t address)
{
    mutex_addresses[mutex_count++] = address;
}

void input_event(__int64 input, unsigned int type, unsigned int code, int value)
{
    (void)input;
    events[event_count++] = (struct event_record){ type, code, value };
}

void input_mt_report_slot_state(__int64 input, unsigned int tool_type, int active)
{
    (void)input;
    (void)tool_type;
    (void)active;
    slot_state_count++;
}

#include "../../../../../kernel_development/drivers/reconstructed/zte_tpd/tpd_touch_report.c"

static void reset_fixture(void)
{
    memset(cdev, 0, sizeof(cdev));
    memset(events, 0, sizeof(events));
    memset(mutex_addresses, 0, sizeof(mutex_addresses));
    event_count = 0;
    slot_state_count = 0;
    mutex_count = 0;
    tpd_cdev = (__int64)(uintptr_t)cdev;
}

static void verify_full_event_path(unsigned int *failures)
{
    reset_fixture();
    tpd_touch_report(0x1234, 0x1122, 0x3344, 7, 0x55, 0x66);

    check(mutex_count == 2, "full_mutex_count", failures);
    check(mutex_addresses[0] == (uintptr_t)cdev + 0xc90, "full_mutex_lock_offset", failures);
    check(mutex_addresses[1] == (uintptr_t)cdev + 0xc90, "full_mutex_unlock_offset", failures);
    check(slot_state_count == 1, "full_slot_state", failures);
    check(event_count == 6, "full_event_count", failures);
    check(events[0].type == 3 && events[0].code == 47 && events[0].value == 7,
          "full_slot_event", failures);
    check(events[1].type == 1 && events[1].code == 330 && events[1].value == 1,
          "full_touch_key_event", failures);
    check(events[2].type == 3 && events[2].code == 53 && events[2].value == 0x1122,
          "full_x_event", failures);
    check(events[3].type == 3 && events[3].code == 54 && events[3].value == 0x3344,
          "full_y_event", failures);
    check(events[4].type == 3 && events[4].code == 58 && events[4].value == 0x66,
          "full_pressure_event", failures);
    check(events[5].type == 3 && events[5].code == 48 && events[5].value == 0x55,
          "full_touch_major_event", failures);
}

static void verify_optional_event_path(unsigned int *failures)
{
    reset_fixture();
    tpd_touch_report(0x5678, 1, 2, 3, 0, 0);

    check(mutex_count == 2, "optional_mutex_count", failures);
    check(slot_state_count == 1, "optional_slot_state", failures);
    check(event_count == 4, "optional_event_count", failures);
    check(events[0].code == 47 && events[0].value == 3, "optional_slot_event", failures);
    check(events[3].code == 54 && events[3].value == 2, "optional_y_event", failures);
}

int main(void)
{
    unsigned int failures = 0;

    verify_full_event_path(&failures);
    verify_optional_event_path(&failures);
    printf("SUMMARY tests=16 failures=%u\n", failures);
    return failures ? 1 : 0;
}
