#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <sys/types.h>

#define __int64 long long
#define _QWORD uint64_t
#define __user

struct file {
    unsigned int unused;
};

struct tcm_storage {
    uint8_t bytes[0xb0];
};

union cdev_global_storage {
    uint64_t alignment;
    uint8_t bytes[0x60];
};

static union cdev_global_storage global_storage;
static unsigned int mutex_lock_calls;
static unsigned int mutex_unlock_calls;
static unsigned int raw_write_calls;
static unsigned int printk_calls;
static __int64 raw_write_result;
static __int64 observed_tcm_hcd;
static __int64 observed_buffer;
static __int64 observed_request;
static unsigned int observed_write_length;
static const char *observed_format;
static const char *observed_name;
static unsigned int observed_log_request;
static int observed_log_result;

#define g_cdev_data (*(__int64 *)(void *)(global_storage.bytes + 0x00))
#define qword_316A0 (*(_QWORD *)(void *)(global_storage.bytes + 0x50))

static void mutex_lock(void *mutex)
{
    (void)mutex;
    mutex_lock_calls++;
}

static void mutex_unlock(void *mutex)
{
    (void)mutex;
    mutex_unlock_calls++;
}

static __int64 syna_cdev_ioctl_raw_write(__int64 tcm_hcd, unsigned __int64 buffer,
                                         __int64 request, unsigned int write_length)
{
    raw_write_calls++;
    observed_tcm_hcd = tcm_hcd;
    observed_buffer = (__int64)buffer;
    observed_request = request;
    observed_write_length = write_length;
    return raw_write_result;
}

static int printk(const char *format, ...)
{
    va_list args;

    printk_calls++;
    observed_format = format;
    va_start(args, format);
    observed_name = va_arg(args, const char *);
    observed_log_request = va_arg(args, unsigned int);
    observed_log_result = va_arg(args, int);
    va_end(args);
    return 0;
}

#include "../../../reconstructed/zte_tpd/syna_cdev_write.c"

static void reset_environment(void)
{
    memset(&global_storage, 0, sizeof(global_storage));
    mutex_lock_calls = 0;
    mutex_unlock_calls = 0;
    raw_write_calls = 0;
    printk_calls = 0;
    raw_write_result = 0;
    observed_tcm_hcd = 0;
    observed_buffer = 0;
    observed_request = 0;
    observed_write_length = 0;
    observed_format = NULL;
    observed_name = NULL;
    observed_log_request = 0;
    observed_log_result = 0;
}

static int expect(int condition, const char *message)
{
    if (condition)
        return 0;
    fprintf(stderr, "%s\n", message);
    return 1;
}

static void set_tcm_hcd(struct tcm_storage *storage, uint64_t value)
{
    memcpy(storage->bytes + 0xa8, &value, sizeof(value));
}

static int test_zero_length_short_circuits(void)
{
    struct file file = {0};
    const char buffer[1] = {0};
    loff_t offset = 0;

    reset_environment();
    if (syna_cdev_write(&file, buffer, 0, &offset) != 0)
        return fprintf(stderr, "zero-length return mismatch\n"), 1;
    return expect(mutex_lock_calls == 0 && mutex_unlock_calls == 0 &&
                  raw_write_calls == 0 && printk_calls == 0,
                  "zero-length side effects");
}

static int test_full_write_preserves_arguments_and_unlocks(void)
{
    struct file file = {0};
    struct tcm_storage tcm = {0};
    const char buffer[23] = {0};
    loff_t offset = 0;
    const uint64_t expected_hcd = UINT64_C(0x1122334455667788);
    ssize_t result;

    reset_environment();
    set_tcm_hcd(&tcm, expected_hcd);
    g_cdev_data = (__int64)(uintptr_t)&tcm;
    raw_write_result = (int)sizeof(buffer);
    result = syna_cdev_write(&file, buffer, sizeof(buffer), &offset);
    if (expect(result == (ssize_t)sizeof(buffer), "full-write return"))
        return 1;
    return expect(mutex_lock_calls == 1 && mutex_unlock_calls == 1 &&
                  raw_write_calls == 1 && printk_calls == 0 &&
                  observed_tcm_hcd == (__int64)expected_hcd &&
                  observed_buffer == (__int64)(uintptr_t)buffer &&
                  observed_request == (unsigned int)sizeof(buffer) &&
                  observed_write_length == sizeof(buffer),
                  "full-write arguments or lock contract");
}

static int test_partial_write_logs_requested_and_returned_counts(void)
{
    struct file file = {0};
    struct tcm_storage tcm = {0};
    const char buffer[31] = {0};
    loff_t offset = 0;
    ssize_t result;

    reset_environment();
    set_tcm_hcd(&tcm, UINT64_C(0x99));
    g_cdev_data = (__int64)(uintptr_t)&tcm;
    raw_write_result = 7;
    result = syna_cdev_write(&file, buffer, sizeof(buffer), &offset);
    if (expect(result == 7 && mutex_lock_calls == 1 && mutex_unlock_calls == 1 &&
               raw_write_calls == 1 && printk_calls == 1,
               "partial-write call contract"))
        return 1;
    return expect(strcmp(observed_format,
                         "\0013[error] %s: Invalid write operation, request:%d, return:%d\n") == 0 &&
                  strcmp(observed_name, "syna_cdev_write") == 0 &&
                  observed_log_request == sizeof(buffer) && observed_log_result == 7,
                  "partial-write log contract");
}

static int test_negative_error_and_u32_request_truncation(void)
{
    struct file file = {0};
    struct tcm_storage tcm = {0};
    const char buffer[1] = {0};
    loff_t offset = 0;
    const size_t count = (size_t)UINT32_MAX + 5U;
    ssize_t result;

    reset_environment();
    set_tcm_hcd(&tcm, UINT64_C(0x88));
    g_cdev_data = (__int64)(uintptr_t)&tcm;
    raw_write_result = -52;
    result = syna_cdev_write(&file, buffer, count, &offset);
    if (expect(result == -52 && mutex_lock_calls == 1 && mutex_unlock_calls == 1 &&
               raw_write_calls == 1 && printk_calls == 1,
               "negative-error call contract"))
        return 1;
    return expect(observed_request == 4 && observed_write_length == 4 &&
                  observed_log_request == 4 && observed_log_result == -52,
                  "u32 truncation or negative-error log contract");
}

int main(void)
{
    if (test_zero_length_short_circuits() ||
        test_full_write_preserves_arguments_and_unlocks() ||
        test_partial_write_logs_requested_and_returned_counts() ||
        test_negative_error_and_u32_request_truncation())
        return 1;
    puts("PASS syna_cdev_write host tests (4 cases)");
    return 0;
}
