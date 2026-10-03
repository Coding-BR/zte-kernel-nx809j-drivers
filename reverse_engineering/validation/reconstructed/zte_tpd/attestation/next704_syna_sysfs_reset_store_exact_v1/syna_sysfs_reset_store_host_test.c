#include <stdarg.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

typedef long long __int64;
typedef uint8_t _BYTE;
typedef uint32_t _DWORD;
typedef uint64_t _QWORD;
#define __fastcall

struct kobject {
    uint8_t reserved_0000[0x18];
    void *parent;
};

struct kobj_attribute {
    int unused;
};

static uint8_t status_storage[0x720];
static unsigned int parse_calls;
static unsigned int printk_calls;
static unsigned int event_calls;
static unsigned int reset_calls;
static unsigned int callback_calls;
static int forced_parse_result;
static int reset_result;
static unsigned int reset_argument;
static unsigned int event_argument;
static void *event_device;

static const char unk_35C01[] = "\0014[warn ] %s: Device is NOT connected\n";
static const char unk_3A417[] = "\0013[error] %s: No hardware reset support\n";
static const char unk_337D6[] = "\0014[warn ] %s: Unknown option %d (1:sw / 2:hw)\n";
static const char unk_39948[] = "\0013[error] %s: Fail to do reset\n";

#define SP_EL0 0
#define _ReadStatusReg(reg) ((uintptr_t)status_storage)

