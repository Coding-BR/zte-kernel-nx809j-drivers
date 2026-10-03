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
#define LOBYTE(value) (*(uint8_t *)&(value))
#define HIDWORD(value) (*((uint32_t *)&(value) + 1))
#define LODWORD(value) (*(uint32_t *)&(value))

struct byte_storage { _Alignas(uint64_t) uint8_t bytes[0x500]; };
static __int64 qword_31658;
static __int64 qword_31660;
static __int64 qword_31668;
static uint8_t qword_31698;
static const char unk_388A5[] = "invalid-size";
static const char unk_3A9D0[] = "zero-length";
static const char unk_38244[] = "buffer-lock";
static const char unk_3BE43[] = "managed-free";
static const char unk_3703C[] = "buffer-alloc";
static const char unk_376CF[] = "raw-read-alloc";
static const char unk_38286[] = "managed-alloc";
static const char unk_3365A[] = "invalid-tcm";
static const char unk_37DFA[] = "invalid-platform";
static const char unk_3617E[] = "invalid-read-op";
static const char unk_3B845[] = "raw-read-failure";
static const char unk_36141[] = "copy-failure";

static unsigned int mutex_lock_calls;
static unsigned int mutex_unlock_calls;
static unsigned int printk_calls;
static unsigned int request_device_calls;
static unsigned int devm_kfree_calls;
static unsigned int devm_kmalloc_calls;
static unsigned int copy_calls;
static unsigned int break_calls;
static __int64 managed_device;
static __int64 raw_read_result;
static int copy_failure;
static const char *last_printk_format;
static const char *last_printk_name;
static __int64 last_printk_value;

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
    last_printk_name = va_arg(args, const char *);
    last_printk_value = va_arg(args, __int64);
    va_end(args);
    return 0;
}
static __int64 syna_request_managed_device(void)
{
    request_device_calls++;
    return managed_device;
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
    return malloc(size);
}
static __int64 raw_read_callback(void)
{
    if (raw_read_result == 0 && qword_31658)
        memset((void *)(uintptr_t)qword_31658, 0xa5, (size_t)qword_31660);
    return raw_read_result;
}
static unsigned long copy_to_user(void *destination, const void *source, size_t size)
{
    copy_calls++;
    if (copy_failure)
        return 1;
    memcpy(destination, source, size);
    return 0;
}
static void host_break(unsigned int value) { (void)value; break_calls++; }
#define __break(value) host_break(value)

