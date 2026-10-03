#define ZTE_TPD_HOST_TEST 1
#include <stdint.h>
#include <stdio.h>
#include <stddef.h>
typedef long long __int64;
typedef unsigned long long _QWORD;
typedef unsigned int _DWORD;
typedef unsigned char _BYTE;
struct syna_tcm;
typedef struct ztp_device { union { max_align_t align; unsigned char bytes[0xdc0]; }; } ztp_device;
static int setter_result, setter_calls, setter_level, setter_value;
static int test_printk(const char *format, ...) { (void)format; return 0; }
static int syna_dev_set_follow_hand_level(struct syna_tcm *tcm, int level, int value)
{ (void)tcm; setter_calls++; setter_level = level; setter_value = value; return setter_result; }
#define printk test_printk
static const char unk_34878[] = "";
static const char unk_3585A[] = "";
static const char unk_3B5E0[] = "";
#include "../../../reconstructed/zte_tpd/tpd_set_follow_hand_level.c"
static int check(int condition, const char *message)
{ if (!condition) { fprintf(stderr, "FAIL: %s\n", message); return 1; } return 0; }
static void reset_observations(void) { setter_calls = 0; setter_level = 0; setter_value = 0; }
int main(void)
{
    ztp_device device = {0};
    unsigned char state[0x610] = {0}, hw[0xc0] = {0}, base[0x220] = {0};
    *(void **)((unsigned char *)&device + 0xdb8) = state;
    *(void **)(state + 0x270) = hw; *(void **)(state + 0) = base;
    *(unsigned int *)(base + 0x20c) = 321;
    *(void **)((unsigned char *)&device + 0xdb8) = NULL;
    if (check(tpd_set_follow_hand_level(&device, 2) == -22, "null context return")) return 1;
    if (check(setter_calls == 0, "null context skips setter")) return 1;
    *(void **)((unsigned char *)&device + 0xdb8) = state;
    *(unsigned int *)(state + 0x57c) = 1; *(unsigned int *)(hw + 0xb8) = 1; *(unsigned char *)(hw + 0xbc) = 1;
    setter_result = 0; reset_observations();
    if (check(tpd_set_follow_hand_level(&device, 7) == 0, "clamped success")) return 1;
    if (check(setter_calls == 1 && setter_level == 4 && setter_value == 0, "clamp and hardware value")) return 1;
    if (check(*(int *)(state + 0x600) == 4, "stored clamped level")) return 1;
    *(unsigned int *)(hw + 0xb8) = 0; *(unsigned char *)(hw + 0xbc) = 0; setter_result = -5; reset_observations();
    if (check(tpd_set_follow_hand_level(&device, 3) == 0, "setter error is logged")) return 1;
    if (check(setter_calls == 1 && setter_level == 3 && setter_value == 321, "fallback hardware value")) return 1;
    if (check(*(int *)(state + 0x600) == 3, "stored requested level")) return 1;
    *(unsigned int *)(state + 0x57c) = 0; setter_result = 0; reset_observations();
    if (check(tpd_set_follow_hand_level(&device, -2) == 0, "inactive return")) return 1;
    if (check(setter_calls == 0 && *(int *)(state + 0x600) == -2, "inactive stores without setter")) return 1;
    puts("PASS tpd_set_follow_hand_level contract test (12 checks)");
    return 0;
}
