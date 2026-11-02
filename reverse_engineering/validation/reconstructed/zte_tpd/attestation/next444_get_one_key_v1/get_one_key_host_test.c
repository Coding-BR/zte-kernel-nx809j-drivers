#include <stdint.h>
#include <stdio.h>
#include <string.h>

struct fake_cdev {
    unsigned char bytes[0xf00];
};

static unsigned int callback_count;

static void fake_callback(struct fake_cdev *cdev)
{
    (void)cdev;
    callback_count++;
}

static long get_one_key_contract(struct fake_cdev *cdev, char *buffer,
                                 size_t count, long long *offset,
                                 void (*callback)(struct fake_cdev *))
{
    char formatted[32];
    int length;
    size_t available;

    if (*offset != 0)
        return 0;
    if (callback != NULL)
        callback(cdev);
    length = snprintf(formatted, sizeof(formatted), "%u\n",
                      *(uint32_t *)(cdev->bytes + 0x458));
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

    *(uint32_t *)(cdev.bytes + 0x458) = 7;
    callback_count = 0;
    result = get_one_key_contract(&cdev, buffer, sizeof(buffer), &offset,
                                  fake_callback);
    if (check(result == 2 && strcmp(buffer, "7\n") == 0,
              "initial value read"))
        return 1;
    if (check(offset == 2 && callback_count == 1, "offset and callback"))
        return 1;

    memset(buffer, 0, sizeof(buffer));
    result = get_one_key_contract(&cdev, buffer, sizeof(buffer), &offset,
                                  fake_callback);
    if (check(result == 0 && buffer[0] == '\0' && callback_count == 1,
              "EOF read does not repeat callback"))
        return 1;

    offset = 0;
    *(uint32_t *)(cdev.bytes + 0x458) = UINT32_MAX;
    result = get_one_key_contract(&cdev, buffer, 5, &offset, NULL);
    if (check(result == 5 && strncmp(buffer, "42949", 5) == 0,
              "short userspace buffer"))
        return 1;

    offset = 0;
    memset(buffer, 0, sizeof(buffer));
    result = get_one_key_contract(&cdev, buffer, sizeof(buffer), &offset,
                                  NULL);
    if (check(result == 11 && strcmp(buffer, "4294967295\n") == 0,
              "maximum unsigned value"))
        return 1;

    puts("PASS get_one_key host tests (4 cases)");
    return 0;
}
