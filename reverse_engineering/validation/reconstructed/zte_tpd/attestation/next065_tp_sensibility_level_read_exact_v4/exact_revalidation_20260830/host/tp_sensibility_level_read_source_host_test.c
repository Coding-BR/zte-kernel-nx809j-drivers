#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

#define __user
#define __fastcall
typedef long long __int64;
typedef int16_t __int16;
typedef uint64_t _QWORD;
typedef uint32_t _DWORD;
#define __int8 char

struct file { int unused; };
static uint64_t fake_sp_words[228];
#define SP_EL0 0
#define _ReadStatusReg(reg) ((uintptr_t)fake_sp_words)

unsigned long tpd_cdev;
char unk_3A127[256] = "zte_tpd_log";

static unsigned int callback_calls;
static uintptr_t callback_argument;
static unsigned int printk_calls;

static void fake_callback(_QWORD cdev)
{
    callback_calls++;
    callback_argument = (uintptr_t)cdev;
}

static void stale_callback(_QWORD cdev)
{
    (void)cdev;
    callback_calls += 100;
}

int printk(const char *format, ...)
{
    (void)format;
    printk_calls++;
    return 0;
}

ssize_t simple_read_from_buffer(__int64 to, __int64 count, __int64 *offset,
                                const void *from, size_t available)
{
    size_t copied = available < (size_t)count ? available : (size_t)count;
    memcpy((void *)(uintptr_t)to, from, copied);
    *offset += (__int64)copied;
    return (ssize_t)copied;
}

#include "../../../reconstructed/zte_tpd/tp_sensibility_level_read.c"

struct fixture { uint8_t device[0xe00]; };

static void expect(int condition, const char *name, const char *message)
{
    if (!condition) {
        fprintf(stderr, "FAIL %s: %s\n", name, message);
        exit(1);
    }
}

static void store_ptr(uint8_t *base, size_t offset, void *value)
{
    memcpy(base + offset, &value, sizeof(value));
}

static void fixture_init(struct fixture *fixture, uint8_t value,
                         int with_callback)
{
    memset(fixture, 0, sizeof(*fixture));
    store_ptr(fixture->device, 0xda0, (void *)stale_callback);
    store_ptr(fixture->device, 0xda8,
              with_callback ? (void *)fake_callback : NULL);
    fixture->device[64] = value;
    tpd_cdev = (unsigned long)(uintptr_t)fixture->device;
    callback_calls = 0;
    callback_argument = 0;
    printk_calls = 0;
}

static void test_full_read_and_callback(void)
{
    const char *name = "full_read_and_callback";
    struct fixture fixture;
    struct file file = {0};
    loff_t offset = 0;
    char output[32] = {0};

    fixture_init(&fixture, 42, 1);
    expect(tp_sensibility_level_read(&file, output, sizeof(output), &offset) == 3,
           name, "read length differs");
    expect(strcmp(output, "42\n") == 0, name, "formatted value differs");
    expect(offset == 3, name, "offset was not advanced");
    expect(callback_calls == 1, name, "correct callback was not called");
    expect(callback_argument == (uintptr_t)fixture.device, name,
           "callback argument differs");
    expect(printk_calls == 1, name, "log contract differs");
}

static void test_eof_does_not_repeat_callback(void)
{
    const char *name = "eof_does_not_repeat_callback";
    struct fixture fixture;
    struct file file = {0};
    loff_t offset = 3;
    char output[32] = {0};

    fixture_init(&fixture, 42, 1);
    expect(tp_sensibility_level_read(&file, output, sizeof(output), &offset) == 0,
           name, "EOF result differs");
    expect(callback_calls == 0 && printk_calls == 0, name,
           "EOF caused side effects");
}

static void test_short_buffer_and_null_callback(void)
{
    const char *name = "short_buffer_and_null_callback";
    struct fixture fixture;
    struct file file = {0};
    loff_t offset = 0;
    char output[8] = {0};

    fixture_init(&fixture, 255, 0);
    expect(tp_sensibility_level_read(&file, output, 1, &offset) == 1, name,
           "short read length differs");
    expect(output[0] == '2' && offset == 1, name,
           "short read data differs");
    expect(callback_calls == 0 && printk_calls == 1, name,
           "null callback handling differs");
}

int main(void)
{
    test_full_read_and_callback();
    test_eof_does_not_repeat_callback();
    test_short_buffer_and_null_callback();
    puts("PASS tp_sensibility_level_read source host tests (3 cases)");
    return 0;
}
