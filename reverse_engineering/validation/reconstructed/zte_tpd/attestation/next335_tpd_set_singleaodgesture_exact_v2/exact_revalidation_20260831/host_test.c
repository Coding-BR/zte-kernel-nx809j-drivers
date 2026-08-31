#define ZTE_TPD_HOST_TEST 1
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef int32_t s32;
typedef uint32_t u32;
typedef long long __int64;
typedef u32 _DWORD;
typedef int _BOOL4;
typedef struct ztp_device { unsigned char bytes[0xdc0]; } ztp_device;

static int zte_test_printk(const char *format, ...)
{
    (void)format;
    return 0;
}

#define printk zte_test_printk
static const char unk_3B5E0[] = "";
static const char unk_3526D[] = "";
static const char unk_33365[] = "";
static const char unk_35831[] = "";

#include "../../../reconstructed/zte_tpd/tpd_set_singleaodgesture.c"

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
    u32 *state_words = (u32 *)state;

    *(void **)(device + 0xdb8) = state;
    state_words[0x57c / 4] = 1;
    state_words[0x5b8 / 4] = 0x10;
    state_words[0x5bc / 4] = 0x20;

    if (check(tpd_set_singleaodgesture(cdev, 7) == 0, "active return"))
        return 1;
    if (check(state_words[0x5b4 / 4] == 1, "active gesture state"))
        return 1;
    if (check(state_words[0x5b0 / 4] == 0x31, "active aggregate state"))
        return 1;

    state_words[0x5b4 / 4] = 0x55;
    state_words[0x5b0 / 4] = 0x66;
    state_words[0x57c / 4] = 0;
    if (check(tpd_set_singleaodgesture(cdev, 7) == 0, "inactive return"))
        return 1;
    if (check(state_words[0x5b4 / 4] == 0x55, "inactive gesture preservation"))
        return 1;
    if (check(state_words[0x5b0 / 4] == 0x66, "inactive aggregate preservation"))
        return 1;

    puts("PASS tpd_set_singleaodgesture contract test (5 checks)");
    return 0;
}
