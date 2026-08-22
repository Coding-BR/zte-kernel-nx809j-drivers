#include <errno.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct fake_cdev {
    unsigned char bytes[0xf70];
};

typedef void (*level_callback)(struct fake_cdev *cdev, unsigned int value);
static unsigned int callback_count;
static unsigned int callback_value;
static int copy_failure;

static void fake_callback(struct fake_cdev *cdev, unsigned int value)
{
    (void)cdev;
    callback_count++;
    callback_value = value;
}

static long tp_sensibility_level_write_contract(struct fake_cdev *cdev,
                                                const char *buffer,
                                                size_t count)
{
    char input[10] = {0};
    char *end;
    unsigned long value;
    level_callback callback;
    size_t length = count < sizeof(input) - 1 ? count : sizeof(input) - 1;

    if (copy_failure)
        return -EINVAL;
    memcpy(input, buffer, length);
    errno = 0;
    value = strtoul(input, &end, 0);
    if (errno != 0 || end == input || (*end != '\0' && *end != '\n') ||
        value > UINT32_MAX)
        return -EINVAL;
    *(uint8_t *)(cdev->bytes + 0x40) = (uint8_t)value;
    callback = *(level_callback *)(cdev->bytes + 0xf68);
    if (callback != NULL)
        callback(cdev, (unsigned int)value);
    return (long)length;
}

static int check(int condition, const char *message)
{
    if (!condition) {
        fprintf(stderr, "FAIL: %s\n", message);
        return 1;
    }
    return 0;
}

int main(void)
{
    struct fake_cdev cdev = {0};
    long result;

    *(level_callback *)(cdev.bytes + 0xf68) = fake_callback;
    callback_count = 0;
    callback_value = 0;
    copy_failure = 0;
    result = tp_sensibility_level_write_contract(&cdev, "7\n", 2);
    if (check(result == 2 && cdev.bytes[0x40] == 7 && callback_count == 1 &&
              callback_value == 7, "basic write and callback"))
        return 1;

    callback_count = 0;
    result = tp_sensibility_level_write_contract(&cdev, "999999999", 9);
    if (check(result == 9 && cdev.bytes[0x40] == (UINT32_C(999999999) & 0xff) &&
              callback_value == 999999999U, "nine-byte unsigned write"))
        return 1;

    callback_count = 0;
    result = tp_sensibility_level_write_contract(&cdev, "invalid", 7);
    if (check(result == -EINVAL && callback_count == 0,
              "invalid input returns EINVAL"))
        return 1;

    copy_failure = 1;
    result = tp_sensibility_level_write_contract(&cdev, "8\n", 2);
    if (check(result == -EINVAL && callback_count == 0,
              "copy failure returns EINVAL"))
        return 1;
    copy_failure = 0;

    *(level_callback *)(cdev.bytes + 0xf68) = NULL;
    result = tp_sensibility_level_write_contract(&cdev, "5\n", 2);
    if (check(result == 2 && cdev.bytes[0x40] == 5,
              "missing callback is tolerated"))
        return 1;

    puts("PASS tp_sensibility_level_write exact host tests (5 cases)");
    return 0;
}
