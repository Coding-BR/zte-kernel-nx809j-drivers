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
	{ 0x16b5b21d, "_printk" },
	{ 0x0211b945, "_dev_printk" },
	{ 0xd272d446, "__stack_chk_fail" },
	{ 0x3902a1ac, "i2c_transfer" },
	{ 0xfdbae8c6, "usleep_range_state" },
	{ 0x27865ec7, "__kmalloc_noprof" },
	{ 0x8a7493b2, "memcpy" },
	{ 0x31359e90, "kfree" },
	{ 0x31b67631, "__fortify_panic" },
	{ 0x67628f51, "msleep" },
	{ 0x8afeee90, "input_event" },
	{ 0xf4386284, "snprintf" },
	{ 0x1a09ef8f, "request_firmware" },
	{ 0xb770888b, "release_firmware" },
	{ 0xb0f9b474, "delayed_work_timer_fn" },
	{ 0x534026f3, "init_timer_key" },
	{ 0x571c73d5, "system_wq" },
	{ 0x92339a9b, "queue_delayed_work_on" },
	{ 0x995658e3, "mutex_lock" },
	{ 0x995658e3, "mutex_unlock" },
	{ 0xb7d17430, "__const_udelay" },
	{ 0x110f4d3a, "memset" },
	{ 0xf5df0401, "strcmp" },
	{ 0x8e3336dd, "enable_irq" },
	{ 0x1445db3f, "devm_kmalloc" },
	{ 0x81d49dc6, "__mutex_init" },
	{ 0x4ebccdb7, "of_property_read_variable_u32_array" },
	{ 0x2c6cfe34, "of_get_named_gpio" },
	{ 0x75abbb63, "of_find_property" },
	{ 0xd10ee1a9, "devm_pinctrl_get" },
	{ 0xd2b70215, "pinctrl_lookup_state" },
	{ 0x7c2f5040, "pinctrl_select_state" },
	{ 0xccb621e1, "devm_pinctrl_put" },
	{ 0x4ad27897, "regulator_get" },
	{ 0x8a189605, "regulator_count_voltages" },
	{ 0x54471eaa, "regulator_set_voltage" },
	{ 0x8a189605, "regulator_enable" },
	{ 0x8a189605, "regulator_get_voltage" },
	{ 0x87748dfe, "devm_led_classdev_register_ext" },
	{ 0x4a35b4cb, "_dev_err" },
	{ 0x21475af2, "sysfs_create_group" },
	{ 0x3a6848b5, "regulator_put" },
	{ 0xfa0959b5, "input_unregister_device" },
	{ 0xfa0959b5, "input_free_device" },
	{ 0x0339dbfa, "sysfs_remove_group" },
	{ 0x8a189605, "regulator_disable" },
	{ 0x8e3336dd, "disable_irq" },
	{ 0x66117795, "input_allocate_device" },
	{ 0xdce386f1, "input_set_abs_params" },
	{ 0x83b2ff0b, "input_register_device" },
	{ 0xcd6e7616, "gpio_to_desc" },
	{ 0x736db730, "gpiod_to_irq" },
	{ 0xe7fd1854, "devm_gpio_request_one" },
	{ 0x4425203c, "devm_request_threaded_irq" },
	{ 0xc0d1070f, "devm_kfree" },
	{ 0xf5197fd4, "sscanf" },
	{ 0x90d19584, "strlen" },
	{ 0xafb18b07, "kstrtouint" },
	{ 0x8a4521ee, "kstrtoint" },
	{ 0x7230141c, "i2c_register_driver" },
	{ 0xcb788097, "i2c_del_driver" },
	{ 0x8ee1928d, "mem_alloc_profiling_key" },
	{ 0xde6485ed, "module_layout" },
};

static const u32 ____version_ext_crcs[]
__used __section("__version_ext_crcs") = {
	0x16b5b21d,
	0x0211b945,
	0xd272d446,
	0x3902a1ac,
	0xfdbae8c6,
	0x27865ec7,
	0x8a7493b2,
	0x31359e90,
	0x31b67631,
	0x67628f51,
	0x8afeee90,
	0xf4386284,
	0x1a09ef8f,
	0xb770888b,
	0xb0f9b474,
	0x534026f3,
	0x571c73d5,
	0x92339a9b,
	0x995658e3,
	0x995658e3,
	0xb7d17430,
	0x110f4d3a,
	0xf5df0401,
	0x8e3336dd,
	0x1445db3f,
	0x81d49dc6,
	0x4ebccdb7,
	0x2c6cfe34,
	0x75abbb63,
	0xd10ee1a9,
	0xd2b70215,
	0x7c2f5040,
	0xccb621e1,
	0x4ad27897,
	0x8a189605,
	0x54471eaa,
	0x8a189605,
	0x8a189605,
	0x87748dfe,
	0x4a35b4cb,
	0x21475af2,
	0x3a6848b5,
	0xfa0959b5,
	0xfa0959b5,
	0x0339dbfa,
	0x8a189605,
	0x8e3336dd,
	0x66117795,
	0xdce386f1,
	0x83b2ff0b,
	0xcd6e7616,
	0x736db730,
	0xe7fd1854,
	0x4425203c,
	0xc0d1070f,
	0xf5197fd4,
	0x90d19584,
	0xafb18b07,
	0x8a4521ee,
	0x7230141c,
	0xcb788097,
	0x8ee1928d,
	0xde6485ed,
};
static const char ____version_ext_names[]
__used __section("__version_ext_names") =
	"_printk\0"
	"_dev_printk\0"
	"__stack_chk_fail\0"
	"i2c_transfer\0"
	"usleep_range_state\0"
	"__kmalloc_noprof\0"
	"memcpy\0"
	"kfree\0"
	"__fortify_panic\0"
	"msleep\0"
	"input_event\0"
	"snprintf\0"
	"request_firmware\0"
	"release_firmware\0"
	"delayed_work_timer_fn\0"
	"init_timer_key\0"
	"system_wq\0"
	"queue_delayed_work_on\0"
	"mutex_lock\0"
	"mutex_unlock\0"
	"__const_udelay\0"
	"memset\0"
	"strcmp\0"
	"enable_irq\0"
	"devm_kmalloc\0"
	"__mutex_init\0"
	"of_property_read_variable_u32_array\0"
	"of_get_named_gpio\0"
	"of_find_property\0"
	"devm_pinctrl_get\0"
	"pinctrl_lookup_state\0"
	"pinctrl_select_state\0"
	"devm_pinctrl_put\0"
	"regulator_get\0"
	"regulator_count_voltages\0"
	"regulator_set_voltage\0"
	"regulator_enable\0"
	"regulator_get_voltage\0"
	"devm_led_classdev_register_ext\0"
	"_dev_err\0"
	"sysfs_create_group\0"
	"regulator_put\0"
	"input_unregister_device\0"
	"input_free_device\0"
	"sysfs_remove_group\0"
	"regulator_disable\0"
	"disable_irq\0"
	"input_allocate_device\0"
	"input_set_abs_params\0"
	"input_register_device\0"
	"gpio_to_desc\0"
	"gpiod_to_irq\0"
	"devm_gpio_request_one\0"
	"devm_request_threaded_irq\0"
	"devm_kfree\0"
	"sscanf\0"
	"strlen\0"
	"kstrtouint\0"
	"kstrtoint\0"
	"i2c_register_driver\0"
	"i2c_del_driver\0"
	"mem_alloc_profiling_key\0"
	"module_layout\0"
;

MODULE_INFO(depends, "");

MODULE_ALIAS("i2c:aw9620x_sar");
