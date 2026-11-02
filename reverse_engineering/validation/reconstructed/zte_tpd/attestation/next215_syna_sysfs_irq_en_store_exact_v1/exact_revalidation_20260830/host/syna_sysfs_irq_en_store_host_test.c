#include <stdarg.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef long long __int64;
typedef uint8_t _BYTE;
typedef uint32_t _DWORD;
typedef uint64_t _QWORD;
#define __fastcall
#define nullptr NULL

struct kobject {
    uint8_t reserved_0000[24];
    void *parent_data;
};

struct kobj_attribute {
    int unused;
};

static union {
    max_align_t alignment;
    uint8_t bytes[2048];
} status_storage;

#define SP_EL0 0
#define _ReadStatusReg(reg) ((uintptr_t)status_storage.bytes)

static const char unk_35C01[] = "\0014[warn ] %s: Device is NOT connected\n";
static const char unk_382A7[] = "\0015[info ] %s: In bare connection mode, no irq support\n";
static const char unk_32624[] = "\0014[warn ] %s: Unknown option %d (0:disable / 1:enable)\n";
static char unk_33CD2[] = "\0013[error] %s: Fail to enable interrupt\n";
static char unk_33001[] = "\0013[error] %s: Fail to disable interrupt\n";

static unsigned int parse_calls;
static unsigned int printk_calls;
static int forced_parse_result;
static int callback_result;
static unsigned int callback_calls;

static int kstrtouint(__int64 text_address, unsigned int base,
                      unsigned int *value)
{
    char *end = NULL;
    unsigned long parsed;
    const char *text = (const char *)(uintptr_t)text_address;

    parse_calls++;
    if (forced_parse_result)
        return forced_parse_result;
    parsed = strtoul(text, &end, base);
    if (end == text || (*end != '\0' && *end != '\n'))
        return -22;
    *value = (unsigned int)parsed;
    return 0;
}

static int printk(const char *format, ...)
{
    (void)format;
    printk_calls++;
    return 0;
}

static __int64 irq_callback(void)
{
    callback_calls++;
    return callback_result;
}

#include "../../../reconstructed/zte_tpd/syna_sysfs_irq_en_store.c"

struct test_fixture {
    struct kobject kobj;
    uint8_t owner[64];
    uint8_t intermediate[256];
    uint8_t state[1536];
    uint8_t api[128];
};

static int failures;

static void fail(const char *name, const char *message)
{
    fprintf(stderr, "FAIL %s: %s\n", name, message);
    failures++;
}

static void expect(int condition, const char *name, const char *message)
{
    if (!condition)
        fail(name, message);
}

static void reset_state(void)
{
    memset(&status_storage, 0, sizeof(status_storage));
    parse_calls = 0;
    printk_calls = 0;
    forced_parse_result = 0;
    callback_result = 0;
    callback_calls = 0;
}

static void setup_fixture(struct test_fixture *fixture, int connected,
                          int bare_connection, int install_callback)
{
    void *owner_pointer = fixture->owner;
    void *intermediate_pointer = fixture->intermediate;
    void *state_pointer = fixture->state;
    void *api_pointer = fixture->api;
    void (*callback_pointer)(void) = (void (*)(void))irq_callback;

    memset(fixture, 0, sizeof(*fixture));
    memcpy(&fixture->kobj.parent_data, &owner_pointer, sizeof(owner_pointer));
    memcpy(fixture->owner + 24, &intermediate_pointer, sizeof(intermediate_pointer));
    memcpy(fixture->intermediate + 152, &state_pointer, sizeof(state_pointer));
    if (bare_connection)
        api_pointer = (void *)(intptr_t)-8;
    memcpy(fixture->state + 624, &api_pointer, sizeof(api_pointer));
    if (install_callback)
        memcpy(fixture->api + 64, &callback_pointer, sizeof(callback_pointer));
    *(uint32_t *)(fixture->state + 1404) = bare_connection ? 0 : 2;
    *(uint8_t *)(fixture->state + 1410) = connected ? 1 : 0;
}

static void test_parse_failure(void)
{
    struct test_fixture fixture;
    const char invalid[] = "not-a-number";

    reset_state();
    setup_fixture(&fixture, 1, 0, 1);
    expect(syna_sysfs_irq_en_store(&fixture.kobj, NULL, invalid, 17) == -22,
           "parse-failure", "invalid input must return -EINVAL");
    expect(parse_calls == 1 && callback_calls == 0 && printk_calls == 0,
           "parse-failure", "parse failure must stop before callbacks and logs");
}

