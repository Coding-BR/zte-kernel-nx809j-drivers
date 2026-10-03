#include <stdint.h>
#include <stdio.h>
#include <string.h>

struct device {
    uint8_t bytes[0xa0];
};

static unsigned int printk_calls;
static const char *observed_format;
static const char *observed_name;
static unsigned int complete_calls;
static void *observed_completion;

static int test_printk(const char *format, const char *name)
{
    printk_calls++;
    observed_format = format;
    observed_name = name;
    return 0;
}

static void test_complete(void *completion)
{
    complete_calls++;
    observed_completion = completion;
}

#define __int64 long long
#define _QWORD uint64_t
#define _DWORD uint32_t
#define _BYTE uint8_t
#define printk(format, name) test_printk(format, name)
#define complete(value) test_complete((void *)(uintptr_t)(value))
#include "../../../reconstructed/zte_tpd/syna_pm_resume.c"
#undef complete
#undef printk
#undef _BYTE
#undef _DWORD
#undef _QWORD
#undef __int64

static int test_resume_completion_contract(void)
{
    struct device device;
    uint8_t core[0x580] __attribute__((aligned(8)));
    void *core_pointer = core;
    int result;

    memset(&device, 0, sizeof(device));
    memset(core, 0, sizeof(core));
    memcpy(device.bytes + 0x98, &core_pointer, sizeof(core_pointer));
    core[0x578] = 1;
    printk_calls = 0;
    observed_format = NULL;
    observed_name = NULL;
    complete_calls = 0;
    observed_completion = NULL;

    result = syna_pm_resume(&device);
    if (result != 0 || printk_calls != 1 ||
        strcmp(observed_format, "\0016[info ] %s: system resumes from pm_suspend") != 0 ||
        strcmp(observed_name, "syna_pm_resume") != 0 || core[0x578] != 0 ||
        complete_calls != 1 || observed_completion != core + 0x558)
        return fprintf(stderr, "resume completion contract mismatch\n"), 1;
    return 0;
}

int main(void)
{
    if (test_resume_completion_contract())
        return 1;
    puts("PASS syna_pm_resume host tests (1 case)");
    return 0;
}
