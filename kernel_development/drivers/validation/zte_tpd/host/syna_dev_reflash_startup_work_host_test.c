#include <stdbool.h>
#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define __int64 long long
#define _QWORD unsigned long long
#define _DWORD unsigned int
#define _BYTE unsigned char
#define __fastcall

struct work_struct;
struct syna_tcm;

static unsigned int wait_calls;
static void *wait_completion;
static unsigned long wait_timeout;
static unsigned int stay_calls;
static unsigned int relax_calls;
static void *stay_device;
static void *relax_device;
static int reflash_result;
static int app_fw_result;
static int input_device_result;
static unsigned int reflash_calls;
static unsigned int app_fw_calls;
static unsigned int input_device_calls;
static unsigned int register_fw_calls;
static unsigned int screen_calls;
static unsigned int report_rate_calls;
static struct syna_tcm *seen_tcm;
static unsigned int seen_screen_mode;
static unsigned int seen_report_rate;
static unsigned int printk_calls;
static char unk_36640[8] __attribute__((unused));
static char unk_3B114[8] __attribute__((unused));
static char unk_375F8[8] __attribute__((unused));
static char unk_3C4B0[8] __attribute__((unused));
static char unk_3BEE4[8] __attribute__((unused));
static char unk_3A2DA[8] __attribute__((unused));

unsigned long wait_for_completion_timeout(long long completion,
                                          unsigned long timeout)
{
    wait_calls++;
    wait_completion = (void *)(uintptr_t)completion;
    wait_timeout = timeout;
    return 1;
}

void pm_stay_awake(unsigned long long device)
{
    stay_calls++;
    stay_device = (void *)(uintptr_t)device;
}

void pm_relax(unsigned long long device)
{
    relax_calls++;
    relax_device = (void *)(uintptr_t)device;
}

int syna_dev_do_reflash(struct syna_tcm *tcm, bool force)
{
    reflash_calls++;
    seen_tcm = tcm;
    (void)force;
    return reflash_result;
}

int syna_dev_set_up_app_fw(struct syna_tcm *tcm)
{
    app_fw_calls++;
    seen_tcm = tcm;
    return app_fw_result;
}

int syna_dev_set_up_input_device(struct syna_tcm *tcm)
{
    input_device_calls++;
    seen_tcm = tcm;
    return input_device_result;
}

void syna_tpd_register_fw_class(struct syna_tcm *tcm)
{
    register_fw_calls++;
    seen_tcm = tcm;
}

int syna_dev_set_screen_on_fp_mode(struct syna_tcm *tcm, int mode)
{
    screen_calls++;
    seen_tcm = tcm;
    seen_screen_mode = (unsigned int)mode;
    return 17;
}

int syna_dev_set_tp_report_rate(struct syna_tcm *tcm, int rate,
                                unsigned int delay_ms)
{
    report_rate_calls++;
    seen_tcm = tcm;
    seen_report_rate = (unsigned int)rate;
    (void)delay_ms;
    return 19;
}

int printk(const void *format, ...)
{
    (void)format;
    printk_calls++;
    return 0;
}

#include "../../../../../kernel_development/drivers/reconstructed/zte_tpd/syna_dev_reflash_startup_work.c"

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
    wait_calls = 0;
    wait_completion = NULL;
    wait_timeout = 0;
    stay_calls = 0;
    relax_calls = 0;
    stay_device = NULL;
    relax_device = NULL;
    reflash_result = 0;
    app_fw_result = 0;
    input_device_result = 0;
    reflash_calls = 0;
    app_fw_calls = 0;
    input_device_calls = 0;
    register_fw_calls = 0;
    screen_calls = 0;
    report_rate_calls = 0;
    seen_tcm = NULL;
    seen_screen_mode = 99;
    seen_report_rate = 0;
    printk_calls = 0;
}

static void setup_context(unsigned char *block, struct work_struct **work)
{
    memset(block, 0, 2048);
    *work = (struct work_struct *)(block + 1024);
    *(uintptr_t *)(block + 64) = (uintptr_t)0x5000;
    *(unsigned int *)(block + 1024 + 560) = 240;
}

int main(void)
{
    unsigned char block[2048];
    struct work_struct *work;
    unsigned int tests = 0;
    unsigned int failures = 0;

    setup_context(block, &work);
    reset_mocks();
    syna_dev_reflash_startup_work(work);
    check(wait_calls == 1 && wait_completion == (void *)((unsigned char *)work + 448) &&
          wait_timeout == 250, "disabled_waits_250_ticks", &tests, &failures);
    check(printk_calls == 1 && stay_calls == 0 && relax_calls == 0,
          "disabled_returns_before_power_wakeup", &tests, &failures);

    setup_context(block, &work);
    ((unsigned char *)work)[443] |= 1;
    reset_mocks();
    reflash_result = -5;
    syna_dev_reflash_startup_work(work);
    check(reflash_calls == 1 && app_fw_calls == 0 && input_device_calls == 0,
          "reflash_failure_stops_pipeline", &tests, &failures);
    check(stay_calls == 1 && relax_calls == 1 &&
          stay_device == (void *)(uintptr_t)0x5010 &&
          relax_device == (void *)(uintptr_t)0x5010,
          "reflash_failure_balances_wakeup", &tests, &failures);
    check(seen_tcm == (struct syna_tcm *)((unsigned char *)work - 968),
          "reflash_uses_recovered_tcm_offset", &tests, &failures);

    setup_context(block, &work);
    ((unsigned char *)work)[443] |= 1;
    reset_mocks();
    app_fw_result = -6;
    syna_dev_reflash_startup_work(work);
    check(reflash_calls == 1 && app_fw_calls == 1 && input_device_calls == 0,
          "app_fw_failure_stops_before_input", &tests, &failures);
    check(printk_calls == 1 && stay_calls == 1 && relax_calls == 1,
          "app_fw_failure_logs_and_relaxes", &tests, &failures);

    setup_context(block, &work);
    ((unsigned char *)work)[443] |= 1;
    reset_mocks();
    input_device_result = -7;
    syna_dev_reflash_startup_work(work);
    check(reflash_calls == 1 && app_fw_calls == 1 && input_device_calls == 1,
          "input_failure_reaches_input_stage", &tests, &failures);
    check(printk_calls == 1 && register_fw_calls == 0 &&
          screen_calls == 0 && report_rate_calls == 0 &&
          stay_calls == 1 && relax_calls == 1,
          "input_failure_skips_post_setup", &tests, &failures);

    setup_context(block, &work);
    ((unsigned char *)work)[443] |= 1;
    reset_mocks();
    syna_dev_reflash_startup_work(work);
    check(reflash_calls == 1 && app_fw_calls == 1 && input_device_calls == 1 &&
          register_fw_calls == 1 && screen_calls == 1 && report_rate_calls == 1,
          "success_runs_full_pipeline", &tests, &failures);
    check(seen_screen_mode == 0 && seen_report_rate == 240 &&
          stay_calls == 1 && relax_calls == 1 && printk_calls == 3,
          "success_uses_mode_rate_and_balances_wakeup", &tests, &failures);

    printf("SUMMARY tests=%u failures=%u\n", tests, failures);
    return failures == 0 ? 0 : 1;
}
