#include <stdint.h>
#include <stdio.h>
#include <string.h>

struct fake_cdev {
    unsigned char bytes[0xf40];
};

typedef void (*level_callback)(struct fake_cdev *cdev);
static unsigned int callback_count;

static void fake_callback(struct fake_cdev *cdev)
{
    (void)cdev;
    callback_count++;
}

static long get_stability_level_contract(struct fake_cdev *cdev,
                                         char *buffer, size_t count,
                                         long long *offset)
{
    char formatted[32];
    int length;
    size_t available;
    level_callback callback;

    if (*offset != 0)
        return 0;
    callback = *(level_callback *)(cdev->bytes + 0xf38);
    if (callback != NULL)
        callback(cdev);
    length = snprintf(formatted, sizeof(formatted), "%u\n",
                      *(uint32_t *)(cdev->bytes + 0x46c));
    if (length < 0)
        return length;
    available = (size_t)length;
    if (available > count)
        available = count;
    memcpy(buffer, formatted, available);
    *offset += (long long)available;
    return (long)available;
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
    char buffer[32] = {0};
    long long offset = 0;
    long result;

    *(uint32_t *)(cdev.bytes + 0x46c) = 8;
    *(level_callback *)(cdev.bytes + 0xf38) = fake_callback;
    callback_count = 0;
    result = get_stability_level_contract(&cdev, buffer, sizeof(buffer),
                                          &offset);
    if (check(result == 2 && strcmp(buffer, "8\n") == 0 && offset == 2 &&
              callback_count == 1, "initial stability read and callback"))
        return 1;

    memset(buffer, 0, sizeof(buffer));
    result = get_stability_level_contract(&cdev, buffer, sizeof(buffer),
                                          &offset);
    if (check(result == 0 && callback_count == 1,
              "EOF read does not repeat callback"))
        return 1;

    offset = 0;
    *(uint32_t *)(cdev.bytes + 0x46c) = 0;
    *(level_callback *)(cdev.bytes + 0xf38) = NULL;
    result = get_stability_level_contract(&cdev, buffer, 2, &offset);
    if (check(result == 2 && strncmp(buffer, "0\n", 2) == 0,
              "zero stability short read"))
        return 1;

    offset = 0;
    *(uint32_t *)(cdev.bytes + 0x46c) = UINT32_MAX;
    memset(buffer, 0, sizeof(buffer));
    result = get_stability_level_contract(&cdev, buffer, sizeof(buffer),
                                          &offset);
    if (check(result == 11 && strcmp(buffer, "4294967295\n") == 0,
              "maximum unsigned stability level"))
        return 1;

    puts("PASS get_stability_level host tests (4 cases)");
    return 0;
}
