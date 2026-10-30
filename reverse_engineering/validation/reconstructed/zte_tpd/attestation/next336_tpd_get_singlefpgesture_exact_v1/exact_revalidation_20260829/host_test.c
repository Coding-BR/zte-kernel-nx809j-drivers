#define ZTE_TPD_HOST_TEST 1
#include <stdint.h>
#include <stdio.h>

typedef long long __int64;
typedef unsigned long long _QWORD;
typedef unsigned int _DWORD;
typedef struct ztp_device { unsigned char bytes[0xdc0]; } ztp_device;

static int test_printk(const char *format, ...)
{
    (void)format;
    return 0;
}
#define printk test_printk
static const char unk_3A696[] = "";
static const char unk_39C51[] = "";

#include "../../../reconstructed/zte_tpd/tpd_get_singlefpgesture.c"

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
    unsigned char device[0xdc0] = {0};
    unsigned char state[0x5c0] = {0};
    struct ztp_device *cdev = (struct ztp_device *)device;
    *(void **)(device + 0xdb8) = state;
    *(unsigned int *)(state + 0x5b8) = 0x12345678;

    if (check(tpd_get_singlefpgesture(cdev) == 0, "return value"))
        return 1;
    if (check(*(unsigned int *)(device + 0x44c) == 0x12345678,
              "output value"))
        return 1;
    if (check(*(unsigned int *)(state + 0x5b8) == 0x12345678,
              "state preservation"))
        return 1;

    puts("PASS tpd_get_singlefpgesture contract test (3 checks)");
    return 0;
}
