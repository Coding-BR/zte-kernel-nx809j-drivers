#include <stdio.h>

struct platform_driver {
    unsigned long marker;
};

struct platform_driver zte_touch_device_driver;
void cleanup_module(void);
static unsigned int event_index;
static unsigned int module_exit_index;
static unsigned int touch_deinit_index;
static unsigned int unregister_index;
static long long observed_arg0;
static long long observed_arg1;
static long long observed_arg2;
static struct platform_driver *observed_driver;

void syna_dev_module_exit(void)
{
    module_exit_index = ++event_index;
}

long long zte_touch_deinit(long long arg0, long long arg1, long long arg2)
{
    touch_deinit_index = ++event_index;
    observed_arg0 = arg0;
    observed_arg1 = arg1;
    observed_arg2 = arg2;
    return 0;
}

void platform_driver_unregister(struct platform_driver *driver)
{
    unregister_index = ++event_index;
    observed_driver = driver;
}

static int test_cleanup_contract(void)
{
    event_index = 0;
    module_exit_index = 0;
    touch_deinit_index = 0;
    unregister_index = 0;
    observed_arg0 = -1;
    observed_arg1 = -1;
    observed_arg2 = -1;
    observed_driver = NULL;

    cleanup_module();

    if (module_exit_index != 1 || touch_deinit_index != 2 ||
        unregister_index != 3 || observed_arg0 != 0 || observed_arg1 != 0 ||
        observed_arg2 != 0 || observed_driver != &zte_touch_device_driver)
        return fprintf(stderr, "cleanup module contract mismatch\n"), 1;
    return 0;
}

int main(void)
{
    if (test_cleanup_contract())
        return 1;
    puts("PASS cleanup_module host tests (1 case)");
    return 0;
}
