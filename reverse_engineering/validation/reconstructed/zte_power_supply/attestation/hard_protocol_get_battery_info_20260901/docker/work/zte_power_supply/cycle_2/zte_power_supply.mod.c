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

KSYMTAB_DATA(zte_power_supply_class, "_gpl", "");
KSYMTAB_FUNC(zte_power_supply_get_property, "_gpl", "");
KSYMTAB_FUNC(zte_power_supply_set_property, "_gpl", "");
KSYMTAB_FUNC(zte_power_supply_property_is_writeable, "_gpl", "");
KSYMTAB_FUNC(zte_power_supply_reg_notifier, "_gpl", "");
KSYMTAB_FUNC(zte_power_supply_unreg_notifier, "_gpl", "");
KSYMTAB_FUNC(zte_power_supply_changed, "_gpl", "");
KSYMTAB_FUNC(zte_power_supply_register, "_gpl", "");
KSYMTAB_FUNC(zte_power_supply_register_no_ws, "_gpl", "");
KSYMTAB_FUNC(zte_power_supply_unregister, "_gpl", "");
KSYMTAB_FUNC(zte_devm_power_supply_register, "_gpl", "");
KSYMTAB_FUNC(zte_devm_power_supply_register_no_ws, "_gpl", "");
KSYMTAB_FUNC(zte_power_supply_get_by_name, "_gpl", "");
KSYMTAB_FUNC(zte_power_supply_put, "_gpl", "");
KSYMTAB_FUNC(zte_power_supply_get_by_phandle, "_gpl", "");
KSYMTAB_FUNC(zte_power_supply_get_by_phandle_array, "_gpl", "");
KSYMTAB_FUNC(zte_power_supply_get_drvdata, "_gpl", "");
KSYMTAB_FUNC(zte_power_supply_external_power_changed, "_gpl", "");
KSYMTAB_FUNC(zte_power_supply_set_battery_charged, "_gpl", "");
KSYMTAB_FUNC(zte_power_supply_powers, "_gpl", "");
KSYMTAB_FUNC(zte_power_supply_ocv2cap_simple, "_gpl", "");
KSYMTAB_FUNC(zte_power_supply_temp2resist_simple, "_gpl", "");
KSYMTAB_FUNC(zte_power_supply_put_battery_info, "_gpl", "");
KSYMTAB_FUNC(zte_power_supply_get_battery_info, "_gpl", "");
KSYMTAB_FUNC(zte_power_supply_find_ocv2cap_table, "_gpl", "");
KSYMTAB_FUNC(zte_power_supply_batinfo_ocv2cap, "_gpl", "");
KSYMTAB_FUNC(zte_devm_power_supply_get_by_phandle, "_gpl", "");

SYMBOL_CRC(zte_power_supply_class, 0xf896846c, "_gpl");
SYMBOL_CRC(zte_power_supply_get_property, 0x187b7419, "_gpl");
SYMBOL_CRC(zte_power_supply_set_property, 0x33b50e28, "_gpl");
SYMBOL_CRC(zte_power_supply_property_is_writeable, 0x0189da44, "_gpl");
SYMBOL_CRC(zte_power_supply_reg_notifier, 0x0a227d4d, "_gpl");
SYMBOL_CRC(zte_power_supply_unreg_notifier, 0x8c705ff7, "_gpl");
SYMBOL_CRC(zte_power_supply_changed, 0xbe37a6a1, "_gpl");
SYMBOL_CRC(zte_power_supply_register, 0xf4397a8f, "_gpl");
SYMBOL_CRC(zte_power_supply_register_no_ws, 0xf4397a8f, "_gpl");
SYMBOL_CRC(zte_power_supply_unregister, 0xbe37a6a1, "_gpl");
SYMBOL_CRC(zte_devm_power_supply_register, 0xf4397a8f, "_gpl");
SYMBOL_CRC(zte_devm_power_supply_register_no_ws, 0xf4397a8f, "_gpl");
SYMBOL_CRC(zte_power_supply_get_by_name, 0x9e2746ce, "_gpl");
SYMBOL_CRC(zte_power_supply_put, 0xbe37a6a1, "_gpl");
SYMBOL_CRC(zte_power_supply_get_by_phandle, 0x68bd8f13, "_gpl");
SYMBOL_CRC(zte_power_supply_get_by_phandle_array, 0xdaaf56f2, "_gpl");
SYMBOL_CRC(zte_power_supply_get_drvdata, 0xdb6a83df, "_gpl");
SYMBOL_CRC(zte_power_supply_external_power_changed, 0xbe37a6a1, "_gpl");
SYMBOL_CRC(zte_power_supply_set_battery_charged, 0xe2d4892d, "_gpl");
SYMBOL_CRC(zte_power_supply_powers, 0x07da6887, "_gpl");
SYMBOL_CRC(zte_power_supply_ocv2cap_simple, 0x61aeebcd, "_gpl");
SYMBOL_CRC(zte_power_supply_temp2resist_simple, 0x67e3de3f, "_gpl");
SYMBOL_CRC(zte_power_supply_put_battery_info, 0x485a08fe, "_gpl");
SYMBOL_CRC(zte_power_supply_get_battery_info, 0xe02c8aac, "_gpl");
SYMBOL_CRC(zte_power_supply_find_ocv2cap_table, 0x29aa05d9, "_gpl");
SYMBOL_CRC(zte_power_supply_batinfo_ocv2cap, 0x91570f93, "_gpl");
SYMBOL_CRC(zte_devm_power_supply_get_by_phandle, 0x2e163f9f, "_gpl");

