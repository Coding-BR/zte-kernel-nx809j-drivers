#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

long long tpd_cdev;

static const char *log_format;
static const char *log_name;
static void *cancelled_work[2];
static void *cancelled_delayed_work;
static unsigned int work_cancel_count;
static unsigned int delayed_cancel_count;

static int test_printk(const char *format, ...)
{
    va_list args;

    log_format = format;
    va_start(args, format);
    log_name = va_arg(args, const char *);
    va_end(args);
    return 0;
}

static void test_cancel_work_sync(void *work)
{
    if (work_cancel_count < 2)
        cancelled_work[work_cancel_count] = work;
    work_cancel_count++;
}

static void test_cancel_delayed_work_sync(void *work)
{
    cancelled_delayed_work = work;
    delayed_cancel_count++;
}

#define printk test_printk
#define cancel_work_sync(work) test_cancel_work_sync((void *)(uintptr_t)(work))
#define cancel_delayed_work_sync(work) \
    test_cancel_delayed_work_sync((void *)(uintptr_t)(work))
#define _DEFS_H
#include "../../../reconstructed/zte_tpd/tpd_resume_work_deinit.c"
#undef _DEFS_H
#undef cancel_delayed_work_sync
#undef cancel_work_sync
#undef printk

static uint8_t device_storage[0x9e8] __attribute__((aligned(8)));

static void reset_state(void)
{
    memset(device_storage, 0, sizeof(device_storage));
    tpd_cdev = (long long)(uintptr_t)device_storage;
    log_format = NULL;
    log_name = NULL;
    memset(cancelled_work, 0, sizeof(cancelled_work));
    cancelled_delayed_work = NULL;
    work_cancel_count = 0;
    delayed_cancel_count = 0;
}

static int test_log_and_cancel_order(void)
{
    reset_state();
    tpd_resume_work_deinit();
    if (strcmp(log_format, "\0015tpd: %s enter") ||
        strcmp(log_name, "tpd_resume_work_deinit"))
        return fprintf(stderr, "printk contract mismatch\n"), 1;
    if (work_cancel_count != 2 || delayed_cancel_count != 1 ||
        cancelled_work[0] != device_storage + 0x9c0 ||
        cancelled_work[1] != device_storage + 0x9a0 ||
        cancelled_delayed_work != device_storage + 0x9e0)
        return fprintf(stderr, "work cancellation order mismatch\n"), 1;
    return 0;
}

int main(void)
{
    if (test_log_and_cancel_order())
        return 1;
    puts("PASS tpd_resume_work_deinit host tests (1 case)");
    return 0;
}
