#include <errno.h>
#include <limits.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct fake_cdev {
    unsigned char bytes[0xf30];
};

typedef void (*level_callback)(struct fake_cdev *cdev, unsigned int value);
static unsigned int callback_count;
static unsigned int callback_value;
static unsigned int printk_count;

static int parse_level(const char *buffer, size_t count, unsigned int *value)
{
    char input[32];
    char *end;
    unsigned long parsed;

    if (count == 0 || count >= sizeof(input))
        return -EINVAL;
    memcpy(input, buffer, count);
    input[count] = '\0';
    parsed = strtoul(input, &end, 10);
    if (end == input || *end != '\0' || parsed > UINT_MAX)
        return -EINVAL;
    *value = (unsigned int)parsed;
    return 0;
}

static void fake_callback(struct fake_cdev *cdev, unsigned int value)
{
    (void)cdev;
    callback_count++;
    callback_value = value;
}

static void fake_printk(void)
{
    printk_count++;
}

static long set_follow_hand_level_contract(struct fake_cdev *cdev,
                                           const char *buffer, size_t count)
{
    unsigned int value;
    level_callback callback;

    if (parse_level(buffer, count, &value))
        return -EINVAL;
    fake_printk();
    callback = *(level_callback *)(cdev->bytes + 0xf20);
    if (callback != NULL)
        callback(cdev, value);
    return (long)count;
}

static int check(int condition, const char *message)
{
    if (!condition) {
        fprintf(stderr, "FAIL: %s\n", message);
        return 1;
    }
    return 0;
}

static void reset_observations(void)
{
    callback_count = 0;
    callback_value = 0;
    printk_count = 0;
}

int main(void)
{
    struct fake_cdev cdev = {0};
    const char valid[] = "64";
    const char invalid[] = "6x";
    const char maximum[] = "4294967295";
    long result;

    reset_observations();
    result = set_follow_hand_level_contract(&cdev, invalid,
                                            sizeof(invalid) - 1);
    if (check(result == -EINVAL && printk_count == 0 && callback_count == 0,
              "invalid input returns EINVAL without side effects"))
        return 1;

    *(level_callback *)(cdev.bytes + 0xf20) = fake_callback;
    reset_observations();
    result = set_follow_hand_level_contract(&cdev, valid,
                                            sizeof(valid) - 1);
    if (check(result == 2 && printk_count == 1 && callback_count == 1 &&
              callback_value == 64, "valid input logs and calls callback"))
        return 1;

    *(level_callback *)(cdev.bytes + 0xf20) = NULL;
    reset_observations();
    result = set_follow_hand_level_contract(&cdev, valid,
                                            sizeof(valid) - 1);
    if (check(result == 2 && printk_count == 1 && callback_count == 0,
              "null callback keeps successful write contract"))
        return 1;

    *(level_callback *)(cdev.bytes + 0xf20) = fake_callback;
    reset_observations();
    result = set_follow_hand_level_contract(&cdev, maximum,
                                            sizeof(maximum) - 1);
    if (check(result == 10 && callback_value == UINT_MAX,
              "maximum unsigned level"))
        return 1;

    puts("PASS set_follow_hand_level host tests (4 cases)");
    return 0;
}
