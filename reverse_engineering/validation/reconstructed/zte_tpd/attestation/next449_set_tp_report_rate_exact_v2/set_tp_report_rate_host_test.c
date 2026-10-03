#include <errno.h>
#include <limits.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct fake_cdev {
    unsigned char bytes[0xf20];
};

typedef void (*rate_callback)(struct fake_cdev *cdev, unsigned int value);

static unsigned int callback_count;
static unsigned int callback_value;
static unsigned int printk_count;

static int parse_rate(const char *buffer, size_t count, unsigned int *value)
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

static int fake_printk(const char *format, const char *name,
                       unsigned int value)
{
    (void)format;
    (void)name;
    (void)value;
    printk_count++;
    return 0;
}

static long set_tp_report_rate_contract(struct fake_cdev *cdev,
                                        const char *buffer, size_t count,
                                        rate_callback callback)
{
    unsigned int value;

    if (parse_rate(buffer, count, &value))
        return -EINVAL;
    fake_printk("tpd", "set_tp_report_rate", value);
    callback = *(rate_callback *)(cdev->bytes + 0xf10);
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
    const char valid[] = "120";
    const char invalid[] = "12x";
    const char maximum[] = "4294967295";
    long result;

    reset_observations();
    result = set_tp_report_rate_contract(&cdev, invalid, sizeof(invalid) - 1,
                                         fake_callback);
    if (check(result == -EINVAL && printk_count == 0 && callback_count == 0,
              "invalid input returns EINVAL without side effects"))
        return 1;

    *(rate_callback *)(cdev.bytes + 0xf10) = fake_callback;
    reset_observations();
    result = set_tp_report_rate_contract(&cdev, valid, sizeof(valid) - 1,
                                         NULL);
    if (check(result == 3 && printk_count == 1 && callback_count == 1 &&
              callback_value == 120, "valid input logs and calls callback"))
        return 1;

    *(rate_callback *)(cdev.bytes + 0xf10) = NULL;
    reset_observations();
    result = set_tp_report_rate_contract(&cdev, valid, sizeof(valid) - 1,
                                         fake_callback);
    if (check(result == 3 && printk_count == 1 && callback_count == 0,
              "null callback keeps successful write contract"))
        return 1;

    *(rate_callback *)(cdev.bytes + 0xf10) = fake_callback;
    reset_observations();
    result = set_tp_report_rate_contract(&cdev, maximum,
                                         sizeof(maximum) - 1, fake_callback);
    if (check(result == 10 && callback_value == UINT_MAX,
              "maximum unsigned rate"))
        return 1;

    puts("PASS set_tp_report_rate host tests (4 cases)");
    return 0;
}
