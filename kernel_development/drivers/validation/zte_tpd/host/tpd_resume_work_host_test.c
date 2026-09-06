#include <stdint.h>
#include <stdio.h>
#include <string.h>

struct work_struct;

long long tpd_cdev;

#define _DEFS_H
#include "../../../reconstructed/zte_tpd/tpd_resume_work.c"
#undef _DEFS_H

static uint8_t device_storage[0xe10] __attribute__((aligned(8)));
static unsigned int callback_calls;
static void *callback_context;

static int resume_callback(void *context)
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

static int test_missing_callback_preserves_state(void)
{
    uint32_t state = 0x5a5a5a5a;

    reset_state();
    memcpy(device_storage + 0x4a8, &state, sizeof(state));
    tpd_resume_work(NULL);
    memcpy(&state, device_storage + 0x4a8, sizeof(state));
    if (callback_calls != 0 || state != 0x5a5a5a5a)
        return fprintf(stderr, "missing callback contract mismatch\n"), 1;
    return 0;
}

static int test_callback_context_and_state_clear(void)
{
    int (*callback)(void *context) = resume_callback;
    void *context = device_storage + 0x80;
    uint32_t state = 0x5a5a5a5a;

    reset_state();
    memcpy(device_storage + 0xe08, &callback, sizeof(callback));
    memcpy(device_storage + 0xdd8, &context, sizeof(context));
    memcpy(device_storage + 0x4a8, &state, sizeof(state));
    tpd_resume_work(NULL);
    memcpy(&state, device_storage + 0x4a8, sizeof(state));
    if (callback_calls != 1 || callback_context != context || state != 0)
        return fprintf(stderr, "resume callback state contract mismatch\n"), 1;
    return 0;
}

int main(void)
{
    if (test_missing_callback_preserves_state() ||
        test_callback_context_and_state_clear())
        return 1;
    puts("PASS tpd_resume_work host tests (2 cases)");
    return 0;
}
