#include <errno.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

#define __user
#define __fastcall
typedef long long __int64;
typedef uint64_t _QWORD;

struct file { int unused; };
static uint64_t fake_sp_words[228];
#define SP_EL0 0
#define _ReadStatusReg(reg) ((uintptr_t)fake_sp_words)

unsigned long tpd_cdev;
char unk_374F7[256] = "zte_tpd_log";

static unsigned int callback_calls;
static uintptr_t callback_argument;
static unsigned int callback_value;
static unsigned int printk_calls;

static void fake_callback(__int64 cdev, __int64 value)
{
    callback_calls++;
    callback_argument = (uintptr_t)cdev;
    callback_value = (unsigned int)value;
}

static void stale_callback(__int64 cdev, __int64 value)
{
    (void)cdev;
    (void)value;
    callback_calls += 100;
}

int printk(const char *format, ...)
{
    (void)format;
    printk_calls++;
    return 0;
}

int kstrtouint_from_user(__int64 buffer, __int64 count, unsigned int base,
                         unsigned int *result)
{
    char input[64];
    char *end;
    unsigned long value;
    const char *user_buffer = (const char *)(uintptr_t)buffer;

    if (base != 10 || count == 0 || (size_t)count >= sizeof(input))
        return -EINVAL;
    memcpy(input, user_buffer, (size_t)count);
    input[count] = '\0';
    errno = 0;
    value = strtoul(input, &end, base);
    if (errno != 0 || end == input ||
        (*end != '\0' && *end != '\n') || value > UINT32_MAX)
        return -EINVAL;
    *result = (unsigned int)value;
    return 0;
}

#include "../../../reconstructed/zte_tpd/set_play_game.c"

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

static void fixture_init(struct fixture *fixture, int with_callback)
{
    memset(fixture, 0, sizeof(*fixture));
    store_ptr(fixture->device, 0xd48, (void *)stale_callback);
    store_ptr(fixture->device, 0xd50,
              with_callback ? (void *)fake_callback : NULL);
    tpd_cdev = (unsigned long)(uintptr_t)fixture->device;
    callback_calls = 0;
    callback_argument = 0;
    callback_value = 99;
    printk_calls = 0;
}

static void test_valid_values_and_callback(void)
{
    const char *name = "valid_values_and_callback";
    struct fixture fixture;
    struct file file = {0};
    loff_t offset = 0;

    fixture_init(&fixture, 1);
    expect(set_play_game(&file, "0", 1, &offset) == 1, name,
           "zero return length differs");
    expect(callback_calls == 1 && callback_value == 0, name,
           "zero value differs");
    expect(callback_argument == (uintptr_t)fixture.device, name,
           "callback context differs");
    expect(printk_calls == 1, name, "zero log contract differs");

    expect(set_play_game(&file, "7\n", 2, &offset) == 2, name,
           "nonzero return length differs");
    expect(callback_calls == 2 && callback_value == 7, name,
           "nonzero value differs");
    expect(printk_calls == 2, name, "nonzero log contract differs");
}

static void test_invalid_input_has_no_side_effect(void)
{
    const char *name = "invalid_input_has_no_side_effect";
    struct fixture fixture;
    struct file file = {0};
    loff_t offset = 0;

    fixture_init(&fixture, 1);
    expect(set_play_game(&file, "invalid", 7, &offset) == -EINVAL, name,
           "invalid input return differs");
    expect(callback_calls == 0 && printk_calls == 0, name,
           "invalid input caused side effects");
    expect(set_play_game(&file, "4294967296", 10, &offset) == -EINVAL, name,
           "out of range return differs");
    expect(callback_calls == 0 && printk_calls == 0, name,
           "out of range input caused side effects");
}

static void test_null_callback_and_empty_input(void)
{
    const char *name = "null_callback_and_empty_input";
    struct fixture fixture;
    struct file file = {0};
    loff_t offset = 0;

    fixture_init(&fixture, 0);
    expect(set_play_game(&file, "1", 1, &offset) == 1, name,
           "null callback valid return differs");
    expect(callback_calls == 0 && printk_calls == 1, name,
           "null callback handling differs");
    expect(set_play_game(&file, "", 0, &offset) == -EINVAL, name,
           "empty input return differs");
    expect(printk_calls == 1, name, "empty input caused logging");
}

int main(void)
{
    test_valid_values_and_callback();
    test_invalid_input_has_no_side_effect();
    test_null_callback_and_empty_input();
    puts("PASS set_play_game source host tests (3 cases)");
    return 0;
}
