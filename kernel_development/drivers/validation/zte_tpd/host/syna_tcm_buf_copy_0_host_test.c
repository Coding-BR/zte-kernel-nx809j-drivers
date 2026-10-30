#include <stdint.h>
#include <stdio.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>
#include <stddef.h>

typedef int64_t __int64;
typedef uint64_t _QWORD;
typedef uint32_t _DWORD;
#define __fastcall
#define __int8 char
typedef unsigned char _BYTE;
#define unk_38244 "%s lock %u"
#define unk_3BE43 "%s managed device missing"
#define unk_38286 "%s allocation too large"
#define unk_3703C "%s allocation failed"
#define unk_378CD "%s copy failed"
#define unk_3944E "%s source capacity %u"
#define unk_34F34 "%s length %u"

static uint8_t managed_device_storage;
static int managed_device_present;
static int allocation_fail;
static int lock_calls;
static int unlock_calls;
static int alloc_calls;
static int free_calls;

static void reset_state(void)
{
    managed_device_present = 1;
    allocation_fail = 0;
    lock_calls = 0;
    unlock_calls = 0;
    alloc_calls = 0;
    free_calls = 0;
}

static int printk(const char *format, ...)
{
    (void)format;
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
    return managed_device_present ? (__int64)(uintptr_t)&managed_device_storage : 0;
}

static void devm_kfree(__int64 device, void *address)
{
    (void)device;
    free_calls++;
    free(address);
}

static void *devm_kmalloc(__int64 device, size_t size, unsigned int flags)
{
    (void)device;
    (void)flags;
    alloc_calls++;
    return allocation_fail ? NULL : malloc(size);
}

#include "../../../reconstructed/zte_tpd/syna_tcm_buf_copy_0.c"

union buffer_blob {
    max_align_t alignment;
    uint8_t raw[96];
};

static int failures;

static void init_buffer(union buffer_blob *buffer, void *data, uint32_t capacity,
                        uint32_t used, uint8_t locks)
{
    memset(buffer, 0, sizeof(*buffer));
    *(uint64_t *)(buffer->raw + 0) = (uintptr_t)data;
    *(uint32_t *)(buffer->raw + 8) = capacity;
    *(uint32_t *)(buffer->raw + 12) = used;
    buffer->raw[64] = locks;
}

static void release_owned_destination(union buffer_blob *destination,
                                      void *original)
{
    void *current = (void *)(uintptr_t)*(uint64_t *)(destination->raw + 0);
    if (current != NULL && current != original)
        free(current);
}

static void check_int(const char *name, int actual, int expected)
{
    if (actual != expected) {
        fprintf(stderr, "%s: got %d expected %d\n", name, actual, expected);
        failures++;
    }
}

static void test_basic_copy(void)
{
    union buffer_blob destination, source;
    union { max_align_t alignment; uint8_t bytes[32]; } dst_data, src_data;

    memcpy(src_data.bytes, "hello", 5);
    reset_state();
    init_buffer(&destination, dst_data.bytes, 16, 0, 0);
    init_buffer(&source, src_data.bytes, 16, 5, 0);
    check_int("basic-return", syna_tcm_buf_copy_0((__int64)(uintptr_t)destination.raw,
             (__int64)(uintptr_t)source.raw), 0);
    if (memcmp(dst_data.bytes, "hello", 5) != 0 ||
        *(uint32_t *)(destination.raw + 12) != 5 ||
        destination.raw[64] != 0 || source.raw[64] != 0 ||
        lock_calls != 2 || unlock_calls != 2 || alloc_calls != 0 || free_calls != 0)
        failures++;
}

static void test_resize_and_clear(void)
{
    union buffer_blob destination, source;
    union { max_align_t alignment; uint8_t bytes[32]; } src_data;

    for (size_t index = 0; index < 20; ++index)
        src_data.bytes[index] = (uint8_t)(index + 1);
    reset_state();
    init_buffer(&destination, NULL, 0, 0, 0);
    init_buffer(&source, src_data.bytes, 32, 20, 0);
    check_int("resize-return", syna_tcm_buf_copy_0((__int64)(uintptr_t)destination.raw,
             (__int64)(uintptr_t)source.raw), 0);
    if (alloc_calls != 1 || free_calls != 0 ||
        *(uint32_t *)(destination.raw + 8) != 21 ||
        *(uint32_t *)(destination.raw + 12) != 20 ||
        memcmp((void *)(uintptr_t)*(uint64_t *)destination.raw, src_data.bytes, 20) != 0)
        failures++;
    release_owned_destination(&destination, NULL);
}

static void test_reuse_capacity(void)
{
    union buffer_blob destination, source;
    union { max_align_t alignment; uint8_t bytes[32]; } dst_data, src_data;

    memset(dst_data.bytes, 0xcc, sizeof(dst_data.bytes));
    memset(src_data.bytes, 0x5a, sizeof(src_data.bytes));
    reset_state();
    init_buffer(&destination, dst_data.bytes, 32, 9, 0);
    init_buffer(&source, src_data.bytes, 32, 20, 0);
    check_int("reuse-return", syna_tcm_buf_copy_0((__int64)(uintptr_t)destination.raw,
             (__int64)(uintptr_t)source.raw), 0);
    if (alloc_calls != 0 || *(uint32_t *)(destination.raw + 8) != 32 ||
        *(uint32_t *)(destination.raw + 12) != 20 || dst_data.bytes[20] != 0xcc)
        failures++;
}

static void test_source_capacity_mismatch(void)
{
    union buffer_blob destination, source;
    union { max_align_t alignment; uint8_t bytes[32]; } dst_data, src_data;

    memset(dst_data.bytes, 0x7b, sizeof(dst_data.bytes));
    memset(src_data.bytes, 0x4d, sizeof(src_data.bytes));
    reset_state();
    init_buffer(&destination, dst_data.bytes, 16, 0, 0);
    init_buffer(&source, src_data.bytes, 4, 8, 0);
    check_int("mismatch-return", syna_tcm_buf_copy_0((__int64)(uintptr_t)destination.raw,
             (__int64)(uintptr_t)source.raw), 0);
    if (*(uint32_t *)(destination.raw + 12) != 0 || dst_data.bytes[0] != 0x7b)
        failures++;
}

static void test_missing_device_and_lock_warning(void)
{
    union buffer_blob destination, source;
    union { max_align_t alignment; uint8_t bytes[16]; } src_data;

    memset(src_data.bytes, 0xa1, sizeof(src_data.bytes));
    reset_state();
    managed_device_present = 0;
    init_buffer(&destination, NULL, 0, 0, 2);
    init_buffer(&source, src_data.bytes, 16, 8, 3);
    check_int("missing-device-return", syna_tcm_buf_copy_0((__int64)(uintptr_t)destination.raw,
             (__int64)(uintptr_t)source.raw), 0);
    if (alloc_calls != 0 || destination.raw[64] != 2 || source.raw[64] != 3 ||
        unlock_calls != 2)
        failures++;
}

int main(void)
{
    test_basic_copy();
    test_resize_and_clear();
    test_reuse_capacity();
    test_source_capacity_mismatch();
    test_missing_device_and_lock_warning();
    if (failures != 0)
        return 1;
    puts("PASS syna_tcm_buf_copy_0 host tests (5 cases)");
    return 0;
}
