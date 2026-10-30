#include <stdint.h>
#include <stdio.h>

struct platform_driver {
    unsigned int marker;
};

struct module {
    unsigned int marker;
};

struct platform_driver syna_dev_driver;
static struct module test_module;
static int hw_init_result;
static unsigned int sleep_calls;
static unsigned int observed_sleep_ms;
static unsigned int register_calls;
static struct platform_driver *observed_driver;
static struct module *observed_owner;

static int syna_hw_interface_init(void)
{
    return hw_init_result;
}

static void test_msleep(unsigned int milliseconds)
{
    sleep_calls++;
    observed_sleep_ms = milliseconds;
}

static int test_platform_driver_register(struct platform_driver *driver,
                                         struct module *owner)
{
    register_calls++;
    observed_driver = driver;
    observed_owner = owner;
    return -77;
}

#define THIS_MODULE (&test_module)
#define msleep(milliseconds) test_msleep(milliseconds)
#define _platform_driver_register(driver, owner) \
    test_platform_driver_register(driver, owner)
#define _DEFS_H
#include "../../../reconstructed/zte_tpd/syna_dev_module_init.c"
#undef _DEFS_H
#undef _platform_driver_register
#undef msleep
#undef THIS_MODULE

static void reset_state(int result)
{
    hw_init_result = result;
    sleep_calls = 0;
    observed_sleep_ms = 0;
    register_calls = 0;
    observed_driver = NULL;
    observed_owner = NULL;
}

static int test_negative_init_stops_lifecycle(void)
{
    int result;

    reset_state(-19);
    result = syna_dev_module_init();
    if (result != -19 || sleep_calls != 0 || register_calls != 0)
        return fprintf(stderr, "negative init lifecycle contract mismatch\n"), 1;
    return 0;
}

static int test_nonnegative_init_registers_driver(void)
{
    int result;

    reset_state(0);
    result = syna_dev_module_init();
    if (result != -77 || sleep_calls != 1 || observed_sleep_ms != 200 || register_calls != 1 ||
        observed_driver != &syna_dev_driver || observed_owner != &test_module)
        return fprintf(stderr, "nonnegative init lifecycle contract mismatch\n"), 1;
    return 0;
}

int main(void)
{
    if (test_negative_init_stops_lifecycle() ||
        test_nonnegative_init_registers_driver())
        return 1;
    puts("PASS syna_dev_module_init host tests (2 cases)");
    return 0;
}