static int kstrtouint(__int64 text_address, unsigned int base,
                      unsigned int *value)
{
    char *end = NULL;
    unsigned long parsed;
    const char *text = (const char *)(uintptr_t)text_address;
    (void)base;
    parse_calls++;
    if (forced_parse_result)
        return forced_parse_result;
    parsed = strtoul(text, &end, 10);
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

static void __break(unsigned int code)
{
    (void)code;
}

static void syna_tcm_get_event_data(__int64 device, void *event,
                                    unsigned int argument)
{
    event_calls++;
    event_device = (void *)(uintptr_t)device;
    event_argument = argument;
    *(uint8_t *)event = 0x5a;
}

static int syna_tcm_reset(__int64 device, unsigned int argument)
{
    (void)device;
    reset_calls++;
    reset_argument = argument;
    return reset_result;
}

static void hardware_reset_callback(_QWORD api)
{
    (void)api;
    callback_calls++;
}

#include "../../../reconstructed/zte_tpd/syna_sysfs_reset_store.c"

struct test_fixture {
    struct kobject kobj;
    uint8_t parent[0x20];
    uint8_t tcm[0xA0];
    uint8_t state[0x600];
    uint8_t api[0x200];
    uint8_t device[0x220];
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

static void reset_fixture(struct test_fixture *fixture)
{
    void *tcm_pointer;
    void *state_pointer;
    void *api_pointer;
    void *device_pointer;
    memset(fixture, 0, sizeof(*fixture));
    memset(status_storage, 0, sizeof(status_storage));
    fixture->kobj.parent = fixture->parent;
    tcm_pointer = fixture->tcm;
    state_pointer = fixture->state;
    api_pointer = fixture->api;
    device_pointer = fixture->device;
    memcpy(fixture->parent + 0x18, &tcm_pointer, sizeof(tcm_pointer));
    memcpy(fixture->tcm + 0x98, &state_pointer, sizeof(state_pointer));
    memcpy(fixture->state + 0x270, &api_pointer, sizeof(api_pointer));
    memcpy(fixture->state, &device_pointer, sizeof(device_pointer));
    *(unsigned int *)(fixture->device + 0x20c) = 0x12345678;
    *(uint64_t *)(status_storage + 0x710) = 0xfeedfacecafebeefULL;
    parse_calls = 0;
    printk_calls = 0;
    event_calls = 0;
    reset_calls = 0;
    callback_calls = 0;
    forced_parse_result = 0;
    reset_result = 0;
    reset_argument = 0;
    event_argument = 99;
    event_device = NULL;
}

static void install_callback(struct test_fixture *fixture)
{
    void (*callback)(_QWORD) = hardware_reset_callback;
    memcpy(fixture->api + 0x188, &callback, sizeof(callback));
}

static ssize_t call_reset(struct test_fixture *fixture, const char *input,
                          size_t count)
{
    return syna_sysfs_reset_store(&fixture->kobj, NULL, input, count);
}

static void test_parse_failure(void)
{
    struct test_fixture fixture;
    reset_fixture(&fixture);
    forced_parse_result = -34;
    expect(call_reset(&fixture, "1", 1) == -22, "parse_failure", "return");
    expect(parse_calls == 1 && printk_calls == 0, "parse_failure", "calls");
}

static void test_disconnected(void)
{
    struct test_fixture fixture;
    reset_fixture(&fixture);
    expect(call_reset(&fixture, "1", 1) == 1, "disconnected", "return");
    expect(parse_calls == 1 && printk_calls == 1, "disconnected", "calls");
    expect(reset_calls == 0 && event_calls == 0, "disconnected", "side effects");
}

static void test_software_reset_success(void)
{
    struct test_fixture fixture;
    reset_fixture(&fixture);
    fixture.state[0x582] = 1;
    *(unsigned int *)(fixture.state + 0x57c) = 0;
    expect(call_reset(&fixture, "1", 1) == 1, "software_success", "return");
    expect(reset_calls == 1 && reset_argument == 0x12345678,
           "software_success", "reset call");
    expect(printk_calls == 0 && event_calls == 0, "software_success", "logs");
}

static void test_software_reset_failure(void)
{
    struct test_fixture fixture;
    reset_fixture(&fixture);
    fixture.state[0x582] = 1;
    *(unsigned int *)(fixture.state + 0x57c) = 0;
    reset_result = -5;
    expect(call_reset(&fixture, "1", 1) == -5, "software_failure", "return");
    expect(reset_calls == 1 && printk_calls == 1,
           "software_failure", "calls");
}

static void test_hardware_reset_with_event(void)
{
    struct test_fixture fixture;
    reset_fixture(&fixture);
    fixture.state[0x582] = 1;
    *(unsigned int *)(fixture.state + 0x57c) = 3;
    install_callback(&fixture);
    expect(call_reset(&fixture, "2", 1) == 1, "hardware_event", "return");
    expect(callback_calls == 1 && event_calls == 1,
           "hardware_event", "calls");
    expect(event_device == fixture.device && event_argument == 0,
           "hardware_event", "event args");
}

static void test_hardware_reset_without_event(void)
{
    struct test_fixture fixture;
    reset_fixture(&fixture);
    fixture.state[0x582] = 1;
    *(unsigned int *)(fixture.state + 0x57c) = 3;
    fixture.api[0xbc] = 1;
    install_callback(&fixture);
    expect(call_reset(&fixture, "2", 1) == 1, "hardware_no_event", "return");
    expect(callback_calls == 1 && event_calls == 0,
           "hardware_no_event", "calls");
}

static void test_missing_hardware_callback(void)
{
    struct test_fixture fixture;
    reset_fixture(&fixture);
    fixture.state[0x582] = 1;
    *(unsigned int *)(fixture.state + 0x57c) = 3;
    expect(call_reset(&fixture, "2", 1) == 0,
           "missing_callback", "return");
    expect(printk_calls == 1 && callback_calls == 0,
           "missing_callback", "calls");
}

static void test_unknown_option(void)
{
    struct test_fixture fixture;
    reset_fixture(&fixture);
    fixture.state[0x582] = 1;
    *(unsigned int *)(fixture.state + 0x57c) = 0;
    expect(call_reset(&fixture, "9", 1) == -22, "unknown_option", "return");
    expect(printk_calls == 1 && reset_calls == 0,
           "unknown_option", "calls");
}

int main(void)
{
    test_parse_failure();
    test_disconnected();
    test_software_reset_success();
    test_software_reset_failure();
    test_hardware_reset_with_event();
    test_hardware_reset_without_event();
    test_missing_hardware_callback();
    test_unknown_option();
    if (failures != 0)
        return 1;
    puts("PASS syna_sysfs_reset_store host tests (8 cases)");
    return 0;
}
