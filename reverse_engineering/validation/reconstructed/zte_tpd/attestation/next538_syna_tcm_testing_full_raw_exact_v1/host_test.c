#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include <stdarg.h>

typedef int64_t __int64;
typedef uint32_t _DWORD;
typedef uint8_t _BYTE;
typedef uint64_t _QWORD;
#define __fastcall
#define __int8 char
#define SP_EL0 0
#define HIDWORD(value) ((uint32_t)(((uint64_t)(value)) >> 32))
#define unk_3B2B9 "%s: production test %d"
#define unk_3310F "%s: Result = %s"
#define unk_34845 "%s: Buffer still in used, %d references"
#define unk_3BE43 "%s: Invalid managed device"

struct tcm_dev;
struct testing_item;
static int syna_pal_mutex_alloc___key_6;
static uint64_t fake_status;
static int production_result;
static int upper_result = 1;
static int lower_result = 1;
static int production_calls;
static int upper_calls;
static int lower_calls;
static int printk_calls;

static int syna_tcm_testing_0500_check_upper_bound(void);
static int syna_tcm_testing_0500_check_lower_bound(void);

static uintptr_t host_read_status(int selector)
{
    (void)selector;
    return (uintptr_t)&fake_status - 1808U;
}

#define _ReadStatusReg(value) host_read_status(value)

static int printk(const char *format, ...)
{
    (void)format;
    printk_calls++;
    return 0;
}

static void _mutex_init(void *mutex, const char *name, void *key)
{
    (void)mutex;
    (void)name;
    (void)key;
}

static int syna_tcm_run_production_test(__int64 tcm, unsigned int id,
                                        __int64 *result, int flags)
{
    (void)tcm;
    (void)id;
    (void)flags;
    production_calls++;
    if (production_result >= 0) {
        *result = (__int64)(uintptr_t)malloc(16);
        if (!*result)
            return -12;
    }
    return production_result;
}

static void syna_tcm_buf_copy_1(__int64 destination, void *source)
{
    (void)destination;
    (void)source;
}

static int syna_tcm_testing_check_frame_data_0(
    __int64 data, uint64_t length, __int64 rows, int columns,
    void *checker, __int64 limits, uint64_t limit_count)
{
    (void)data;
    (void)length;
    (void)rows;
    (void)columns;
    (void)checker;
    (void)limits;
    (void)limit_count;
    if (checker == (void *)syna_tcm_testing_0500_check_upper_bound)
        upper_calls++;
    else
        lower_calls++;
    return checker == (void *)syna_tcm_testing_0500_check_upper_bound
               ? upper_result : lower_result;
}

static __int64 syna_request_managed_device(void)
{
    return (__int64)(uintptr_t)&fake_status;
}

static void devm_kfree(__int64 device, __int64 pointer)
{
    (void)device;
    free((void *)(uintptr_t)pointer);
}

static int syna_tcm_testing_0500_check_upper_bound(void) { return 1; }
static int syna_tcm_testing_0500_check_lower_bound(void) { return 1; }

#include "../../../reconstructed/zte_tpd/syna_tcm_testing_full_raw.c"

static int failures;

static void reset_state(void)
{
    production_result = 7;
    upper_result = 1;
    lower_result = 1;
    production_calls = 0;
    upper_calls = 0;
    lower_calls = 0;
    printk_calls = 0;
}

static void test_null_input(void)
{
    reset_state();
    if (syna_tcm_testing_full_raw(0, (struct testing_item *)(uintptr_t)1, false) != -161 ||
        syna_tcm_testing_full_raw((struct tcm_dev *)(uintptr_t)1, 0, false) != -161 ||
        production_calls != 0)
        failures++;
}

static void test_production_failure(void)
{
    uint8_t tcm[40] = {0};
    uint8_t item[224] = {0};

    reset_state();
    production_result = -5;
    if (syna_tcm_testing_full_raw((struct tcm_dev *)tcm,
                                   (struct testing_item *)item, false) != -163 ||
        item[16] != 0 || production_calls != 1)
        failures++;
}

static void test_dual_firmware_pass(void)
{
    uint8_t tcm[40] = {0};
    uint8_t item[224] = {0};

    reset_state();
    if (syna_tcm_testing_full_raw((struct tcm_dev *)tcm,
                                   (struct testing_item *)item, true) != 7 ||
        item[16] != 1 || production_calls != 1 || upper_calls != 0 || lower_calls != 0)
        failures++;
}

static void test_normal_failing_bound(void)
{
    uint8_t tcm[40] = {0};
    uint8_t item[224] = {0};
    uint8_t upper[16] = {0};
    uint8_t lower[16] = {0};
    uint64_t upper_descriptor[2] = {(uintptr_t)upper, 1};
    uint64_t lower_descriptor[2] = {(uintptr_t)lower, 1};

    memcpy(item + 56, &upper_descriptor, sizeof(upper_descriptor));
    memcpy(item + 64, &lower_descriptor, sizeof(lower_descriptor));
    reset_state();
    lower_result = 0;
    if (syna_tcm_testing_full_raw((struct tcm_dev *)tcm,
                                   (struct testing_item *)item, false) != -162 ||
        item[16] != 0 || upper_calls != 1 || lower_calls != 1)
        failures++;
}

int main(void)
{
    test_null_input();
    test_production_failure();
    test_dual_firmware_pass();
    test_normal_failing_bound();
    if (failures != 0)
        return 1;
    puts("PASS syna_tcm_testing_full_raw host tests (4 cases)");
    return 0;
}
