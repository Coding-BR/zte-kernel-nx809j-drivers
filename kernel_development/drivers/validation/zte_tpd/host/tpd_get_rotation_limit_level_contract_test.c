#define ZTE_TPD_HOST_TEST 1
#include <stdint.h>
#include <stdio.h>
#include <stddef.h>

typedef long long __int64;
typedef unsigned long long _QWORD;
typedef unsigned int _DWORD;
typedef unsigned char _BYTE;
typedef struct ztp_device {
    union {
        max_align_t align;
        unsigned char bytes[0xdc0];
    };
} ztp_device;

#include "../../../reconstructed/zte_tpd/tpd_get_rotation_limit_level.c"

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
    ztp_device device = {0};
    unsigned char state[0x610] = {0};
    *(void **)((unsigned char *)&device + 0xdb8) = state;

    *(unsigned int *)(state + 0x60c) = 0x12345678U;
    if (check(tpd_get_rotation_limit_level(&device) == 0, "return value"))
        return 1;
    if (check(*(unsigned int *)((unsigned char *)&device + 0xc) == 0x12345678U,
              "copied rotation limit"))
        return 1;

    *(unsigned int *)(state + 0x60c) = 0xffffffffU;
    if (check(tpd_get_rotation_limit_level(&device) == 0, "second return value"))
        return 1;
    if (check(*(unsigned int *)((unsigned char *)&device + 0xc) == 0xffffffffU,
              "second copied rotation limit"))
        return 1;

    puts("PASS tpd_get_rotation_limit_level contract test (4 checks)");
    return 0;
}
