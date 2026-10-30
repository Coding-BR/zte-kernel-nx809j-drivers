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

#include "../../../reconstructed/zte_tpd/get_stability_level.c"

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

static void fixture_init(struct fixture *fixture, uint32_t value,
                         int with_callback)
{
    memset(fixture, 0, sizeof(*fixture));
    store_ptr(fixture->device, 0xd78, (void *)stale_callback);
    store_ptr(fixture->device, 0xd80,
              with_callback ? (void *)fake_callback : NULL);
    *(uint32_t *)(fixture->device + 0x46c) = value;
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

    fixture_init(&fixture, 7, 1);
    expect(get_stability_level(&file, output, sizeof(output), &offset) == 2,
           name, "read length differs");
    expect(strcmp(output, "7\n") == 0, name, "formatted value differs");
    expect(offset == 2, name, "offset was not advanced");
    expect(callback_calls == 1, name, "correct callback was not called");
    expect(callback_argument == (uintptr_t)fixture.device, name,
           "callback argument differs");
    expect(printk_calls == 1, name, "log contract differs");
}

static void test_eof_and_maximum_value(void)
{
    const char *name = "eof_and_maximum_value";
    struct fixture fixture;
    struct file file = {0};
    loff_t offset = 2;
    char output[32] = {0};

    fixture_init(&fixture, 7, 1);
    expect(get_stability_level(&file, output, sizeof(output), &offset) == 0,
           name, "EOF result differs");
    expect(callback_calls == 0 && printk_calls == 0, name,
           "EOF caused side effects");

    offset = 0;
    memset(output, 0, sizeof(output));
    fixture_init(&fixture, UINT32_MAX, 0);
    expect(get_stability_level(&file, output, sizeof(output), &offset) == 11,
           name, "maximum read length differs");
    expect(offset == 11, name, "maximum read offset differs");
    expect(strncmp(output, "429496729", 9) == 0, name,
           "maximum value prefix differs");
}

int main(void)
{
    test_full_read_and_callback();
    test_eof_and_maximum_value();
    puts("PASS get_stability_level source host tests (2 cases)");
    return 0;
}
