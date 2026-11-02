#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct syna_tcm { unsigned char bytes[2048]; };
struct syna_dev { unsigned char bytes[512]; };

static struct syna_tcm test_tcm;
static struct syna_dev test_dev;
static unsigned char test_workqueue;
static unsigned char test_input;
static int managed_device_enabled;
static unsigned int cancel_calls;
static unsigned int flush_calls;
static unsigned int destroy_calls;
static unsigned int free_irq_calls;
static unsigned int unregister_calls;
static unsigned int printk_calls;

static void test_cancel_delayed_work_sync(intptr_t work)
{
    (void)work;
    cancel_calls++;
}

static void test_flush_workqueue(uintptr_t workqueue)
{
    (void)workqueue;
    flush_calls++;
}

static void test_destroy_workqueue(uintptr_t workqueue)
{
    (void)workqueue;
    destroy_calls++;
}

static intptr_t test_syna_request_managed_device(void)
{
    return managed_device_enabled ? (intptr_t)&test_dev : 0;
}

static void test_devm_free_irq(void *device, unsigned int irq, void *data)
{
    (void)device;
    (void)irq;
    (void)data;
    free_irq_calls++;
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
#define unk_398C3 "state3"
#define unk_3604B "disconnect"
#define unk_36071 "release_irq"
#define unk_3BE43 "managed_device_failure"
#define unk_34798 "already_disconnected"
#define printk test_printk
#define cancel_delayed_work_sync test_cancel_delayed_work_sync
#define _flush_workqueue test_flush_workqueue
#define destroy_workqueue test_destroy_workqueue
#define syna_request_managed_device test_syna_request_managed_device
#define devm_free_irq test_devm_free_irq
#define input_unregister_device test_input_unregister_device
#define __break(value) abort()
#include "../../../reconstructed/zte_tpd/syna_dev_disconnect.c"
#undef __break
#undef input_unregister_device
#undef devm_free_irq
#undef syna_request_managed_device
#undef destroy_workqueue
#undef _flush_workqueue
#undef cancel_delayed_work_sync
#undef printk
#undef unk_34798
#undef unk_3BE43
#undef unk_36071
#undef unk_3604B
#undef unk_398C3
#undef _BYTE
#undef _DWORD
#undef _QWORD
#undef __fastcall
#undef __int64
#undef __int8

static void store_ptr(unsigned char *base, size_t offset, const void *value)
{
    memcpy(base + offset, &value, sizeof(value));
}

static void store_u32(unsigned char *base, size_t offset, unsigned int value)
{
    memcpy(base + offset, &value, sizeof(value));
}

static void reset_state(void)
{
    memset(&test_tcm, 0, sizeof(test_tcm));
    memset(&test_dev, 0, sizeof(test_dev));
    managed_device_enabled = 1;
    cancel_calls = flush_calls = destroy_calls = 0;
    free_irq_calls = unregister_calls = printk_calls = 0;
    store_ptr(test_tcm.bytes, 624, &test_dev);
    store_u32(test_dev.bytes, 384, 0);
}

static int test_already_disconnected(void)
{
    reset_state();
    return syna_dev_disconnect(&test_tcm) == 0 && printk_calls == 1 &&
           cancel_calls == 0 && free_irq_calls == 0 && unregister_calls == 0;
}

static int test_state_three_without_callback(void)
{
    reset_state();
    test_tcm.bytes[1410] = 1;
    store_u32(test_tcm.bytes, 1404, 3);
    return syna_dev_disconnect(&test_tcm) == 0 &&
           test_tcm.bytes[1410] == 0 &&
           *(unsigned int *)(test_tcm.bytes + 1404) == 0 &&
           cancel_calls == 0 && free_irq_calls == 0;
}

static int test_full_cleanup(void)
{
    reset_state();
    test_tcm.bytes[1410] = 1;
    store_ptr(test_tcm.bytes, 1072, &test_workqueue);
    store_u32(test_dev.bytes, 184, 17);
    store_ptr(test_tcm.bytes, 944, &test_input);
    return syna_dev_disconnect(&test_tcm) == 0 &&
           cancel_calls == 1 && flush_calls == 1 && destroy_calls == 1 &&
           free_irq_calls == 1 && unregister_calls == 1 &&
           *(void **)(test_tcm.bytes + 1072) == 0 &&
           *(void **)(test_tcm.bytes + 944) == 0 &&
           *(unsigned int *)(test_dev.bytes + 184) == 0 &&
           test_dev.bytes[188] == 0 && test_tcm.bytes[1410] == 0 &&
           *(unsigned int *)(test_tcm.bytes + 1404) == 0;
}

static int test_managed_device_failure(void)
{
    reset_state();
    managed_device_enabled = 0;
    test_tcm.bytes[1410] = 1;
    store_u32(test_dev.bytes, 184, 17);
    return syna_dev_disconnect(&test_tcm) == 0 &&
           free_irq_calls == 0 && unregister_calls == 0 &&
           *(unsigned int *)(test_dev.bytes + 184) == 17 &&
           test_tcm.bytes[1410] == 0;
}

static int test_irq_below_one(void)
{
    reset_state();
    test_tcm.bytes[1410] = 1;
    store_u32(test_dev.bytes, 184, 0);
    store_ptr(test_tcm.bytes, 944, &test_input);
    return syna_dev_disconnect(&test_tcm) == 0 &&
           free_irq_calls == 0 && unregister_calls == 1 &&
           *(void **)(test_tcm.bytes + 944) == 0 && test_tcm.bytes[1410] == 0;
}

int main(void)
{
    int already = test_already_disconnected();
    int state_three = test_state_three_without_callback();
    int full = test_full_cleanup();
    int managed = test_managed_device_failure();
    int irq = test_irq_below_one();
    if (!already || !state_three || !full || !managed || !irq) {
        fprintf(stderr, "cases already=%d state3=%d full=%d managed=%d irq=%d\n",
                already, state_three, full, managed, irq);
        return fprintf(stderr, "syna_dev_disconnect contract mismatch\n"), 1;
    }
    puts("PASS syna_dev_disconnect host tests (5 cases)");
    return 0;
}
