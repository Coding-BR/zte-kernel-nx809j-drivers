#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>

typedef int64_t __int64;
typedef uint64_t _QWORD;
typedef uint32_t _DWORD;
typedef uint8_t _BYTE;
#define __fastcall
#define __int8 char
#define SP_EL0 0
#define HIDWORD(value) ((uint32_t)(((uint64_t)(value)) >> 32))
#define unk_32661 "%s: identify failed"
#define unk_3310F "%s: Result = %s"
#define unk_3498E "%s: build id mismatch %u"
struct tcm_dev;
struct testing_item;
static uint64_t fake_status;
static int identify_result;
static int device_id_result;
static int identify_calls;
static int device_id_calls;

static uintptr_t host_read_status(int selector)
{
    (void)selector;
    return (uintptr_t)&fake_status - 1808U;
}
#define _ReadStatusReg(value) host_read_status(value)

static int printk(const char *format, ...)
{
    (void)format;
    return 0;
}

static int syna_tcm_identify(struct tcm_dev *tcm, void *info, int flags)
{
    uint8_t *bytes = info;
    (void)tcm; (void)flags;
    identify_calls++;
    if (identify_result < 0)
        return identify_result;
    (void)bytes;
    return 0;
}

static int syna_tcm_buf_alloc(__int64 buffer_value, unsigned int size)
{
    uint8_t *buffer = (uint8_t *)(uintptr_t)buffer_value;
    if (!*(void **)buffer)
        *(void **)buffer = calloc(1, size);
    *(uint32_t *)(buffer + 8) = size;
    return *(void **)buffer ? 0 : -12;
}

static void syna_pal_mem_cpy(void *destination, unsigned int source_size,
                             void *source, unsigned int destination_size,
                             unsigned int copy_size)
{
    if (destination && source && copy_size <= source_size && copy_size <= destination_size)
        memcpy(destination, source, copy_size);
}

static int syna_tcm_testing_0001_check_device_id(int data, char *expected,
                                                  uint64_t count)
{
    (void)data; (void)expected; (void)count;
    device_id_calls++;
    return device_id_result;
}

#include "../../../reconstructed/zte_tpd/syna_tcm_testing_build_id.c"

static int failures;
static void reset_state(void)
{
    identify_result = 0;
    device_id_result = 1;
    identify_calls = 0;
    device_id_calls = 0;
}

static void test_null_input(void)
{
    reset_state();
    if (syna_tcm_testing_build_id(0, (struct testing_item *)(uintptr_t)1, false) != -161 ||
        syna_tcm_testing_build_id((struct tcm_dev *)(uintptr_t)1, 0, false) != -161 || identify_calls)
        failures++;
}

static void test_identify_failure(void)
{
    uint8_t tcm[32] = {0};
    _Alignas(8) uint8_t item[256] = {0};
    reset_state(); identify_result = -5;
    if (syna_tcm_testing_build_id((struct tcm_dev *)tcm,
                                   (struct testing_item *)item, false) != -163 ||
        item[16] != 0 || identify_calls != 1)
        failures++;
}

static void test_dual_firmware_pass(void)
{
    uint8_t tcm[32] = {0};
    _Alignas(8) uint8_t item[256] = {0};
    _Alignas(8) uint8_t build_buffer[32] = {0};
    _Alignas(8) uint8_t info_buffer[32] = {0};
    uint64_t build_desc[2] = {(uintptr_t)build_buffer, 32};
    uint64_t info_desc[2] = {(uintptr_t)info_buffer, 32};
    *(uint64_t *)(item + 216) = (uintptr_t)&build_desc;
    *(uint64_t *)(item + 224) = (uintptr_t)&info_desc;
    reset_state();
    if (syna_tcm_testing_build_id((struct tcm_dev *)tcm,
                                   (struct testing_item *)item, true) != 0 ||
        item[16] != 1 || identify_calls != 1 || device_id_calls != 0 ||
        *(uint32_t *)(build_buffer + 0) != 0)
        failures++;
}

static void test_normal_device_id_failure(void)
{
    uint8_t tcm[32] = {0};
    _Alignas(8) uint8_t item[256] = {0};
    _Alignas(8) uint8_t expected[32] = {0};
    uint64_t info_desc[2] = {(uintptr_t)expected, 4};
    *(uint64_t *)(item + 224) = (uintptr_t)&info_desc;
    *(uint64_t *)(item + 64) = (uintptr_t)&info_desc;
    reset_state(); device_id_result = 0;
    if (syna_tcm_testing_build_id((struct tcm_dev *)tcm,
                                   (struct testing_item *)item, false) != -162 ||
        item[16] != 0 || identify_calls != 1 || device_id_calls != 1)
        failures++;
}

int main(void)
{
    test_null_input();
    test_identify_failure();
    test_dual_firmware_pass();
    test_normal_device_id_failure();
    if (failures)
        return 1;
    puts("PASS syna_tcm_testing_build_id host tests (4 cases)");
    return 0;
}
