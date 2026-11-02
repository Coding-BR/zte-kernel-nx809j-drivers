#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define __int64 long long
#define __int8 char
#define __fastcall
#define __user
#define _QWORD uint64_t
#define _BYTE uint8_t
#define _DWORD uint32_t
#define LOBYTE(value) (*(uint8_t *)&(value))
#define HIDWORD(value) (*((uint32_t *)&(value) + 1))
#define LODWORD(value) (*(uint32_t *)&(value))

struct byte_storage { _Alignas(uint64_t) uint8_t bytes[0x500]; };
static __int64 qword_31658;
static __int64 qword_31660;
static __int64 qword_31668;
static uint8_t qword_31698;
static const char unk_invalid_size[] = "invalid-size";
static const char unk_zero_length[] = "zero-length";
static const char unk_buffer_lock[] = "buffer-lock";
static const char unk_mem_free[] = "mem-free";
static const char unk_mem_alloc[] = "mem-alloc";
static const char unk_tcm_alloc[] = "tcm-alloc";
static const char unk_caller_alloc[] = "caller-alloc";
static const char unk_invalid_tcm[] = "invalid-tcm";
static const char unk_invalid_platform[] = "invalid-platform";
static const char unk_invalid_write[] = "invalid-write";
static const char unk_write_failure[] = "write-failure";
static const char unk_copy_failure[] = "copy-failure";

static unsigned int mutex_lock_calls;
static unsigned int mutex_unlock_calls;
static unsigned int printk_calls;
static unsigned int request_device_calls;
static unsigned int devm_kfree_calls;
static unsigned int devm_kmalloc_calls;
static unsigned int copy_calls;
static unsigned int break_calls;
static __int64 request_results[4];
static unsigned int request_result_count;
static unsigned int request_result_index;
static __int64 raw_write_result;
static int copy_failure;
static int malloc_failure;
static const char *last_printk_format;

#define unk_38935 unk_invalid_size
#define unk_3CBAE unk_zero_length
#define unk_38244 unk_buffer_lock
#define unk_3BE43 unk_mem_free
#define unk_3703C unk_tcm_alloc
#define unk_376CF unk_caller_alloc
#define unk_38286 unk_mem_alloc
#define unk_37E2D unk_invalid_write
#define unk_37DFA unk_invalid_platform
#define unk_3365A unk_invalid_tcm
#define unk_3706F unk_write_failure
#define unk_3489E unk_copy_failure

static void write_ptr(struct byte_storage *storage, size_t offset, const void *value)
{
    uint64_t encoded = (uint64_t)(uintptr_t)value;
    memcpy(storage->bytes + offset, &encoded, sizeof(encoded));
}
static void host_mutex_lock(uintptr_t mutex) { (void)mutex; mutex_lock_calls++; }
static void host_mutex_unlock(uintptr_t mutex) { (void)mutex; mutex_unlock_calls++; }
#define mutex_lock(value) host_mutex_lock((uintptr_t)(value))
#define mutex_unlock(value) host_mutex_unlock((uintptr_t)(value))
static int printk(const char *format, ...)
{
    va_list args;
    printk_calls++;
    last_printk_format = format;
    va_start(args, format);
    (void)va_arg(args, const char *);
    (void)va_arg(args, __int64);
    va_end(args);
    return 0;
}
static __int64 syna_request_managed_device(void)
{
    request_device_calls++;
    if (request_result_index < request_result_count)
        return request_results[request_result_index++];
    return 0;
}
static void devm_kfree(__int64 device, __int64 buffer)
{
    (void)device;
    devm_kfree_calls++;
    if (qword_31658 == buffer)
        qword_31658 = 0;
    free((void *)(uintptr_t)buffer);
}
static void *devm_kmalloc(__int64 device, size_t size, unsigned int flags)
{
    (void)device; (void)flags;
    devm_kmalloc_calls++;
    return malloc_failure ? NULL : malloc(size);
}
static __int64 raw_write_callback(void)
{
    return raw_write_result;
}
static unsigned long copy_from_user(void *destination, const void *source, size_t size)
{
    copy_calls++;
    if (copy_failure)
        return size ? 1UL : 0UL;
    memcpy(destination, source, size);
    return 0;
}
static void host_break(unsigned int value) { (void)value; break_calls++; }
#define __break(value) host_break(value)

#include "../../../reconstructed/zte_tpd/syna_cdev_ioctl_raw_write.c"

