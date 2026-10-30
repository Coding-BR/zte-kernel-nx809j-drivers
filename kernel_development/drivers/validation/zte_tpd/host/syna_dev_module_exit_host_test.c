#include <stdio.h>

struct platform_driver { unsigned long marker; };
struct platform_driver syna_dev_driver;
static unsigned int event_index;
static unsigned int unregister_index;
static unsigned int hw_exit_index;
static struct platform_driver *observed_driver;

static void test_platform_driver_unregister(struct platform_driver *driver)
{
    unregister_index = ++event_index;
    observed_driver = driver;
}

static void test_syna_hw_interface_exit(void)
{
    hw_exit_index = ++event_index;
}

#define _DEFS_H
#define platform_driver_unregister test_platform_driver_unregister
#define syna_hw_interface_exit test_syna_hw_interface_exit
#include "../../../reconstructed/zte_tpd/syna_dev_module_exit.c"
#undef syna_hw_interface_exit
#undef platform_driver_unregister
#undef _DEFS_H

static int test_exit_contract(void)
{
    event_index = 0;
    unregister_index = 0;
    hw_exit_index = 0;
    observed_driver = NULL;
    syna_dev_module_exit();
    if (unregister_index != 1 || hw_exit_index != 2 ||
        observed_driver != &syna_dev_driver)
        return fprintf(stderr, "syna dev module exit contract mismatch\n"), 1;
    return 0;
}

int main(void)
{
    if (test_exit_contract())
        return 1;
    puts("PASS syna_dev_module_exit host tests (1 case)");
    return 0;
}
