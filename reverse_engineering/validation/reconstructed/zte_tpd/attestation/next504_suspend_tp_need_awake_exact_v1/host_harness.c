#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

struct ztp_device;

long long tpd_cdev;

#define _DEFS_H
#include "../../../reconstructed/zte_tpd/suspend_tp_need_awake.c"
#undef _DEFS_H

static uint8_t device_storage[0xe70] __attribute__((aligned(8)));
static unsigned int callback_calls;
static struct ztp_device *callback_context;
static bool callback_result;

static bool awake_callback(struct ztp_device *context)
{
    callback_calls++;
    callback_context = context;
    return callback_result;
}

static void reset_state(void)
{
    memset(device_storage, 0, sizeof(device_storage));
    tpd_cdev = (long long)(uintptr_t)device_storage;
    callback_calls = 0;
    callback_context = NULL;
    callback_result = false;
}

static int test_missing_callback(void)
{
    reset_state();
    if (suspend_tp_need_awake() != 0 || callback_calls != 0)
        return fprintf(stderr, "missing callback contract mismatch\n"), 1;
    return 0;
}

static int test_false_callback(void)
{
    bool (*callback)(struct ztp_device *context) = awake_callback;

    reset_state();
    memcpy(device_storage + 0xe68, &callback, sizeof(callback));
    if (suspend_tp_need_awake() != 0 || callback_calls != 1 ||
        callback_context != (struct ztp_device *)device_storage)
        return fprintf(stderr, "false callback contract mismatch\n"), 1;
    return 0;
}

static int test_true_callback(void)
{
    bool (*callback)(struct ztp_device *context) = awake_callback;

    reset_state();
    memcpy(device_storage + 0xe68, &callback, sizeof(callback));
    callback_result = true;
    if (suspend_tp_need_awake() != 1 || callback_calls != 1 ||
        callback_context != (struct ztp_device *)device_storage)
        return fprintf(stderr, "true callback contract mismatch\n"), 1;
    return 0;
}

int main(void)
{
    if (test_missing_callback() || test_false_callback() || test_true_callback())
        return 1;
    puts("PASS suspend_tp_need_awake host tests (3 cases)");
    return 0;
}
