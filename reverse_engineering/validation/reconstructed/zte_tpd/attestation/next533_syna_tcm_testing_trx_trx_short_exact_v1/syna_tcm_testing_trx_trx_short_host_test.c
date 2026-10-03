#include <stdint.h>
#include <stdio.h>
#include <stdarg.h>
#include <stdbool.h>
#include <string.h>

typedef int64_t __int64;
typedef uint64_t __uint64;
typedef uint64_t _QWORD;
typedef unsigned char _BYTE;
#define __int8 char
#define HIDWORD(value) ((uint32_t)(((uint64_t)(value)) >> 32))
#define SP_EL0 0
#define unk_3B2B9 "%s: production test failed (%d)"
#define unk_3310F "%s: result %s"
#define unk_34845 "%s: references %u"
#define unk_3BE43 "%s: managed device missing"

struct tcm_dev { uint8_t opaque; };
struct testing_item { uint8_t opaque; };
struct lock_class_key { uint8_t opaque; };

static uint8_t status_area[2048];
static struct lock_class_key syna_pal_mutex_alloc___key_5;
static int production_result;
static int checker_result;
static int managed_device_present;
static int production_calls;
static int copy_calls;
static int checker_calls;
static int free_calls;
static uint8_t copied_marker;

static uintptr_t _ReadStatusReg(int ignored)
{
    (void)ignored;
    return (uintptr_t)status_area;
}

static void _mutex_init(void *mutex, const char *name, struct lock_class_key *key)
{
    (void)mutex;
    (void)name;
    (void)key;
}

static int printk(const char *format, ...)
{
    (void)format;
    return 0;
}

static int syna_tcm_run_production_test(__int64 tcm, int test_id,
                                        void *output, int flags)
{
    uint64_t *result = output;
    (void)tcm;
    (void)test_id;
    (void)flags;
    production_calls++;
    result[0] = 0x1122334455667788ULL;
    return production_result;
}

static __int64 syna_tcm_buf_copy_0(__int64 destination, void *source)
{
    (void)source;
    copy_calls++;
    if (destination != 0)
        *(uint8_t *)(uintptr_t)destination = 0xa5;
    copied_marker = 0xa5;
    return 0;
}

static __int64 syna_tcm_testing_check_array_data(__int64 data,
                                                 uint64_t data_size,
                                                 __int64 expected,
                                                 uint64_t expected_size)
{
    (void)data;
    (void)data_size;
    (void)expected;
    (void)expected_size;
    checker_calls++;
    return checker_result;
}

static __int64 syna_request_managed_device(void)
{
    return managed_device_present ? (__int64)(uintptr_t)status_area : 0;
}

static void devm_kfree(__int64 device, __int64 address)
{
    (void)device;
    (void)address;
    free_calls++;
}

#include "../../../reconstructed/zte_tpd/syna_tcm_testing_trx_trx_short.c"

static int failures;

static void reset_state(void)
{
    production_result = 7;
    checker_result = 1;
    managed_device_present = 1;
    production_calls = 0;
    copy_calls = 0;
    checker_calls = 0;
    free_calls = 0;
    copied_marker = 0;
    memset(status_area, 0, sizeof(status_area));
}

static void check_case(const char *name, int actual, int expected,
                       int actual_flag, int expected_flag)
{
    if (actual != expected) {
        fprintf(stderr, "%s: return %d expected %d\n", name, actual, expected);
        failures++;
    }
    if (actual_flag != expected_flag) {
        fprintf(stderr, "%s: flag %d expected %d\n", name, actual_flag, expected_flag);
        failures++;
    }
}

static void test_null_arguments(void)
{
    struct testing_item item = {0};

    reset_state();
    check_case("null-tcm", syna_tcm_testing_trx_trx_short(NULL, &item, false),
               -161, 0, 0);
    check_case("null-item", syna_tcm_testing_trx_trx_short((struct tcm_dev *)1,
               NULL, false), -161, 0, 0);
    if (production_calls != 0)
        failures++;
}

static void test_production_failure(void)
{
    struct tcm_dev tcm = {0};
    uint8_t item[256] = {0};

    reset_state();
    production_result = -5;
    check_case("production-failure", syna_tcm_testing_trx_trx_short(&tcm,
               (struct testing_item *)item, false), -163, item[16], 0);
    if (production_calls != 1 || checker_calls != 0 || free_calls != 1)
        failures++;
}

static void test_dual_firmware_success(void)
{
    struct tcm_dev tcm = {0};
    uint8_t item[256] = {0};
    uint8_t destination = 0;
    *(uint64_t *)(item + 216) = (uintptr_t)&destination;

    reset_state();
    check_case("dual-success", syna_tcm_testing_trx_trx_short(&tcm,
               (struct testing_item *)item, true), 7, item[16], 1);
    if (copy_calls != 1 || checker_calls != 0 || destination != 0xa5 ||
        copied_marker != 0xa5 || free_calls != 1)
        failures++;
}

static void test_array_paths(void)
{
    struct tcm_dev tcm = {0};
    uint8_t item[256] = {0};
    uint8_t expected[16] = {0};

    *(uint64_t *)(item + 56) = (uintptr_t)expected;
    *(uint32_t *)(item + 64) = sizeof(expected);

    reset_state();
    checker_result = 1;
    check_case("array-pass", syna_tcm_testing_trx_trx_short(&tcm,
               (struct testing_item *)item, false), 7, item[16], 1);
    if (checker_calls != 1 || free_calls != 1)
        failures++;

    reset_state();
    checker_result = 0;
    check_case("array-failure", syna_tcm_testing_trx_trx_short(&tcm,
               (struct testing_item *)item, false), -162, item[16], 0);
    if (checker_calls != 1 || free_calls != 1)
        failures++;

    reset_state();
    managed_device_present = 0;
    memset(item + 56, 0, sizeof(uint64_t));
    check_case("missing-array", syna_tcm_testing_trx_trx_short(&tcm,
               (struct testing_item *)item, false), -162, item[16], 0);
    if (checker_calls != 0 || free_calls != 0)
        failures++;
}

int main(void)
{
    test_null_arguments();
    test_production_failure();
    test_dual_firmware_success();
    test_array_paths();
    if (failures != 0)
        return 1;
    puts("PASS syna_tcm_testing_trx_trx_short host tests (7 cases)");
    return 0;
}
