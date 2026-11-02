#define ZTE_TPD_HOST_TEST 1
#include <stdint.h>
#include <stdio.h>

typedef long long __int64;
typedef unsigned int _DWORD;
typedef struct ztp_device { unsigned char bytes[0xdc0]; } ztp_device;

static int test_printk(const char *format, ...)
{
    (void)format;
    return 0;
}
#define printk test_printk
static const char unk_3B5E0[] = "";
static const char unk_3526D[] = "";
static const char unk_33365[] = "";
static const char unk_35831[] = "";

#include "../../../reconstructed/zte_tpd/tpd_set_singlefpgesture.c"

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
    *(unsigned int *)(state + 0x5b4) = 0x10;
    *(unsigned int *)(state + 0x5bc) = 0x20;
    *(unsigned int *)(state + 0x57c) = 1;

    if (check(tpd_set_singlefpgesture(cdev, 7) == 0, "active return"))
        return 1;
    if (check(*(unsigned int *)(state + 0x5b8) == 1, "active gesture state"))
        return 1;
    if (check(*(unsigned int *)(state + 0x5b0) == 0x31, "active aggregate"))
        return 1;

    *(unsigned int *)(state + 0x5b8) = 0x55;
    *(unsigned int *)(state + 0x5b0) = 0x66;
    *(unsigned int *)(state + 0x57c) = 0;
    if (check(tpd_set_singlefpgesture(cdev, 7) == 0, "inactive return"))
        return 1;
    if (check(*(unsigned int *)(state + 0x5b8) == 0x55, "inactive gesture preservation"))
        return 1;
    if (check(*(unsigned int *)(state + 0x5b0) == 0x66, "inactive aggregate preservation"))
        return 1;

    puts("PASS tpd_set_singlefpgesture contract test (5 checks)");
    return 0;
}
