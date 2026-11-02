#define ZTE_TPD_HOST_TEST 1
#include <stdint.h>
#include <stdio.h>
#include <stddef.h>

typedef long long __int64;
typedef unsigned long long _QWORD;
typedef unsigned int _DWORD;
struct syna_tcm;
struct syna_hw_interface;
typedef struct ztp_device {
    union {
        max_align_t align;
        unsigned char bytes[0xdc0];
    };
} ztp_device;

static int pt01_result;
static int pt05_result;
static int pt0a_result;
static int pt01_calls;
static int pt05_calls;
static int pt0a_calls;
static int reset_calls;
static struct syna_hw_interface *last_reset_hw;

static int test_printk(const char *format, ...)
{
    (void)format;
    return 0;
}

static int syna_testing_pt01_zte(struct syna_tcm *tcm)
{
    (void)tcm;
    pt01_calls++;
    return pt01_result;
}

static int syna_testing_pt05_zte(struct syna_tcm *tcm)
{
    (void)tcm;
    pt05_calls++;
    return pt05_result;
}

static int syna_testing_pt0a_zte(struct syna_tcm *tcm)
{
    (void)tcm;
    pt0a_calls++;
    return pt0a_result;
}

static void syna_spi_hw_reset(struct syna_hw_interface *hw_if)
{
    reset_calls++;
    last_reset_hw = hw_if;
}

#define printk test_printk
static const char unk_3458E[] = "";
static const char unk_34878[] = "";
static const char unk_38B8E[] = "";
static const char unk_3A6C6[] = "";
static const char unk_3B5E0[] = "";
static const char unk_3C89A[] = "";

#include "../../../reconstructed/zte_tpd/tpd_test_cmd_store.c"

static int check(int condition, const char *message)
{
    if (!condition) {
        fprintf(stderr, "FAIL: %s\n", message);
        return 1;
    }
    return 0;
}

static void reset_observations(void)
{
    pt01_calls = 0;
    pt05_calls = 0;
    pt0a_calls = 0;
    reset_calls = 0;
    last_reset_hw = NULL;
}

int main(void)
{
    ztp_device device = {0};
    unsigned char state[0x5e0] = {0};
    struct syna_hw_interface *hw = (struct syna_hw_interface *)(uintptr_t)0x1234;
    *(void **)((unsigned char *)&device + 0xdb8) = state;
    *(struct syna_hw_interface **)(state + 0x270) = hw;

    *(unsigned int *)(state + 0x57c) = 0;
    reset_observations();
    if (check(tpd_test_cmd_store(&device) == 0, "inactive return"))
        return 1;
    if (check(pt01_calls == 0 && pt05_calls == 0 && pt0a_calls == 0,
              "inactive skips tests"))
        return 1;
    if (check(reset_calls == 1 && last_reset_hw == hw, "inactive reset"))
        return 1;

    *(unsigned int *)(state + 0x57c) = 1;
    pt01_result = -1;
    pt05_result = 0;
    pt0a_result = 0;
    reset_observations();
    if (check(tpd_test_cmd_store(&device) == -1, "pt01 failure return"))
        return 1;
    if (check(pt01_calls == 1 && pt05_calls == 0 && pt0a_calls == 0,
              "pt01 short circuit"))
        return 1;
    if (check(reset_calls == 1, "pt01 reset"))
        return 1;

    pt01_result = 0;
    pt05_result = -2;
    reset_observations();
    if (check(tpd_test_cmd_store(&device) == -2, "pt05 failure return"))
        return 1;
    if (check(pt01_calls == 1 && pt05_calls == 1 && pt0a_calls == 0,
              "pt05 short circuit"))
        return 1;

    pt05_result = 0;
    pt0a_result = -3;
    reset_observations();
    if (check(tpd_test_cmd_store(&device) == -3, "pt0a failure return"))
        return 1;
    if (check(pt01_calls == 1 && pt05_calls == 1 && pt0a_calls == 1,
              "pt0a path"))
        return 1;

    pt0a_result = 0;
    reset_observations();
    if (check(tpd_test_cmd_store(&device) == 0, "success return"))
        return 1;
    if (check(pt01_calls == 1 && pt05_calls == 1 && pt0a_calls == 1,
              "success path"))
        return 1;
    if (check(reset_calls == 1 && last_reset_hw == hw, "success reset"))
        return 1;

    puts("PASS tpd_test_cmd_store contract test (15 checks)");
    return 0;
}
