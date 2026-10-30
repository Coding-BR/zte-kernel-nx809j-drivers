#include <stdint.h>
#include <stdio.h>
#include <string.h>

struct work_struct;

long long tpd_cdev;

#define _DEFS_H
#include "../../../reconstructed/zte_tpd/tpd_suspend_work.c"
#undef _DEFS_H

static uint8_t device_storage[0xe18] __attribute__((aligned(8)));
static unsigned int callback_calls;
static void *callback_context;

static int suspend_callback(void *context)
{
    callback_calls++;
    callback_context = context;
    return -19;
}

static void reset_state(void)
{
    memset(device_storage, 0, sizeof(device_storage));
    tpd_cdev = (long long)(uintptr_t)device_storage;
    callback_calls = 0;
    callback_context = NULL;
}

static int test_missing_callback(void)
{
    reset_state();
    tpd_suspend_work(NULL);
    if (callback_calls != 0)
        return fprintf(stderr, "missing callback contract mismatch\n"), 1;
    return 0;
}

static int test_callback_context(void)
{
    int (*callback)(void *context) = suspend_callback;
    void *context = device_storage + 0x80;

    reset_state();
    memcpy(device_storage + 0xe10, &callback, sizeof(callback));
    memcpy(device_storage + 0xdd8, &context, sizeof(context));
    tpd_suspend_work(NULL);
    if (callback_calls != 1 || callback_context != context)
        return fprintf(stderr, "suspend callback context mismatch\n"), 1;
    return 0;
}

int main(void)
{
    if (test_missing_callback() || test_callback_context())
        return 1;
    puts("PASS tpd_suspend_work host tests (2 cases)");
    return 0;
}
