#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef int64_t __int64;

#define _BYTE uint8_t
#define __int8 char
#define __fastcall

static uint8_t fixture[0x80];
static uintptr_t mutex_address;
static unsigned int mutex_calls;
static unsigned int printk_calls;
static unsigned int printed_depth;

void mutex_lock(uintptr_t address)
{
    mutex_address = address;
    mutex_calls++;
}

int printk(const char *format, const char *name, unsigned int depth)
{
    (void)format;
    (void)name;
    printk_calls++;
    printed_depth = depth;
    return 0;
}

#include "../../../../../kernel_development/drivers/reconstructed/zte_tpd/syna_tcm_buf_lock.c"

static void check(int condition, const char *name, unsigned int *failures)
{
    if (condition)
        printf("PASS %s\n", name);
    else {
        printf("FAIL %s\n", name);
        (*failures)++;
    }
}

static void reset_fixture(uint8_t depth)
{
    memset(fixture, 0, sizeof(fixture));
    fixture[0x40] = depth;
    mutex_address = 0;
    mutex_calls = 0;
    printk_calls = 0;
    printed_depth = 0;
}

static void verify_uncontended(unsigned int *failures)
{
    reset_fixture(0);
    syna_tcm_buf_lock((__int64)(uintptr_t)fixture);
    check(mutex_calls == 1, "uncontended_mutex_once", failures);
    check(mutex_address == (uintptr_t)fixture + 0x10, "uncontended_mutex_offset", failures);
    check(fixture[0x40] == 1, "uncontended_depth_increment", failures);
    check(printk_calls == 0, "uncontended_no_warning", failures);
}

static void verify_reentrant(unsigned int *failures)
{
    reset_fixture(3);
    syna_tcm_buf_lock((__int64)(uintptr_t)fixture);
    check(mutex_calls == 1, "reentrant_mutex_once", failures);
    check(fixture[0x40] == 4, "reentrant_depth_increment", failures);
    check(printk_calls == 1, "reentrant_warning_once", failures);
    check(printed_depth == 3, "reentrant_warning_depth", failures);
}

static void verify_u8_wrap(unsigned int *failures)
{
    reset_fixture(255);
    syna_tcm_buf_lock((__int64)(uintptr_t)fixture);
    check(mutex_calls == 1, "wrap_mutex_once", failures);
    check(fixture[0x40] == 0, "wrap_u8_semantics", failures);
    check(printk_calls == 1 && printed_depth == 255, "wrap_warning_depth", failures);
}

int main(void)
{
    unsigned int failures = 0;

    verify_uncontended(&failures);
    verify_reentrant(&failures);
    verify_u8_wrap(&failures);
    printf("SUMMARY tests=11 failures=%u\n", failures);
    return failures ? 1 : 0;
}
