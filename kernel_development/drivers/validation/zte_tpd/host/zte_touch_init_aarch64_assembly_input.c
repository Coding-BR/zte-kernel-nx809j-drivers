#define __init
#define module_init(function)

struct platform_driver {
    unsigned long marker;
};

struct module {
    unsigned long marker;
};

struct platform_driver zte_touch_device_driver;
static struct module test_module;

int printk(const char *format, ...)
{
    (void)format;
    return 0;
}

int _platform_driver_register(struct platform_driver *driver,
                              struct module *owner)
{
    (void)driver;
    (void)owner;
    return 0;
}

#define THIS_MODULE (&test_module)
#include "../../../reconstructed/zte_tpd/zte_touch_init.c"
