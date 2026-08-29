#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define __int64 long long
#define __fastcall
#define __int8 char
typedef uint8_t _BYTE;
typedef uint16_t _WORD;
typedef uint32_t _DWORD;
typedef uint64_t _QWORD;
#define SP_EL0 0

#define unk_3365A "%s: invalid handle %lld"
#define unk_38244 "%s lock %d"
#define unk_38F27 "%s: read failed %d"
#define unk_31A47 "%s: detected"
#define unk_33DAE "%s: CRC %s"
#define unk_398C0 "no"
#define unk_3C68A "%s: max rw failed"
#define unk_3842E "%s: parse failed"
#define unk_37F35 "%s: write failed"
#define unk_3617E "%s: read operation missing"
#define unk_37DFA "%s: platform missing"
#define unk_3BE43 "%s: invalid managed device"
#define unk_3703C "%s: allocation failed"
#define unk_343B9 "%s: input buffer allocation failed"

static uint64_t fake_sp_el0[256];
static uint8_t *active_buffer;
static __int64 managed_device;
static int printk_calls;
static int callback_calls;
static int write_calls;
static int parse_calls;
static int max_size_calls;
static int read_result;
static int read_status;
static int write_result;
static int parse_result;
static int max_size_result;

static __int64 _ReadStatusReg(unsigned int selector)
{
    (void)selector;
    return (__int64)(uintptr_t)fake_sp_el0;
}

static int printk(const char *format, ...)
{
    (void)format;
    printk_calls++;
    return 0;
}

static void mutex_lock(__int64 mutex)
{
    (void)mutex;
}

static int mutex_unlock(__int64 mutex)
{
    (void)mutex;
    return 0;
}

static __int64 syna_request_managed_device(void)
{
    return managed_device;
}

static void *devm_kmalloc(__int64 device, size_t size, int flags)
{
    void *pointer;
    (void)device;
    (void)flags;
    pointer = malloc(size);
    active_buffer = pointer;
    return pointer;
}

static void devm_kfree(__int64 device, void *pointer)
{
    (void)device;
    free(pointer);
}

static __int64 syna_tcm_v1_read_message(void)
{
    if (active_buffer) {
        active_buffer[0] = 0xa5;
        active_buffer[1] = (uint8_t)read_status;
    }
    callback_calls++;
    return read_result;
}

static __int64 syna_tcm_v1_write_message(__int64 device, ...)
{
    (void)device;
    write_calls++;
    return write_result;
}

static __int64 syna_tcm_v1_parse_idinfo(__int64 device, ...)
{
    (void)device;
    parse_calls++;
    return parse_result;
}

static __int64 syna_tcm_v1_set_up_max_rw_size(__int64 device)
{
    (void)device;
    return 0;
}

static __int64 syna_tcm_v1_check_max_rw_size(__int64 device)
{
    (void)device;
    max_size_calls++;
    return max_size_result;
}

static __int64 syna_tcm_v1_terminate(void)
{
    return 0;
}

static __int64 syna_tcm_buf_lock(__int64 buffer)
{
    (void)buffer;
    return 0;
}

static __int64 syna_tcm_buf_unlock(__int64 buffer)
{
    (void)buffer;
    return 0;
}

#include "../../../reconstructed/zte_tpd/syna_tcm_v1_detect.c"

static int failures;

static void reset_state(void)
{
    printk_calls = 0;
    callback_calls = 0;
    write_calls = 0;
    parse_calls = 0;
    max_size_calls = 0;
    active_buffer = NULL;
    managed_device = 0;
    read_result = 0;
    read_status = 16;
    write_result = 0;
    parse_result = 0;
    max_size_result = 0;
}

static void test_null_handle(void)
{
    __int64 result;
    reset_state();
    result = syna_tcm_v1_detect(0, 0, 7);
    if (result != 4294967055LL || printk_calls != 1)
        failures++;
}

static void test_fast_path(void)
{
    uint8_t state[0x400] = {0};
    reset_state();
    __int64 result = syna_tcm_v1_detect((__int64)(uintptr_t)state, 1, 0);
    if (result != 0 ||
        state[8] != 1 || *(_DWORD *)(state + 892) != 0 ||
        !*(_QWORD *)(state + 912) || !*(_QWORD *)(state + 920) ||
        !*(_QWORD *)(state + 928) || !*(_QWORD *)(state + 936) ||
        !*(_QWORD *)(state + 944))
        failures++;
}

static void test_missing_platform_allocation(void)
{
    uint8_t state[0x500] = {0};
    __int64 result;
    reset_state();
    result = syna_tcm_v1_detect((__int64)(uintptr_t)state, 0, 0);
    if (result != 4294967053LL ||
        *(_QWORD *)(state + 576) != 0 || *(_DWORD *)(state + 584) != 0)
        failures++;
    free((void *)(uintptr_t)*(_QWORD *)(state + 576));
}

