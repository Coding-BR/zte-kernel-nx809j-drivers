#define ZTE_TPD_HOST_TEST 1
#include <stdint.h>
#include <stdio.h>
#include <stddef.h>

typedef long long __int64;
typedef unsigned long long _QWORD;
typedef unsigned int _DWORD;
typedef struct ztp_device {
    union {
        max_align_t align;
        unsigned char bytes[0xdc0];
    };
} ztp_device;

#include "../../../reconstructed/zte_tpd/tpd_get_one_key.c"

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
    unsigned char state[0x5e0] = {0};
    *(void **)((unsigned char *)&device + 0xdb8) = state;
    *(unsigned int *)(state + 0x5d4) = 0x12345678;
    *(unsigned int *)((unsigned char *)&device + 0x458) = 0;

    if (check(tpd_get_one_key(&device) == 0, "return"))
        return 1;
    if (check(*(unsigned int *)((unsigned char *)&device + 0x458) == 0x12345678,
              "device mirror update"))
        return 1;

    *(unsigned int *)(state + 0x5d4) = 0xffffffffU;
    if (check(tpd_get_one_key(&device) == 0, "second return"))
        return 1;
    if (check(*(unsigned int *)((unsigned char *)&device + 0x458) == 0xffffffffU,
              "second device mirror update"))
        return 1;

    puts("PASS tpd_get_one_key contract test (4 checks)");
    return 0;
}
