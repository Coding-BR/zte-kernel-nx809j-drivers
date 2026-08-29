#include <stdio.h>
#include <string.h>

struct platform_driver {
    unsigned int marker;
};

struct module {
    unsigned int marker;
};

struct platform_driver zte_touch_device_driver;
static struct module test_module;
static unsigned int printk_calls;
static const char *observed_format;
static const char *observed_name;
static unsigned int register_calls;
static struct platform_driver *observed_driver;
static struct module *observed_owner;

static int test_printk(const char *format, const char *name)
{
    printk_calls++;
    observed_format = format;
    observed_name = name;
    return 0;
}

static int test_platform_driver_register(struct platform_driver *driver,
                                         struct module *owner)
{
    register_calls++;
    observed_driver = driver;
    observed_owner = owner;
    return -77;
}

#define __init
#define THIS_MODULE (&test_module)
#define printk(format, name) test_printk(format, name)
#define _platform_driver_register(driver, owner) \
    test_platform_driver_register(driver, owner)
#define module_init(function)
#include "../../../reconstructed/zte_tpd/zte_touch_init.c"
#undef module_init
#undef _platform_driver_register
#undef printk
#undef THIS_MODULE
#undef __init

static int test_init_module_contract(void)
{
    int result;

    printk_calls = 0;
    observed_format = NULL;
    observed_name = NULL;
    register_calls = 0;
    observed_driver = NULL;
    observed_owner = NULL;
    result = zte_touch_init();

    if (result != -77 || printk_calls != 1 ||
        strcmp(observed_format, "\0015tpd: %s into\n") != 0 ||
        strcmp(observed_name, "zte_touch_init") != 0 || register_calls != 1 ||
        observed_driver != &zte_touch_device_driver || observed_owner != &test_module)
        return fprintf(stderr, "init module contract mismatch\n"), 1;
    return 0;
}

int main(void)
{
    if (test_init_module_contract())
        return 1;
    puts("PASS zte_touch_init host tests (1 case)");
    return 0;
}
