#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef unsigned char u8;

struct ztp_device;

long long tpd_cdev;

#define EIO 5
#include "../../../reconstructed/zte_tpd/set_gpio_mode.c"
#undef EIO

static uint8_t context_storage[0xf60] __attribute__((aligned(8)));
static unsigned int callback_calls;
static struct ztp_device *callback_context;
static u8 callback_mode;
static int callback_result;

static int gpio_mode_callback(struct ztp_device *context, u8 mode)
{
    callback_calls++;
    callback_context = context;
    callback_mode = mode;
    return callback_result;
}

static void reset_state(void)
{
    memset(context_storage, 0, sizeof(context_storage));
    tpd_cdev = (long long)(uintptr_t)context_storage;
    callback_calls = 0;
    callback_context = NULL;
    callback_mode = 0;
    callback_result = 0;
}

static int test_missing_callback(void)
{
    reset_state();
    if (set_gpio_mode(0x5a) != -5 || callback_calls != 0)
        return fprintf(stderr, "missing callback contract mismatch\n"), 1;
    return 0;
}

static int test_callback_arguments_and_return(void)
{
    set_gpio_mode_callback_t callback = gpio_mode_callback;

    reset_state();
    memcpy(context_storage + 0xf58, &callback, sizeof(callback));
    callback_result = -37;
    if (set_gpio_mode(0xa5) != -37 || callback_calls != 1 ||
        callback_context != (struct ztp_device *)context_storage ||
        callback_mode != 0xa5)
        return fprintf(stderr, "callback argument or return mismatch\n"), 1;
    return 0;
}

static int test_callback_success_return(void)
{
    set_gpio_mode_callback_t callback = gpio_mode_callback;

    reset_state();
    memcpy(context_storage + 0xf58, &callback, sizeof(callback));
    callback_result = 0;
    if (set_gpio_mode(1) != 0 || callback_calls != 1 || callback_mode != 1)
        return fprintf(stderr, "callback success mismatch\n"), 1;
    return 0;
}

int main(void)
{
    if (test_missing_callback() || test_callback_arguments_and_return() ||
        test_callback_success_return())
        return 1;
    puts("PASS set_gpio_mode host tests (3 cases)");
    return 0;
}
