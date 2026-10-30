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

static int test_printk(const char *format, ...)
{
    (void)format;
    return 0;
}
#define printk test_printk
static const char unk_34878[] = "";

#include "../../../reconstructed/zte_tpd/tpd_set_one_key.c"

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
    *(unsigned int *)((unsigned char *)&device + 0x458) = 0x11;
    *(unsigned int *)(state + 0x5d4) = 0x22;

    if (check(tpd_set_one_key(&device, -7) == 0, "active return"))
        return 1;
    if (check(*(unsigned int *)(state + 0x5d4) == (unsigned int)-7,
              "state field update"))
        return 1;
    if (check(*(unsigned int *)((unsigned char *)&device + 0x458) == (unsigned int)-7,
              "device mirror update"))
        return 1;

    *(void **)((unsigned char *)&device + 0xdb8) = NULL;
    if (check(tpd_set_one_key(&device, 9) == -22, "null context return"))
        return 1;
    if (check(*(unsigned int *)((unsigned char *)&device + 0x458) == (unsigned int)-7,
              "null context preserves mirror"))
        return 1;

    puts("PASS tpd_set_one_key contract test (5 checks)");
    return 0;
}
