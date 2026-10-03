#include <errno.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct fake_cdev {
    unsigned char bytes[0xf38];
};

typedef void (*level_callback)(struct fake_cdev *cdev, unsigned int value);
static unsigned int callback_count;
static unsigned int callback_value;

static void fake_callback(struct fake_cdev *cdev, unsigned int value)
{
    (void)cdev;
    callback_count++;
    callback_value = value;
}

static long set_stability_level_contract(struct fake_cdev *cdev,
                                         const char *buffer, size_t count)
{
    char *end;
    unsigned long value;
    level_callback callback;
    char input[32];

    if (count >= sizeof(input))
        return -EINVAL;
    memcpy(input, buffer, count);
    input[count] = '\0';
    errno = 0;
    value = strtoul(input, &end, 10);
    if (errno != 0 || end == input || *end != '\0' || value > UINT32_MAX)
        return -EINVAL;
    callback = *(level_callback *)(cdev->bytes + 0xf30);
    if (callback != NULL)
        callback(cdev, (unsigned int)value);
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

int main(void)
{
    struct fake_cdev cdev = {0};
    long result;

    *(level_callback *)(cdev.bytes + 0xf30) = fake_callback;
    callback_count = 0;
    callback_value = 0;
    result = set_stability_level_contract(&cdev, "8", 1);
    if (check(result == 1 && callback_count == 1 && callback_value == 8,
              "valid stability level callback dispatch"))
        return 1;

    result = set_stability_level_contract(&cdev, "bad", 3);
    if (check(result == -EINVAL && callback_count == 1,
              "invalid input returns EINVAL"))
        return 1;

    *(level_callback *)(cdev.bytes + 0xf30) = NULL;
    result = set_stability_level_contract(&cdev, "0", 1);
    if (check(result == 1 && callback_count == 1,
              "null callback is accepted"))
        return 1;

    result = set_stability_level_contract(&cdev, "4294967295", 10);
    if (check(result == 10 && callback_count == 1,
              "maximum unsigned stability level"))
        return 1;

    puts("PASS set_stability_level host tests (4 cases)");
    return 0;
}