static void test_successful_startup(void)
{
    uint8_t state[0x500] = {0};
    uint8_t ops[64] = {0};
    uint8_t *buffer;
    __int64 result;
    *(_QWORD *)(ops + 32) = (uintptr_t)syna_tcm_v1_read_message;
    *(_QWORD *)(state + 72) = (uintptr_t)ops;
    reset_state();
    managed_device = 1;
    result = syna_tcm_v1_detect((__int64)(uintptr_t)state, 0, 0);
    buffer = (uint8_t *)(uintptr_t)*(_QWORD *)(state + 576);
    if (result != 0 ||
        state[8] != 1 || callback_calls != 1 || write_calls != 0 ||
        parse_calls != 1 || max_size_calls != 1)
        failures++;
    if (!buffer || buffer[0] != 0xa5 || buffer[1] != 16)
        failures++;
    free(buffer);
}

static void test_missing_read_callback(void)
{
    uint8_t state[0x500] = {0};
    uint8_t ops[64] = {0};
    __int64 result;
    *(_QWORD *)(state + 72) = (uintptr_t)ops;
    reset_state();
    managed_device = 1;
    result = syna_tcm_v1_detect((__int64)(uintptr_t)state, 0, 0);
    if (result != 4294967051LL || callback_calls != 0 ||
        *(_DWORD *)(state + 584) != 54)
        failures++;
    free((void *)(uintptr_t)*(_QWORD *)(state + 576));
}

static void test_read_failure(void)
{
    uint8_t state[0x500] = {0};
    uint8_t ops[64] = {0};
    __int64 result;
    *(_QWORD *)(ops + 32) = (uintptr_t)syna_tcm_v1_read_message;
    *(_QWORD *)(state + 72) = (uintptr_t)ops;
    reset_state();
    managed_device = 1;
    read_result = -5;
    result = syna_tcm_v1_detect((__int64)(uintptr_t)state, 0, 0);
    if (result != 4294967291LL || callback_calls != 1 ||
        write_calls != 0 || parse_calls != 0)
        failures++;
    free((void *)(uintptr_t)*(_QWORD *)(state + 576));
}

static void test_write_failure(void)
{
    uint8_t state[0x500] = {0};
    uint8_t ops[64] = {0};
    __int64 result;
    *(_QWORD *)(ops + 32) = (uintptr_t)syna_tcm_v1_read_message;
    *(_QWORD *)(state + 72) = (uintptr_t)ops;
    reset_state();
    managed_device = 1;
    read_status = 1;
    write_result = -5;
    result = syna_tcm_v1_detect((__int64)(uintptr_t)state, 0, 0);
    if (result != 4294967054LL || callback_calls != 1 || write_calls != 1 ||
        parse_calls != 0)
        failures++;
    free((void *)(uintptr_t)*(_QWORD *)(state + 576));
}

static void test_parse_failure(void)
{
    uint8_t state[0x500] = {0};
    uint8_t ops[64] = {0};
    __int64 result;
    *(_QWORD *)(ops + 32) = (uintptr_t)syna_tcm_v1_read_message;
    *(_QWORD *)(state + 72) = (uintptr_t)ops;
    reset_state();
    managed_device = 1;
    parse_result = -5;
    result = syna_tcm_v1_detect((__int64)(uintptr_t)state, 0, 0);
    if (result != 4294967054LL || callback_calls != 1 || write_calls != 0 ||
        parse_calls != 1 || max_size_calls != 0)
        failures++;
    free((void *)(uintptr_t)*(_QWORD *)(state + 576));
}

static void test_max_size_failure(void)
{
    uint8_t state[0x500] = {0};
    uint8_t ops[64] = {0};
    __int64 result;
    *(_QWORD *)(ops + 32) = (uintptr_t)syna_tcm_v1_read_message;
    *(_QWORD *)(state + 72) = (uintptr_t)ops;
    reset_state();
    managed_device = 1;
    max_size_result = -5;
    result = syna_tcm_v1_detect((__int64)(uintptr_t)state, 0, 0);
    if (result != 4294967054LL || callback_calls != 1 || parse_calls != 1 ||
        max_size_calls != 1)
        failures++;
    free((void *)(uintptr_t)*(_QWORD *)(state + 576));
}

int main(void)
{
    test_null_handle();
    test_fast_path();
    test_missing_platform_allocation();
    test_successful_startup();
    test_missing_read_callback();
    test_read_failure();
    test_write_failure();
    test_parse_failure();
    test_max_size_failure();
    if (failures != 0)
        return 1;
    puts("PASS syna_tcm_v1_detect host tests (9 cases)");
    return 0;
}
