#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define __int64 long long
typedef uint8_t _BYTE;
typedef uint32_t _DWORD;
typedef uint64_t _QWORD;
#define __fastcall
#define LOBYTE(value) (*((uint8_t *)&(value)))
#define unk_39575 "%s: invalid frame size %u"
#define unk_3380A "%s: invalid parameters %lld"

static int printk_calls;
static int callback_calls;
static int callback_fail;
static uintptr_t expected_base;
static uintptr_t expected_data;

static int printk(const char *format, ...)
{
    (void)format;
    printk_calls++;
    return 0;
}

static void __break(unsigned int code)
{
    (void)code;
}

static __int64 frame_callback(__int64 frame, __int64 data,
                              __int64 column, _QWORD row)
{
    uintptr_t expected_frame = expected_base + (uintptr_t)(2 * (int)row * 2 + 2 * column);
    uintptr_t expected_data_pointer = expected_data + (uintptr_t)(2 * (int)row * 2 + 2 * column);
    callback_calls++;
    if ((uintptr_t)frame != expected_frame || (uintptr_t)data != expected_data_pointer)
        callback_fail = 1;
    return 1;
}

static __int64 frame_callback_data_reset(__int64 frame, __int64 data,
                                         __int64 column, _QWORD row)
{
    (void)frame;
    (void)data;
    (void)column;
    (void)row;
    callback_calls++;
    return callback_calls == 1;
}

#include "../../../reconstructed/zte_tpd/syna_tcm_testing_check_frame_data_0.c"

static int failures;

static void reset_state(void)
{
    printk_calls = 0;
    callback_calls = 0;
    callback_fail = 0;
}

static void test_invalid_parameters(void)
{
    reset_state();
    if (syna_tcm_testing_check_frame_data_0(1, 8, 1, 1, NULL, 1, 8) != 0 ||
        printk_calls != 1)
        failures++;
}

static void test_size_mismatch(void)
{
    _DWORD *callback = (_DWORD *)(uintptr_t)frame_callback;
    reset_state();
    if (syna_tcm_testing_check_frame_data_0(1, 1, 1, 1, callback, 1, 1) != 0 ||
        printk_calls != 1 || callback_calls != 0)
        failures++;
}

static void test_empty_frame(void)
{
    _DWORD *callback = (_DWORD *)(uintptr_t)frame_callback;
    reset_state();
    if (syna_tcm_testing_check_frame_data_0(1, 0, 0, 2, callback, 1, 0) != 1 ||
        printk_calls != 0 || callback_calls != 0)
        failures++;
}

static void test_matrix_pass(void)
{
    uint8_t frame[16] = {0};
    uint8_t data[16] = {0};
    _DWORD *callback = (_DWORD *)(uintptr_t)frame_callback;
    expected_base = (uintptr_t)frame;
    expected_data = (uintptr_t)data;
    reset_state();
    if (syna_tcm_testing_check_frame_data_0((__int64)(uintptr_t)frame, 8, 2, 2,
                                            callback, (__int64)(uintptr_t)data, 8) != 1 ||
        callback_calls != 4 || callback_fail || printk_calls != 0)
        failures++;
}

static void test_callback_failure(void)
{
    _DWORD *callback = (_DWORD *)(uintptr_t)frame_callback_data_reset;
    reset_state();
    if (syna_tcm_testing_check_frame_data_0(1, 8, 1, 2, callback, 1, 0) != 0 ||
        callback_calls != 2 || printk_calls != 0)
        failures++;
}

int main(void)
{
    test_invalid_parameters();
    test_size_mismatch();
    test_empty_frame();
    test_matrix_pass();
    test_callback_failure();
    if (failures != 0)
        return 1;
    puts("PASS syna_tcm_testing_check_frame_data_0 host tests (5 cases)");
    return 0;
}