static void release_buffer(void)
{
    if (qword_31658) {
        free((void *)(uintptr_t)qword_31658);
        qword_31658 = 0;
    }
}
static void reset_environment(void)
{
    release_buffer();
    qword_31660 = 0;
    qword_31668 = 0;
    qword_31698 = 0;
    mutex_lock_calls = 0; mutex_unlock_calls = 0; printk_calls = 0;
    request_device_calls = 0; devm_kfree_calls = 0; devm_kmalloc_calls = 0;
    copy_calls = 0; break_calls = 0;
    request_result_count = 0; request_result_index = 0;
    memset(request_results, 0, sizeof(request_results));
    raw_write_result = 0; copy_failure = 0; malloc_failure = 0;
    last_printk_format = NULL;
}
static void set_request_results(const __int64 *results, unsigned int count)
{
    memcpy(request_results, results, count * sizeof(*results));
    request_result_count = count;
    request_result_index = 0;
}
static void configure_context(struct byte_storage *context, struct byte_storage *tcm,
                              struct byte_storage *platform, struct byte_storage *ops)
{
    memset(context, 0, sizeof(*context));
    memset(tcm, 0, sizeof(*tcm));
    memset(platform, 0, sizeof(*platform));
    memset(ops, 0, sizeof(*ops));
    write_ptr(context, 0, tcm);
    write_ptr(tcm, 0x48, platform);
    write_ptr(platform, 0x28, (const void *)(uintptr_t)raw_write_callback);
}
static int expect(int condition, const char *message)
{
    if (condition) return 0;
    fprintf(stderr, "%s\n", message);
    return 1;
}
static int call_raw_write(struct byte_storage *context, const void *user,
                          __int64 request, unsigned int length)
{
    return (int)syna_cdev_ioctl_raw_write((__int64)(uintptr_t)context,
                                           (unsigned __int64)(uintptr_t)user,
                                           request, length);
}
static int test_invalid_size_returns_einval(void)
{
    reset_environment();
    if (expect(call_raw_write(NULL, NULL, 3, 4) == -22, "invalid-size return")) return 1;
    return expect(mutex_lock_calls == 0 && mutex_unlock_calls == 0 && printk_calls == 1,
                  "invalid-size side effects");
}
static int test_zero_length_returns_einval(void)
{
    reset_environment();
    if (expect(call_raw_write(NULL, NULL, 9, 0) == -22, "zero-length return")) return 1;
    return expect(mutex_lock_calls == 0 && mutex_unlock_calls == 0 && printk_calls == 1,
                  "zero-length side effects");
}
static int test_existing_buffer_write_success(void)
{
    struct byte_storage context, tcm, platform, ops;
    uint8_t user[8] = {0xa5};
    reset_environment();
    configure_context(&context, &tcm, &platform, &ops);
    qword_31658 = (__int64)(uintptr_t)malloc(16);
    qword_31660 = 16;
    if (expect(call_raw_write(&context, user, 8, 4) == 4, "existing-buffer return")) return 1;
    return expect(copy_calls == 1 && mutex_lock_calls == 2 && mutex_unlock_calls == 2 &&
                  request_device_calls == 0 && qword_31698 == 0,
                  "existing-buffer success contract");
}
static int test_small_buffer_reallocates_and_writes(void)
{
    struct byte_storage context, tcm, platform, ops;
    const __int64 devices[] = {0x1234, 0x1234};
    uint8_t user[8] = {0};
    reset_environment();
    configure_context(&context, &tcm, &platform, &ops);
    set_request_results(devices, 2);
    qword_31658 = (__int64)(uintptr_t)malloc(2);
    qword_31660 = 2;
    if (expect(call_raw_write(&context, user, 8, 8) == 8, "realloc return")) return 1;
    return expect(copy_calls == 1 && devm_kfree_calls == 1 && devm_kmalloc_calls == 1 &&
                  request_device_calls == 2 && qword_31660 == 8 && qword_31698 == 0,
                  "realloc success contract");
}
static int test_managed_device_failure_returns_e243(void)
{
    struct byte_storage context, tcm, platform, ops;
    void *orphan;
    const __int64 failures[] = {0, 0};
    reset_environment();
    configure_context(&context, &tcm, &platform, &ops);
    set_request_results(failures, 2);
    orphan = malloc(2);
    qword_31658 = (__int64)(uintptr_t)orphan;
    qword_31660 = 2;
    if (expect(call_raw_write(&context, NULL, 8, 8) == -243, "managed-failure return")) {
        free(orphan);
        return 1;
    }
    free(orphan);
    return expect(qword_31658 == 0 && qword_31660 == 0 && copy_calls == 0 &&
                  mutex_lock_calls == 2 && mutex_unlock_calls == 2 && qword_31698 == 0,
                  "managed-failure contract");
}
static int test_malloc_failure_returns_e243(void)
{
    struct byte_storage context, tcm, platform, ops;
    const __int64 devices[] = {0x1234};
    reset_environment();
    configure_context(&context, &tcm, &platform, &ops);
    set_request_results(devices, 1);
    malloc_failure = 1;
    if (expect(call_raw_write(&context, NULL, 8, 8) == -243, "malloc-failure return")) return 1;
    return expect(qword_31658 == 0 && qword_31660 == 0 && copy_calls == 0 &&
                  devm_kmalloc_calls == 1 && mutex_lock_calls == 2 &&
                  mutex_unlock_calls == 2 && qword_31698 == 0,
                  "malloc-failure contract");
}
static int test_copy_failure_returns_e52_and_cleans(void)
{
    struct byte_storage context, tcm, platform, ops;
    uint8_t user[8] = {0};
    reset_environment();
    configure_context(&context, &tcm, &platform, &ops);
    qword_31658 = (__int64)(uintptr_t)malloc(8); qword_31660 = 8;
    copy_failure = 1;
    if (expect(call_raw_write(&context, user, 8, 4) == -52, "copy-failure return")) return 1;
    return expect(copy_calls == 1 && mutex_lock_calls == 2 && mutex_unlock_calls == 2 &&
                  qword_31698 == 0,
                  "copy-failure cleanup");
}
static int test_missing_tcm_returns_e241(void)
{
    struct byte_storage context, tcm, platform, ops;
    uint8_t user[4] = {0};
    reset_environment();
    configure_context(&context, &tcm, &platform, &ops);
    write_ptr(&context, 0, NULL);
    qword_31658 = (__int64)(uintptr_t)malloc(8); qword_31660 = 8;
    if (expect(call_raw_write(&context, user, 8, 4) == -241, "missing-tcm return")) return 1;
    return expect(copy_calls == 1 && mutex_lock_calls == 2 && mutex_unlock_calls == 2 &&
                  qword_31698 == 0,
                  "missing-tcm cleanup");
}
static int test_missing_write_operation_returns_e245(void)
{
    struct byte_storage context, tcm, platform, ops;
    uint8_t user[4] = {1, 2, 3, 4};
    reset_environment();
    configure_context(&context, &tcm, &platform, &ops);
    write_ptr(&platform, 0x28, NULL);
    qword_31658 = (__int64)(uintptr_t)malloc(8); qword_31660 = 8;
    if (expect(call_raw_write(&context, user, 8, 4) == -245, "missing-write return")) return 1;
    return expect(copy_calls == 1 && mutex_lock_calls == 2 && mutex_unlock_calls == 2 &&
                  qword_31698 == 0,
                  "missing-write cleanup");
}
static int test_write_callback_failure_returns_error(void)
{
    struct byte_storage context, tcm, platform, ops;
    uint8_t user[4] = {1, 2, 3, 4};
    reset_environment();
    configure_context(&context, &tcm, &platform, &ops);
    qword_31658 = (__int64)(uintptr_t)malloc(8); qword_31660 = 8;
    raw_write_result = -5;
    if (expect(call_raw_write(&context, user, 8, 4) == -5, "write-failure return")) return 1;
    return expect(copy_calls == 1 && mutex_lock_calls == 2 && mutex_unlock_calls == 2 &&
                  qword_31698 == 0,
                  "write-failure cleanup");
}
int main(void)
{
    if (test_invalid_size_returns_einval() || test_zero_length_returns_einval() ||
        test_existing_buffer_write_success() || test_small_buffer_reallocates_and_writes() ||
        test_managed_device_failure_returns_e243() || test_malloc_failure_returns_e243() ||
        test_copy_failure_returns_e52_and_cleans() || test_missing_tcm_returns_e241() ||
        test_missing_write_operation_returns_e245() || test_write_callback_failure_returns_error())
        return 1;
    puts("PASS syna_cdev_ioctl_raw_write host tests (10 cases)");
    return 0;
}
