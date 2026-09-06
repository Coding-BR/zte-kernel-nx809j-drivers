#include <stdint.h>
#include <stdio.h>
#include <string.h>

struct device {
    uint8_t bytes[0xa0];
};

static unsigned int printk_calls;
static const char *observed_format;
static const char *observed_name;

static int test_printk(const char *format, const char *name)
{
    printk_calls++;
    observed_format = format;
    observed_name = name;
    return 0;
}

#define __int64 long long
#define _QWORD uint64_t
#define _DWORD uint32_t
#define _BYTE uint8_t
#define printk(format, name) test_printk(format, name)
#include "../../../reconstructed/zte_tpd/syna_pm_suspend.c"
#undef printk
#undef _BYTE
#undef _DWORD
#undef _QWORD
#undef __int64

static int test_suspend_state_contract(void)
{
    struct device device;
    uint8_t core[0x580] __attribute__((aligned(8)));
    void *core_pointer = core;
    uint32_t report_state = 0x5a5a5a5a;
    int result;

    memset(&device, 0, sizeof(device));
    memset(core, 0, sizeof(core));
    memcpy(device.bytes + 0x98, &core_pointer, sizeof(core_pointer));
    memcpy(core + 0x558, &report_state, sizeof(report_state));
    printk_calls = 0;
    observed_format = NULL;
    observed_name = NULL;

    result = syna_pm_suspend(&device);
    memcpy(&report_state, core + 0x558, sizeof(report_state));
    if (result != 0 || printk_calls != 1 ||
        strcmp(observed_format, "\0016[info ] %s: system enters into pm_suspend") != 0 ||
        strcmp(observed_name, "syna_pm_suspend") != 0 ||
        core[0x578] != 1 || report_state != 0)
        return fprintf(stderr, "suspend state contract mismatch\n"), 1;
    return 0;
}

int main(void)
{
    if (test_suspend_state_contract())
        return 1;
    puts("PASS syna_pm_suspend host tests (1 case)");
    return 0;
}
