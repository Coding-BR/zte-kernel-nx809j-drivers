#include <stdint.h>
#include <stdio.h>
#include <string.h>

struct fake_cdev {
    unsigned char bytes[0x500];
};

static unsigned int callback_count;

static void fake_callback(struct fake_cdev *cdev)
{
    (void)cdev;
    callback_count++;
}

static long get_tp_report_rate_contract(struct fake_cdev *cdev, char *buffer,
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
                      *(uint32_t *)(cdev->bytes + 0x464));
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

    *(uint32_t *)(cdev.bytes + 0x464) = 120;
    callback_count = 0;
    result = get_tp_report_rate_contract(&cdev, buffer, sizeof(buffer),
                                         &offset, fake_callback);
    if (check(result == 4 && strcmp(buffer, "120\n") == 0,
              "initial report rate read"))
        return 1;
    if (check(offset == 4 && callback_count == 1, "offset and callback"))
        return 1;

    memset(buffer, 0, sizeof(buffer));
    result = get_tp_report_rate_contract(&cdev, buffer, sizeof(buffer),
                                         &offset, fake_callback);
    if (check(result == 0 && buffer[0] == '\0' && callback_count == 1,
              "EOF read does not repeat callback"))
        return 1;

    offset = 0;
    *(uint32_t *)(cdev.bytes + 0x464) = 0;
    result = get_tp_report_rate_contract(&cdev, buffer, 2, &offset, NULL);
    if (check(result == 2 && strncmp(buffer, "0\n", 2) == 0,
              "zero value short read"))
        return 1;

    offset = 0;
    *(uint32_t *)(cdev.bytes + 0x464) = UINT32_MAX;
    memset(buffer, 0, sizeof(buffer));
    result = get_tp_report_rate_contract(&cdev, buffer, sizeof(buffer),
                                         &offset, NULL);
    if (check(result == 11 && strcmp(buffer, "4294967295\n") == 0,
              "maximum unsigned value"))
        return 1;

    puts("PASS get_tp_report_rate host tests (4 cases)");
    return 0;
}
