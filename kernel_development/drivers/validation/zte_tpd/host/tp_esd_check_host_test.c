#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef uint8_t u8;
struct ztp_device;

void *tpd_cdev;

#include "../../../reconstructed/zte_tpd/tp_esd_check.c"

typedef bool (*esd_callback)(struct ztp_device *cdev);

static bool callback_result;
static struct ztp_device *callback_argument;
static unsigned int callback_calls;

static bool check_callback(struct ztp_device *cdev)
{
    callback_argument = cdev;
    callback_calls++;
    return callback_result;
}

static void reset_state(void)
{
    callback_result = false;
    callback_argument = NULL;
    callback_calls = 0;
    tpd_cdev = NULL;
}

static int expect(bool condition, const char *message)
{
    if (condition)
        return 0;
    fprintf(stderr, "%s\n", message);
    return 1;
}

static int install_callback(uint8_t *storage, esd_callback callback)
{
    memcpy(storage + 0xe98, &callback, sizeof(callback));
    tpd_cdev = storage;
    return 0;
}

static int test_missing_callback_returns_false(void)
{
    uint8_t storage[0xea0] = {0};

    reset_state();
    tpd_cdev = storage;
    return expect(!tp_esd_check() && callback_calls == 0,
                  "missing callback contract");
}

static int test_callback_true_receives_device(void)
{
    uint8_t storage[0xea0] = {0};

    reset_state();
    callback_result = true;
    install_callback(storage, check_callback);
    return expect(tp_esd_check() && callback_calls == 1 &&
                      callback_argument == (struct ztp_device *)storage,
                  "true callback contract");
}

static int test_callback_false_is_propagated(void)
{
    uint8_t storage[0xea0] = {0};

    reset_state();
    callback_result = false;
    install_callback(storage, check_callback);
    return expect(!tp_esd_check() && callback_calls == 1 &&
                      callback_argument == (struct ztp_device *)storage,
                  "false callback contract");
}

int main(void)
{
    if (test_missing_callback_returns_false() ||
        test_callback_true_receives_device() ||
        test_callback_false_is_propagated())
        return 1;
    puts("PASS tp_esd_check host tests (3 cases)");
    return 0;
}