static const struct modversion_info ____versions[]
__used __section("__versions") = {
	{ 0x16b5b21d, "_printk" },
	{ 0x729d105b, "_ctype" },
	{ 0x69b7acda, "sprintf" },
	{ 0xa3384a5c, "___ratelimit" },
	{ 0x4a35b4cb, "_dev_err" },
	{ 0xd272d446, "__stack_chk_fail" },
	{ 0x3c1aa36f, "__sysfs_match_string" },
	{ 0x43dff603, "kstrtoll" },
	{ 0xd4b63632, "atomic_notifier_chain_register" },
	{ 0xd4b63632, "atomic_notifier_chain_unregister" },
	{ 0xaa615763, "_raw_spin_lock_irqsave" },
	{ 0x0ce73b9f, "pm_stay_awake" },
	{ 0x582af1c8, "_raw_spin_unlock_irqrestore" },
	{ 0x571c73d5, "system_wq" },
	{ 0x8f4cd990, "queue_work_on" },
	{ 0x8ee1928d, "mem_alloc_profiling_key" },
	{ 0x760296b1, "kmalloc_caches" },
	{ 0x266d672c, "__kmalloc_cache_noprof" },
	{ 0x498bbc2e, "device_initialize" },
	{ 0xb5a8a2f9, "of_fwnode_ops" },
	{ 0x0ac9412a, "dev_set_name" },
	{ 0xb0f9b474, "delayed_work_timer_fn" },
	{ 0x534026f3, "init_timer_key" },
	{ 0x58db2c7e, "device_add" },
	{ 0xb8c8345a, "alt_cb_patch_nops" },
	{ 0x571c73d5, "system_power_efficient_wq" },
	{ 0x92339a9b, "queue_delayed_work_on" },
	{ 0x4a35b4cb, "_dev_info" },
	{ 0x498bbc2e, "put_device" },
	{ 0x35480a5b, "cancel_work_sync" },
	{ 0xba6d2f6c, "cancel_delayed_work_sync" },
	{ 0x4b7d46ff, "sysfs_remove_link" },
	{ 0x0ce73b9f, "device_wakeup_disable" },
	{ 0xa71696c5, "device_set_wakeup_capable" },
	{ 0x498bbc2e, "device_unregister" },
	{ 0xd97dbfc4, "__devres_alloc_node" },
	{ 0x2ca45a27, "devres_free" },
	{ 0xdaee0cf8, "devres_add" },
	{ 0x6ea4a91b, "class_find_device" },
	{ 0xf5df0401, "strcmp" },
	{ 0xec931d28, "__of_parse_phandle_with_args" },
	{ 0xbac50d1e, "class_for_each_device" },
	{ 0xb7ec1db1, "add_uevent_var" },
	{ 0xa3e8f44b, "get_zeroed_page_noprof" },
	{ 0xc5f883ea, "strchr" },
	{ 0x30def38b, "free_pages" },
	{ 0x424f0879, "sysfs_create_link" },
	{ 0xc0d1070f, "devm_kfree" },
	{ 0x45ed543a, "of_property_read_string" },
	{ 0x4ebccdb7, "of_property_read_variable_u32_array" },
	{ 0xfd0e7d8e, "of_property_count_elems_of_size" },
	{ 0xee6b5fe5, "kasprintf" },
	{ 0xfe63d2cc, "of_get_property" },
	{ 0x31359e90, "kfree" },
	{ 0x1445db3f, "devm_kmalloc" },
	{ 0x4a35b4cb, "_dev_warn" },
	{ 0xdc5f8372, "class_create" },
	{ 0xe66cdaff, "class_destroy" },
	{ 0xc4b2b008, "atomic_notifier_call_chain" },
	{ 0x81bb3f68, "kobject_uevent" },
	{ 0x0ce73b9f, "pm_relax" },
	{ 0x565f590b, "mutex_trylock" },
	{ 0x67628f51, "msleep" },
	{ 0x995658e3, "mutex_unlock" },
	{ 0xb626596a, "device_wakeup_enable" },
	{ 0xde6485ed, "module_layout" },
};

