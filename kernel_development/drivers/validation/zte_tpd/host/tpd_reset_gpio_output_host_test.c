#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

void *tpd_cdev;

#include "../../../reconstructed/zte_tpd/tpd_reset_gpio_output.c"

typedef void (*gpio_output_callback_t)(unsigned char value);

static unsigned int callback_calls;
static unsigned char callback_value;

static void record_callback(unsigned char value)
{
    callback_calls++;
    callback_value = value;
}

static int expect(bool condition, const char *message)
{
    if (condition)
        return 0;
    fprintf(stderr, "%s\n", message);
    return 1;
}

static void reset_state(void)
{
    callback_calls = 0;
    callback_value = 0xff;
    tpd_cdev = NULL;
}

static void install_callback(uint8_t *storage, gpio_output_callback_t callback)
{
    memcpy(storage + 0xeb0, &callback, sizeof(callback));
    tpd_cdev = storage;
}

static int test_missing_callback_is_noop(void)
{
    uint8_t storage[0xeb8] = {0};

    reset_state();
    tpd_cdev = storage;
    tpd_reset_gpio_output(1);
    return expect(callback_calls == 0, "missing callback contract");
}

static int test_callback_receives_one_bit(void)
{
    uint8_t storage[0xeb8] = {0};

    reset_state();
    install_callback(storage, record_callback);
    tpd_reset_gpio_output(0x5);
    return expect(callback_calls == 1 && callback_value == 1,
                  "set callback one-bit mask contract");
}

static int test_callback_receives_zero_bit(void)
{
    uint8_t storage[0xeb8] = {0};

    reset_state();
    install_callback(storage, record_callback);
    tpd_reset_gpio_output(0x2);
    return expect(callback_calls == 1 && callback_value == 0,
                  "clear callback one-bit mask contract");
}

static int test_repeated_calls_forward_masked_values(void)
{
    uint8_t storage[0xeb8] = {0};

    reset_state();
    install_callback(storage, record_callback);
    tpd_reset_gpio_output(0x7);
    tpd_reset_gpio_output(0x8);
    return expect(callback_calls == 2 && callback_value == 0,
                  "repeated callback contract");
}

int main(void)
{
    if (test_missing_callback_is_noop() ||
        test_callback_receives_one_bit() ||
        test_callback_receives_zero_bit() ||
        test_repeated_calls_forward_masked_values())
        return 1;
    puts("PASS tpd_reset_gpio_output host tests (4 cases)");
    return 0;
}
