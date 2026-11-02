#include <linux/module.h>
#include <linux/export-internal.h>
#include <linux/compiler.h>

MODULE_INFO(name, KBUILD_MODNAME);

__visible struct module __this_module
__section(".gnu.linkonce.this_module") = {
	.name = KBUILD_MODNAME,
	.init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
	.exit = cleanup_module,
#endif
	.arch = MODULE_ARCH_INIT,
};



static const struct modversion_info ____versions[]
__used __section("__versions") = {
	{ 0xb8c8345a, "alt_cb_patch_nops" },
	{ 0x2c6cfe34, "of_get_named_gpio" },
	{ 0x16b5b21d, "_printk" },
	{ 0x69656318, "gpio_request" },
	{ 0xcd6e7616, "gpio_to_desc" },
	{ 0x736db730, "gpiod_to_irq" },
	{ 0xc407eb52, "request_threaded_irq" },
	{ 0x8e3336dd, "disable_irq" },
	{ 0x736db730, "gpiod_get_raw_value" },
	{ 0x0339dbfa, "sysfs_remove_group" },
	{ 0xbd0cdbf7, "platform_driver_unregister" },
	{ 0x58997344, "__platform_driver_register" },
	{ 0xafb2b6c9, "hrtimer_start_range_ns" },
	{ 0x8e3336dd, "enable_irq" },
	{ 0x8e3336dd, "disable_irq_nosync" },
	{ 0x8a189605, "regulator_is_enabled" },
	{ 0x8a189605, "regulator_enable" },
	{ 0x67628f51, "msleep" },
	{ 0x76ddeae0, "gpiod_direction_output_raw" },
	{ 0x8a189605, "regulator_disable" },
	{ 0xd272d446, "__stack_chk_fail" },
	{ 0x69b7acda, "sprintf" },
	{ 0xf5197fd4, "sscanf" },
	{ 0x995658e3, "mutex_lock" },
	{ 0x995658e3, "mutex_unlock" },
	{ 0xde6485ed, "module_layout" },
};

static const u32 ____version_ext_crcs[]
__used __section("__version_ext_crcs") = {
	0xb8c8345a,
	0x2c6cfe34,
	0x16b5b21d,
	0x69656318,
	0xcd6e7616,
	0x736db730,
	0xc407eb52,
	0x8e3336dd,
	0x736db730,
	0x0339dbfa,
	0xbd0cdbf7,
	0x58997344,
	0xafb2b6c9,
	0x8e3336dd,
	0x8e3336dd,
	0x8a189605,
	0x8a189605,
	0x67628f51,
	0x76ddeae0,
	0x8a189605,
	0xd272d446,
	0x69b7acda,
	0xf5197fd4,
	0x995658e3,
	0x995658e3,
	0xde6485ed,
};
static const char ____version_ext_names[]
__used __section("__version_ext_names") =
	"alt_cb_patch_nops\0"
	"of_get_named_gpio\0"
	"_printk\0"
	"gpio_request\0"
	"gpio_to_desc\0"
	"gpiod_to_irq\0"
	"request_threaded_irq\0"
	"disable_irq\0"
	"gpiod_get_raw_value\0"
	"sysfs_remove_group\0"
	"platform_driver_unregister\0"
	"__platform_driver_register\0"
	"hrtimer_start_range_ns\0"
	"enable_irq\0"
	"disable_irq_nosync\0"
	"regulator_is_enabled\0"
	"regulator_enable\0"
	"msleep\0"
	"gpiod_direction_output_raw\0"
	"regulator_disable\0"
	"__stack_chk_fail\0"
	"sprintf\0"
	"sscanf\0"
	"mutex_lock\0"
	"mutex_unlock\0"
	"module_layout\0"
;

MODULE_INFO(depends, "");

