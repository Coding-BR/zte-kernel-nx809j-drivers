#include <stdint.h>
#include <stdio.h>
#include <string.h>

struct workqueue_struct;
struct delayed_work;

long long tpd_cdev;

static unsigned int observed_delay_ms;
static int observed_cpu;
static struct workqueue_struct *observed_workqueue;
static struct delayed_work *observed_delayed_work;
static unsigned long observed_jiffies;

static unsigned long test_msecs_to_jiffies(unsigned int delay_ms)
{
    observed_delay_ms = delay_ms;
    return 0x6b1e;
}

static int test_mod_delayed_work_on(int cpu, struct workqueue_struct *workqueue,
                                    struct delayed_work *delayed_work,
                                    unsigned long delay)
{
    observed_cpu = cpu;
    observed_workqueue = workqueue;
    observed_delayed_work = delayed_work;
    observed_jiffies = delay;
    return 1;
}

#define msecs_to_jiffies(delay_ms) test_msecs_to_jiffies(delay_ms)
#define mod_delayed_work_on(cpu, workqueue, delayed_work, delay) \
    test_mod_delayed_work_on(cpu, workqueue, delayed_work, delay)
#define _DEFS_H
#include "../../../reconstructed/zte_tpd/ufp_report_lcd_state_delayed_work.c"
#undef _DEFS_H
#undef mod_delayed_work_on
#undef msecs_to_jiffies

static uint8_t device_storage[0x9e8] __attribute__((aligned(8)));

static int test_delayed_work_schedule_contract(void)
{
    struct workqueue_struct *workqueue =
        (struct workqueue_struct *)(uintptr_t)0x12345000;

    memset(device_storage, 0, sizeof(device_storage));
    tpd_cdev = (long long)(uintptr_t)device_storage;
    memcpy(device_storage + 0x4b0, &workqueue, sizeof(workqueue));
    observed_delay_ms = 0;
    observed_cpu = -1;
    observed_workqueue = NULL;
    observed_delayed_work = NULL;
    observed_jiffies = 0;

    ufp_report_lcd_state_delayed_work(375);

    if (observed_delay_ms != 375 || observed_cpu != 32 ||
        observed_workqueue != workqueue ||
        observed_delayed_work != (struct delayed_work *)(device_storage + 0x9e0) ||
        observed_jiffies != 0x6b1e)
        return fprintf(stderr, "delayed work schedule contract mismatch\n"), 1;
    return 0;
}

int main(void)
{
    if (test_delayed_work_schedule_contract())
        return 1;
    puts("PASS ufp_report_lcd_state_delayed_work host tests (1 case)");
    return 0;
}
