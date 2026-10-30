#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define __int64 long long
#define _DWORD unsigned int
#define _QWORD unsigned long long
#define __fastcall

struct workqueue_struct;
struct work_struct;

static unsigned int printk_calls;
static unsigned int queue_calls;
static int queue_cpu;
static struct workqueue_struct *queue_wq;
static struct work_struct *queue_work;
static char unk_38D56[8];
static char unk_3BEBC[8];
static char unk_32499[8];

int printk(const void *format, ...)
{
    (void)format;
    printk_calls++;
    return 0;
}

int queue_work_on(int cpu, struct workqueue_struct *wq,
                  struct work_struct *work)
{
    queue_calls++;
    queue_cpu = cpu;
    queue_wq = wq;
    queue_work = work;
    return 1;
}

#include "../../../../../kernel_development/drivers/reconstructed/zte_tpd/syna_dev_process_unexpected_reset.c"

static void check(int condition, const char *name, unsigned int *tests,
                  unsigned int *failures)
{
    (*tests)++;
    printf("%s %s\n", condition ? "PASS" : "FAIL", name);
    if (!condition)
        (*failures)++;
}

static void reset_mocks(void)
{
    printk_calls = 0;
    queue_calls = 0;
    queue_cpu = -1;
    queue_wq = NULL;
    queue_work = NULL;
}

static void put_u32(unsigned char *context, size_t offset, unsigned int value)
{
    memcpy(context + offset, &value, sizeof(value));
}

static void put_ptr(unsigned char *context, size_t offset, void *value)
{
    uintptr_t raw = (uintptr_t)value;
    memcpy(context + offset, &raw, sizeof(raw));
}

int main(void)
{
    unsigned char context[0x600];
    struct workqueue_struct *wq = (struct workqueue_struct *)(uintptr_t)0x1111;
    unsigned int tests = 0;
    unsigned int failures = 0;

    memset(context, 0, sizeof(context));
    reset_mocks();
    check(syna_dev_process_unexpected_reset(0, NULL, 0, NULL) == -22,
          "null_context_returns_einval", &tests, &failures);
    check(printk_calls == 1 && queue_calls == 0,
          "null_context_logs_without_queue", &tests, &failures);

    memset(context, 0, sizeof(context));
    put_u32(context, 1404, 0);
    reset_mocks();
    check(syna_dev_process_unexpected_reset(7, (const unsigned char *)context,
                                            99, context) == 0,
          "inactive_mode_returns_zero", &tests, &failures);
    check(printk_calls == 0 && queue_calls == 0,
          "inactive_mode_has_no_side_effects", &tests, &failures);

    memset(context, 0, sizeof(context));
    put_u32(context, 1404, 1);
    reset_mocks();
    check(syna_dev_process_unexpected_reset(0, NULL, 0, context) == -22,
          "missing_workqueue_returns_einval", &tests, &failures);
    check(printk_calls == 2 && queue_calls == 0,
          "missing_workqueue_logs_event_and_error", &tests, &failures);

    memset(context, 0, sizeof(context));
    put_u32(context, 1404, 1);
    put_ptr(context, 1352, wq);
    reset_mocks();
    check(syna_dev_process_unexpected_reset(0, NULL, 0, context) == 0,
          "first_reset_returns_zero", &tests, &failures);
    check(*(unsigned int *)(context + 1312) == 1 && queue_calls == 1 &&
          queue_cpu == 32 && queue_wq == wq &&
          queue_work == (struct work_struct *)(context + 1320),
          "first_reset_sets_flag_and_queues_on_cpu_32", &tests, &failures);

    reset_mocks();
    check(syna_dev_process_unexpected_reset(0, NULL, 0, context) == 0,
          "duplicate_reset_returns_zero", &tests, &failures);
    check(*(unsigned int *)(context + 1312) == 1 && queue_calls == 0 &&
          printk_calls == 1,
          "duplicate_reset_is_not_requeued", &tests, &failures);

    printf("SUMMARY tests=%u failures=%u\n", tests, failures);
    return failures == 0 ? 0 : 1;
}
