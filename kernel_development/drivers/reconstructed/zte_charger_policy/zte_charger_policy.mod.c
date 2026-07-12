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

MODULE_INFO(intree, "Y");



static const struct modversion_info ____versions[]
__used __section("__versions") = {
	{ 0x00601e9b, "power_supply_get_by_name" },
	{ 0xa3a25682, "power_supply_get_property" },
	{ 0xf15b050c, "power_supply_put" },
	{ 0x16b5b21d, "_printk" },
	{ 0xd272d446, "__stack_chk_fail" },
	{ 0x58997344, "__platform_driver_register" },
	{ 0xbd0cdbf7, "platform_driver_unregister" },
	{ 0x7851be11, "zte_poweroff_charging_status" },
	{ 0x1445db3f, "devm_kmalloc" },
	{ 0x4ebccdb7, "of_property_read_variable_u32_array" },
	{ 0x45ed543a, "of_property_read_string" },
	{ 0xc531e61f, "alloc_workqueue" },
	{ 0xb0f9b474, "delayed_work_timer_fn" },
	{ 0x534026f3, "init_timer_key" },
	{ 0x92339a9b, "queue_delayed_work_on" },
	{ 0xc0d1070f, "devm_kfree" },
	{ 0x8c705ff7, "power_supply_unreg_notifier" },
	{ 0x788be0c4, "wakeup_source_unregister" },
	{ 0xf61597b3, "alarm_init" },
	{ 0x0a227d4d, "power_supply_reg_notifier" },
	{ 0x86f488f0, "devm_power_supply_register" },
	{ 0x9bec046c, "zte_misc_register_callback" },
	{ 0x8ad53b05, "wakeup_source_register" },
	{ 0xe4d5dbb6, "alarm_start_relative" },
	{ 0x9d1dd621, "ktime_get_with_offset" },
	{ 0xb219cb65, "ns_to_timespec64" },
	{ 0xf15b050c, "power_supply_changed" },
	{ 0xefa2bcf5, "alarm_try_to_cancel" },
	{ 0x788be0c4, "__pm_stay_awake" },
	{ 0x788be0c4, "__pm_relax" },
	{ 0xf5df0401, "strcmp" },
	{ 0x1d343ab5, "power_supply_set_property" },
	{ 0x9e2746ce, "zte_power_supply_get_by_name" },
	{ 0xb8286b5c, "zte_power_supply_get_property" },
	{ 0xbe37a6a1, "zte_power_supply_put" },
	{ 0x3659ace3, "zte_power_supply_set_property" },
	{ 0x2f1754a4, "power_supply_get_drvdata" },
	{ 0xf5197fd4, "sscanf" },
	{ 0xf4386284, "snprintf" },
	{ 0xde6485ed, "module_layout" },
};

static const u32 ____version_ext_crcs[]
__used __section("__version_ext_crcs") = {
	0x00601e9b,
	0xa3a25682,
	0xf15b050c,
	0x16b5b21d,
	0xd272d446,
	0x58997344,
	0xbd0cdbf7,
	0x7851be11,
	0x1445db3f,
	0x4ebccdb7,
	0x45ed543a,
	0xc531e61f,
	0xb0f9b474,
	0x534026f3,
	0x92339a9b,
	0xc0d1070f,
	0x8c705ff7,
	0x788be0c4,
	0xf61597b3,
	0x0a227d4d,
	0x86f488f0,
	0x9bec046c,
	0x8ad53b05,
	0xe4d5dbb6,
	0x9d1dd621,
	0xb219cb65,
	0xf15b050c,
	0xefa2bcf5,
	0x788be0c4,
	0x788be0c4,
	0xf5df0401,
	0x1d343ab5,
	0x9e2746ce,
	0xb8286b5c,
	0xbe37a6a1,
	0x3659ace3,
	0x2f1754a4,
	0xf5197fd4,
	0xf4386284,
	0xde6485ed,
};
static const char ____version_ext_names[]
__used __section("__version_ext_names") =
	"power_supply_get_by_name\0"
	"power_supply_get_property\0"
	"power_supply_put\0"
	"_printk\0"
	"__stack_chk_fail\0"
	"__platform_driver_register\0"
	"platform_driver_unregister\0"
	"zte_poweroff_charging_status\0"
	"devm_kmalloc\0"
	"of_property_read_variable_u32_array\0"
	"of_property_read_string\0"
	"alloc_workqueue\0"
	"delayed_work_timer_fn\0"
	"init_timer_key\0"
	"queue_delayed_work_on\0"
	"devm_kfree\0"
	"power_supply_unreg_notifier\0"
	"wakeup_source_unregister\0"
	"alarm_init\0"
	"power_supply_reg_notifier\0"
	"devm_power_supply_register\0"
	"zte_misc_register_callback\0"
	"wakeup_source_register\0"
	"alarm_start_relative\0"
	"ktime_get_with_offset\0"
	"ns_to_timespec64\0"
	"power_supply_changed\0"
	"alarm_try_to_cancel\0"
	"__pm_stay_awake\0"
	"__pm_relax\0"
	"strcmp\0"
	"power_supply_set_property\0"
	"zte_power_supply_get_by_name\0"
	"zte_power_supply_get_property\0"
	"zte_power_supply_put\0"
	"zte_power_supply_set_property\0"
	"power_supply_get_drvdata\0"
	"sscanf\0"
	"snprintf\0"
	"module_layout\0"
;

MODULE_INFO(depends, "zte_misc,zte_power_supply");

MODULE_ALIAS("of:N*T*Czte,charger-policy-service");
MODULE_ALIAS("of:N*T*Czte,charger-policy-serviceC*");
