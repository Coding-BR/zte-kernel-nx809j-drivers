#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef int64_t __int64;
typedef uint8_t _BYTE;
typedef uint32_t _DWORD;
typedef uint64_t _QWORD;
#define __fastcall
#define __int8 char
#define unk_38244 "%s lock %d"
#define unk_3BE43 "%s: invalid device"
#define unk_38286 "%s: allocation failed"
#define unk_3703C "%s: buffer allocation failed"
#define unk_378CD "%s: buffer allocation failed"
#define unk_3944E "%s: copy failed"
#define unk_34F34 "%s: copy failed"

static int printk_calls;
static int lock_calls;
static int unlock_calls;

static int printk(const char *format, ...)
{
    (void)format;
    printk_calls++;
    return 0;
}

static void mutex_lock(__int64 mutex)
{
    (void)mutex;
    lock_calls++;
}

static int mutex_unlock(__int64 mutex)
{
    (void)mutex;
    unlock_calls++;
    return 0;
}

static __int64 syna_request_managed_device(void)
{
    return 1;
}

static void *devm_kmalloc(__int64 device, size_t size, int flags)
{
    (void)device;
    (void)flags;
    return malloc(size);
}

static void devm_kfree(__int64 device, void *pointer)
{
    (void)device;
    free(pointer);
}

#include "../../../reconstructed/zte_tpd/syna_tcm_buf_copy_1.c"

static int failures;

static void reset_state(void)
{
    printk_calls = 0;
    lock_calls = 0;
    unlock_calls = 0;
}

static void test_copy_existing_buffer(void)
{
    uint8_t destination[96] = {0};
    uint8_t source[96] = {0};
    memcpy(source + 80, "abcd", 4);
    *(_QWORD *)destination = (uintptr_t)(destination + 80);
    *(_DWORD *)(destination + 8) = 8;
    *(_DWORD *)(destination + 12) = 0;
    *(_QWORD *)source = (uintptr_t)(source + 80);
    *(_DWORD *)(source + 8) = 8;
    *(_DWORD *)(source + 12) = 4;

    reset_state();
    if (syna_tcm_buf_copy_1((__int64)(uintptr_t)destination,
                             (__int64)(uintptr_t)source) != 0 ||
        memcmp(destination + 80, "abcd", 4) != 0 ||
        *(_DWORD *)(destination + 12) != 4 || lock_calls != 2 ||
        unlock_calls != 2) {
        failures++;
    }
}

static void test_resize_destination(void)
{
    uint8_t destination[96] = {0};
    uint8_t source[96] = {0};
    memcpy(source + 80, "hello", 5);
    *(_DWORD *)(destination + 8) = 0;
    *(_DWORD *)(destination + 12) = 0;
    *(_QWORD *)source = (uintptr_t)(source + 80);
    *(_DWORD *)(source + 8) = 5;
    *(_DWORD *)(source + 12) = 5;

    reset_state();
    if (syna_tcm_buf_copy_1((__int64)(uintptr_t)destination,
                             (__int64)(uintptr_t)source) != 0 ||
        !*(_QWORD *)destination || *(_DWORD *)(destination + 8) != 6 ||
        memcmp((void *)(uintptr_t)*(_QWORD *)destination, "hello", 5) != 0) {
        failures++;
    }
    free((void *)(uintptr_t)*(_QWORD *)destination);
}

static void test_zero_length_copy(void)
{
    uint8_t destination[96] = {0};
    uint8_t source[96] = {0};
    *(_QWORD *)destination = (uintptr_t)(destination + 80);
    *(_DWORD *)(destination + 8) = 4;
    *(_QWORD *)source = (uintptr_t)(source + 80);
    *(_DWORD *)(source + 8) = 4;
    *(_DWORD *)(source + 12) = 0;

    reset_state();
    if (syna_tcm_buf_copy_1((__int64)(uintptr_t)destination,
                             (__int64)(uintptr_t)source) != 0 ||
        *(_DWORD *)(destination + 12) != 0 || lock_calls != 2 ||
        unlock_calls != 2) {
        failures++;
    }
}

int main(void)
{
    test_copy_existing_buffer();
    test_resize_destination();
    test_zero_length_copy();
    if (failures != 0)
        return 1;
    puts("PASS syna_tcm_buf_copy_1 host tests (3 cases)");
    return 0;
}
