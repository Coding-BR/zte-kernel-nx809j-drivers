#include <stdint.h>
#include <stdio.h>

struct delayed_work;

long long tpd_cdev;

static unsigned int cancel_calls;
static struct delayed_work *observed_delayed_work;

static int test_cancel_delayed_work_sync(struct delayed_work *delayed_work)
{
    cancel_calls++;
    observed_delayed_work = delayed_work;
    return 1;
}

#define cancel_delayed_work_sync(work) \
    test_cancel_delayed_work_sync((struct delayed_work *)(uintptr_t)(work))
#define _DEFS_H
#include "../../../reconstructed/zte_tpd/cancel_report_lcd_state_delayed_work.c"
#undef _DEFS_H
#undef cancel_delayed_work_sync

static uint8_t device_storage[0x9e8] __attribute__((aligned(8)));

static int test_delayed_work_cancel_contract(void)
{
    tpd_cdev = (long long)(uintptr_t)device_storage;
    cancel_calls = 0;
    observed_delayed_work = NULL;

    cancel_report_lcd_state_delayed_work();

    if (cancel_calls != 1 ||
        observed_delayed_work != (struct delayed_work *)(device_storage + 0x9e0))
        return fprintf(stderr, "delayed work cancel contract mismatch\n"), 1;
    return 0;
}

int main(void)
{
    if (test_delayed_work_cancel_contract())
        return 1;
    puts("PASS cancel_report_lcd_state_delayed_work host tests (1 case)");
    return 0;
}