static const u32 ____version_ext_crcs[]
__used __section("__version_ext_crcs") = {
	0x16b5b21d,
	0x729d105b,
	0x69b7acda,
	0xa3384a5c,
	0x4a35b4cb,
	0xd272d446,
	0x3c1aa36f,
	0x43dff603,
	0xd4b63632,
	0xd4b63632,
	0xaa615763,
	0x0ce73b9f,
	0x582af1c8,
	0x571c73d5,
	0x8f4cd990,
	0x8ee1928d,
	0x760296b1,
	0x266d672c,
	0x498bbc2e,
	0xb5a8a2f9,
	0x0ac9412a,
	0xb0f9b474,
	0x534026f3,
	0x58db2c7e,
	0xb8c8345a,
	0x571c73d5,
	0x92339a9b,
	0x4a35b4cb,
	0x498bbc2e,
	0x35480a5b,
	0xba6d2f6c,
	0x4b7d46ff,
	0x0ce73b9f,
	0xa71696c5,
	0x498bbc2e,
	0xd97dbfc4,
	0x2ca45a27,
	0xdaee0cf8,
	0x6ea4a91b,
	0xf5df0401,
	0xec931d28,
	0xbac50d1e,
	0xb7ec1db1,
	0xa3e8f44b,
	0xc5f883ea,
	0x30def38b,
	0x424f0879,
	0xc0d1070f,
	0x45ed543a,
	0x4ebccdb7,
	0xfd0e7d8e,
	0xee6b5fe5,
	0xfe63d2cc,
	0x31359e90,
	0x1445db3f,
	0x4a35b4cb,
	0xdc5f8372,
	0xe66cdaff,
	0xc4b2b008,
	0x81bb3f68,
	0x0ce73b9f,
	0x565f590b,
	0x67628f51,
	0x995658e3,
	0xb626596a,
	0xde6485ed,
};
static const char ____version_ext_names[]
__used __section("__version_ext_names") =
	"_printk\0"
	"_ctype\0"
	"sprintf\0"
	"___ratelimit\0"
	"_dev_err\0"
	"__stack_chk_fail\0"
	"__sysfs_match_string\0"
	"kstrtoll\0"
	"atomic_notifier_chain_register\0"
	"atomic_notifier_chain_unregister\0"
	"_raw_spin_lock_irqsave\0"
	"pm_stay_awake\0"
	"_raw_spin_unlock_irqrestore\0"
	"system_wq\0"
	"queue_work_on\0"
	"mem_alloc_profiling_key\0"
	"kmalloc_caches\0"
	"__kmalloc_cache_noprof\0"
	"device_initialize\0"
	"of_fwnode_ops\0"
	"dev_set_name\0"
	"delayed_work_timer_fn\0"
	"init_timer_key\0"
	"device_add\0"
	"alt_cb_patch_nops\0"
	"system_power_efficient_wq\0"
	"queue_delayed_work_on\0"
	"_dev_info\0"
	"put_device\0"
	"cancel_work_sync\0"
	"cancel_delayed_work_sync\0"
	"sysfs_remove_link\0"
	"device_wakeup_disable\0"
	"device_set_wakeup_capable\0"
	"device_unregister\0"
	"__devres_alloc_node\0"
	"devres_free\0"
	"devres_add\0"
	"class_find_device\0"
	"strcmp\0"
	"__of_parse_phandle_with_args\0"
	"class_for_each_device\0"
	"add_uevent_var\0"
	"get_zeroed_page_noprof\0"
	"strchr\0"
	"free_pages\0"
	"sysfs_create_link\0"
	"devm_kfree\0"
	"of_property_read_string\0"
	"of_property_read_variable_u32_array\0"
	"of_property_count_elems_of_size\0"
	"kasprintf\0"
	"of_get_property\0"
	"kfree\0"
	"devm_kmalloc\0"
	"_dev_warn\0"
	"class_create\0"
	"class_destroy\0"
	"atomic_notifier_call_chain\0"
	"kobject_uevent\0"
	"pm_relax\0"
	"mutex_trylock\0"
	"msleep\0"
	"mutex_unlock\0"
	"device_wakeup_enable\0"
	"module_layout\0"
;

MODULE_INFO(depends, "");

