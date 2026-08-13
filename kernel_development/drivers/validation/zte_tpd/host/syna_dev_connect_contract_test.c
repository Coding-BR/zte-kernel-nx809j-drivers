#include <stdio.h>
#include <string.h>
#include <stdint.h>

struct syna_tcm { unsigned char bytes[600]; };
struct syna_dev { unsigned long slots[200]; };
static struct syna_tcm test_tcm;
static struct syna_dev test_dev;
static unsigned char test_transport[512];
static int detect_result;
static int managed_device_enabled;
static int irq_result;
static unsigned int detect_calls;
static unsigned int managed_calls;
static unsigned int irq_calls;
static unsigned int unregister_calls;
static unsigned int printk_calls;

static intptr_t test_syna_tcm_detect_device(intptr_t tcm, int mode, int value)
{
    (void)tcm; (void)mode; (void)value;
    detect_calls++;
    return detect_result;
}

static intptr_t test_syna_request_managed_device(void)
{
    managed_calls++;
    return managed_device_enabled ? (intptr_t)&test_dev : 0;
}

static int test_devm_request_threaded_irq(intptr_t dev, unsigned int irq,
                                          intptr_t handler, intptr_t thread_fn,
                                          unsigned long flags, const char *name,
                                          void *data)
{
    (void)dev; (void)irq; (void)handler; (void)thread_fn;
    (void)flags; (void)name; (void)data;
    irq_calls++;
    return irq_result;
}

static void test_input_unregister_device(void *input)
{
    (void)input;
    unregister_calls++;
}

static int test_printk(const char *format, ...)
{
    (void)format;
    printk_calls++;
    return 0;
}

#define __int64 long long
#undef __int64
#define __int64 intptr_t
#define __fastcall
#define __int8 char
#define _QWORD unsigned long long
#define _DWORD unsigned int
#define _BYTE unsigned char
#define unk_32430 "unk_32430"
#define unk_3A284 "unk_3A284"
#define unk_340F1 "unk_340F1"
#define unk_392F3 "unk_392F3"
#define unk_3CB1F "unk_3CB1F"
#define unk_3A2AF "unk_3A2AF"
#define unk_32EDC "unk_32EDC"
#define unk_39879 "unk_39879"
#define unk_3244F "unk_3244F"
#define unk_398A0 "unk_398A0"
#define unk_3B7BA "unk_3B7BA"
#define unk_3601F "unk_3601F"
#define unk_39326 "unk_39326"
#define unk_34D1D "unk_34D1D"
#define unk_398C0 "unk_398C0"
#define unk_3A30A "unk_3A30A"
#define unk_39D58 "unk_39D58"
#define unk_3BE43 "unk_3BE43"
#define unk_3A8CE "unk_3A8CE"
#define printk test_printk
#define syna_tcm_detect_device test_syna_tcm_detect_device
#define syna_request_managed_device test_syna_request_managed_device
#define devm_request_threaded_irq test_devm_request_threaded_irq
#define input_unregister_device test_input_unregister_device
#define syna_tcm_get_boot_info(...) 0
#define syna_dev_set_up_app_fw(...) 0
#define syna_dev_set_up_input_device(...) 0
#define syna_tcm_switch_fw_mode(...) 0
#define syna_tcm_set_report_dispatcher(...) 0
#define gpio_to_desc(value) ((intptr_t)(unsigned long)(value))
#define gpiod_to_irq(value) ((unsigned int)(unsigned long)(value))
#define msleep(value) ((void)(value))
#define syna_dev_process_unexpected_reset ((intptr_t)0)
#define syna_dev_isr ((intptr_t)0)
#define syna_dev_reflash_startup_work ((intptr_t)0)
#define delayed_work_timer_fn ((intptr_t)0)
#define init_timer_key(...) ((void)0)
#define queue_delayed_work_on(...) ((void)0)
#define alloc_workqueue(...) ((intptr_t)&test_dev)
#include "../../../reconstructed/zte_tpd/syna_dev_connect.c"
#undef alloc_workqueue
#undef queue_delayed_work_on
#undef init_timer_key
#undef delayed_work_timer_fn
#undef syna_dev_reflash_startup_work
#undef syna_dev_isr
#undef syna_dev_process_unexpected_reset
#undef msleep
#undef gpiod_to_irq
#undef gpio_to_desc
#undef syna_tcm_set_report_dispatcher
#undef syna_tcm_switch_fw_mode
#undef syna_dev_set_up_input_device
#undef syna_dev_set_up_app_fw
#undef syna_tcm_get_boot_info
#undef input_unregister_device
#undef devm_request_threaded_irq
#undef syna_request_managed_device
#undef syna_tcm_detect_device
#undef printk
#undef _BYTE
#undef _DWORD
#undef _QWORD
#undef __fastcall
#undef __int64
#undef unk_3A8CE
#undef unk_3BE43
#undef unk_39D58
#undef unk_3A30A
#undef unk_398C0
#undef unk_34D1D
#undef unk_39326
#undef unk_3601F
#undef unk_3B7BA
#undef unk_3244F
#undef unk_398A0
#undef unk_39879
#undef unk_32EDC
#undef unk_3A2AF
#undef unk_3CB1F
#undef unk_392F3
#undef unk_340F1
#undef unk_3A284
#undef unk_32430
#undef __int8

static void reset_state(void)
{
    memset(&test_tcm, 0, sizeof(test_tcm));
    memset(&test_dev, 0, sizeof(test_dev));
    memset(test_transport, 0, sizeof(test_transport));
    detect_result = 0;
    managed_device_enabled = 1;
    irq_result = 0;
    detect_calls = managed_calls = irq_calls = unregister_calls = printk_calls = 0;
    test_dev.slots[0] = (unsigned long)&test_tcm;
    test_dev.slots[78] = (unsigned long)&test_transport[0];
    *((unsigned int *)(test_transport + 168)) = 1;
}

static int test_null_tcm(void)
{
    reset_state();
    test_dev.slots[0] = 0;
    return syna_dev_connect((struct syna_tcm *)&test_dev) == -22 && detect_calls == 0;
}

static int test_active_connection(void)
{
    reset_state();
    *((unsigned char *)((char *)&test_dev + 1410)) = 1;
    return syna_dev_connect((struct syna_tcm *)&test_dev) == 0 && detect_calls == 0;
}

static int test_detect_failure(void)
{
    reset_state();
    detect_result = -19;
    return syna_dev_connect((struct syna_tcm *)&test_dev) == -19 && detect_calls == 1;
}

static int test_managed_device_failure(void)
{
    reset_state();
    managed_device_enabled = 0;
    return syna_dev_connect((struct syna_tcm *)&test_dev) == -22 && managed_calls == 1;
}

static int test_irq_failure(void)
{
    reset_state();
    irq_result = -16;
    return syna_dev_connect((struct syna_tcm *)&test_dev) == -16 && irq_calls == 1;
}

int main(void)
{
    int null_tcm = test_null_tcm();
    int active = test_active_connection();
    int detect = test_detect_failure();
    int managed = test_managed_device_failure();
    int irq = test_irq_failure();
    if (!null_tcm || !active || !detect || !managed || !irq)
    {
        fprintf(stderr, "cases null=%d active=%d detect=%d managed=%d irq=%d\n",
                null_tcm, active, detect, managed, irq);
        return fprintf(stderr, "syna_dev_connect contract mismatch\n"), 1;
    }
    puts("PASS syna_dev_connect host tests (5 cases)");
    return 0;
}