static void test_missing_callback(void)
{
    struct test_fixture fixture;

    reset_state();
    setup_fixture(&fixture, 1, 0, 0);
    expect(syna_sysfs_irq_en_store(&fixture.kobj, NULL, "1", 1) == 0,
           "missing-callback", "missing callback must return zero");
    expect(callback_calls == 0 && printk_calls == 0,
           "missing-callback", "missing callback must have no side effects");
}

static void test_disconnected(void)
{
    struct test_fixture fixture;

    reset_state();
    setup_fixture(&fixture, 0, 0, 1);
    expect(syna_sysfs_irq_en_store(&fixture.kobj, NULL, "1", 1) == 1,
           "disconnected", "disconnected hardware must preserve count");
    expect(callback_calls == 0 && printk_calls == 1,
           "disconnected", "disconnected hardware must log once");
}

static void test_bare_connection(void)
{
    struct test_fixture fixture;

    reset_state();
    setup_fixture(&fixture, 1, 1, 1);
    expect(syna_sysfs_irq_en_store(&fixture.kobj, NULL, "1", 1) == 0,
           "bare-connection", "bare connection must return the original count");
    expect(callback_calls == 0 && printk_calls == 0,
           "bare-connection", "missing API must return without logging");
}

static void test_enable_success(void)
{
    struct test_fixture fixture;

    reset_state();
    setup_fixture(&fixture, 1, 0, 1);
    callback_result = 0;
    expect(syna_sysfs_irq_en_store(&fixture.kobj, NULL, "1", 7) == 7,
           "enable-success", "successful enable must return count");
    expect(callback_calls == 1 && printk_calls == 0,
           "enable-success", "successful enable must call callback once");
}

static void test_enable_failure(void)
{
    struct test_fixture fixture;

    reset_state();
    setup_fixture(&fixture, 1, 0, 1);
    callback_result = -5;
    expect(syna_sysfs_irq_en_store(&fixture.kobj, NULL, "1", 7) == -5,
           "enable-failure", "failed enable must return callback error");
    expect(callback_calls == 1 && printk_calls == 1,
           "enable-failure", "failed enable must log once");
}

static void test_disable_success(void)
{
    struct test_fixture fixture;

    reset_state();
    setup_fixture(&fixture, 1, 0, 1);
    callback_result = 0;
    expect(syna_sysfs_irq_en_store(&fixture.kobj, NULL, "0", 7) == 7,
           "disable-success", "successful disable must return count");
    expect(callback_calls == 1 && printk_calls == 0,
           "disable-success", "successful disable must call callback once");
}

static void test_disable_failure(void)
{
    struct test_fixture fixture;

    reset_state();
    setup_fixture(&fixture, 1, 0, 1);
    callback_result = -6;
    expect(syna_sysfs_irq_en_store(&fixture.kobj, NULL, "0", 7) == -6,
           "disable-failure", "failed disable must return callback error");
    expect(callback_calls == 1 && printk_calls == 1,
           "disable-failure", "failed disable must log once");
}

static void test_unknown_option(void)
{
    struct test_fixture fixture;

    reset_state();
    setup_fixture(&fixture, 1, 0, 1);
    expect(syna_sysfs_irq_en_store(&fixture.kobj, NULL, "2", 7) == -22,
           "unknown-option", "unknown option must return -EINVAL");
    expect(callback_calls == 0 && printk_calls == 1,
           "unknown-option", "unknown option must log once");
}

static void test_bare_mode_state_three(void)
{
    struct test_fixture fixture;

    reset_state();
    setup_fixture(&fixture, 1, 0, 1);
    *(uint32_t *)(fixture.state + 1404) = 3;
    expect(syna_sysfs_irq_en_store(&fixture.kobj, NULL, "1", 7) == 7,
           "state-three", "bare-mode state must preserve count");
    expect(callback_calls == 0 && printk_calls == 1,
           "state-three", "bare-mode state must log once");
}

int main(void)
{
    test_parse_failure();
    test_missing_callback();
    test_disconnected();
    test_bare_connection();
    test_enable_success();
    test_enable_failure();
    test_disable_success();
    test_disable_failure();
    test_unknown_option();
    test_bare_mode_state_three();
    if (failures != 0)
        return 1;
    puts("PASS syna_sysfs_irq_en_store host tests (10 cases)");
    return 0;
}