#include "../../../reconstructed/zte_tpd/syna_cdev_ioctl_raw_read.c"

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
    managed_device = 0; raw_read_result = 0; copy_failure = 0;
    last_printk_format = NULL; last_printk_name = NULL; last_printk_value = 0;
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
    write_ptr(platform, 0x20, (const void *)(uintptr_t)raw_read_callback);
}
static int expect(int condition, const char *message)
{
    if (condition) return 0;
    fprintf(stderr, "%s\n", message);
    return 1;
}
static int call_raw_read(struct byte_storage *context, void *user, __int64 request,
                         unsigned int length)
{
    return (int)syna_cdev_ioctl_raw_read((__int64)(uintptr_t)context,
                                         (unsigned __int64)(uintptr_t)user,
                                         request, length);
}
static int test_invalid_size_returns_einval(void)
{
    reset_environment();
    if (expect(call_raw_read(NULL, NULL, 3, 4) == -22, "invalid-size return")) return 1;
    return expect(mutex_lock_calls == 0 && mutex_unlock_calls == 0 && printk_calls == 1,
                  "invalid-size side effects");
}
static int test_zero_length_returns_zero(void)
{
    reset_environment();
    if (expect(call_raw_read(NULL, NULL, 9, 0) == 0, "zero-length return")) return 1;
    return expect(mutex_lock_calls == 0 && mutex_unlock_calls == 0 && printk_calls == 1,
                  "zero-length side effects");
}
static int test_existing_buffer_success(void)
{
    struct byte_storage context, tcm, platform, ops;
    uint8_t user[8] = {0};
    reset_environment();
    configure_context(&context, &tcm, &platform, &ops);
    qword_31658 = (__int64)(uintptr_t)malloc(16);
    qword_31660 = 16;
    if (expect(call_raw_read(&context, user, 8, 4) == 4, "existing-buffer return")) return 1;
    return expect(user[0] == 0xa5 && user[3] == 0xa5 && qword_31698 == 0 &&
                  mutex_lock_calls == 2 && mutex_unlock_calls == 2 && copy_calls == 1 &&
                  request_device_calls == 0 && break_calls == 0,
                  "existing-buffer success contract");
}
static int test_small_buffer_reallocates_and_succeeds(void)
{
    struct byte_storage context, tcm, platform, ops;
    uint8_t user[8] = {0};
    reset_environment();
    configure_context(&context, &tcm, &platform, &ops);
    qword_31658 = (__int64)(uintptr_t)malloc(2);
    qword_31660 = 2;
    managed_device = 0x1234;
    if (expect(call_raw_read(&context, user, 8, 8) == 8, "realloc return")) return 1;
    return expect(user[0] == 0xa5 && user[7] == 0xa5 && qword_31660 == 8 &&
                  devm_kfree_calls == 1 && devm_kmalloc_calls == 1 &&
                  request_device_calls == 2 && qword_31698 == 0,
                  "realloc success contract");
}
static int test_managed_device_failure_returns_alloc_error(void)
{
    struct byte_storage context, tcm, platform, ops;
    void *orphan;
    reset_environment();
    configure_context(&context, &tcm, &platform, &ops);
    orphan = malloc(2);
    qword_31658 = (__int64)(uintptr_t)orphan;
    qword_31660 = 2;
    if (expect(call_raw_read(&context, NULL, 8, 8) == -243, "managed-failure return")) {
        free(orphan); qword_31658 = 0; return 1;
    }
    free(orphan);
    qword_31658 = 0;
    return expect(qword_31660 == 0 && devm_kfree_calls == 0 && devm_kmalloc_calls == 0 &&
                  mutex_lock_calls == 2 && mutex_unlock_calls == 2 && qword_31698 == 0,
                  "managed-failure contract");
}
static int test_raw_read_failure_unlocks_and_returns_error(void)
{
    struct byte_storage context, tcm, platform, ops;
    reset_environment();
    configure_context(&context, &tcm, &platform, &ops);
    qword_31658 = (__int64)(uintptr_t)malloc(8); qword_31660 = 8;
    raw_read_result = -5;
    if (expect(call_raw_read(&context, NULL, 8, 4) == -5, "raw-read failure return")) return 1;
    return expect(mutex_lock_calls == 2 && mutex_unlock_calls == 2 && copy_calls == 0 &&
                  qword_31698 == 0,
                  "raw-read failure cleanup");
}
static int test_copy_failure_returns_e52_and_unlocks(void)
{
    struct byte_storage context, tcm, platform, ops;
    uint8_t user[8] = {0};
    reset_environment();
    configure_context(&context, &tcm, &platform, &ops);
    qword_31658 = (__int64)(uintptr_t)malloc(8); qword_31660 = 8;
    copy_failure = 1;
    if (expect(call_raw_read(&context, user, 8, 4) == -52, "copy failure return")) return 1;
    return expect(mutex_lock_calls == 2 && mutex_unlock_calls == 2 && copy_calls == 1 &&
                  qword_31698 == 0,
                  "copy failure cleanup");
}
static int test_missing_tcm_handle_returns_efault(void)
{
    struct byte_storage context, tcm, platform, ops;
    reset_environment();
    configure_context(&context, &tcm, &platform, &ops);
    write_ptr(&context, 0, NULL);
    qword_31658 = (__int64)(uintptr_t)malloc(8); qword_31660 = 8;
    if (expect(call_raw_read(&context, NULL, 8, 4) == -241, "missing-tcm return")) return 1;
    return expect(mutex_lock_calls == 2 && mutex_unlock_calls == 2 && printk_calls >= 2 &&
                  qword_31698 == 0,
                  "missing-tcm cleanup");
}
int main(void)
{
    if (test_invalid_size_returns_einval() || test_zero_length_returns_zero() ||
        test_existing_buffer_success() || test_small_buffer_reallocates_and_succeeds() ||
        test_managed_device_failure_returns_alloc_error() ||
        test_raw_read_failure_unlocks_and_returns_error() ||
        test_copy_failure_returns_e52_and_unlocks() ||
        test_missing_tcm_handle_returns_efault()) return 1;
    puts("PASS syna_cdev_ioctl_raw_read host tests (8 cases)");
    return 0;
}
