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

KSYMTAB_FUNC(zte_power_supply_get_property, "_gpl", "");
KSYMTAB_FUNC(zte_power_supply_set_property, "_gpl", "");
KSYMTAB_FUNC(zte_devm_power_supply_register, "_gpl", "");
KSYMTAB_FUNC(zte_power_supply_get_by_name, "_gpl", "");
KSYMTAB_FUNC(zte_power_supply_put, "_gpl", "");
KSYMTAB_FUNC(zte_power_supply_get_drvdata, "_gpl", "");

SYMBOL_CRC(zte_power_supply_get_property, 0xb8286b5c, "_gpl");
SYMBOL_CRC(zte_power_supply_set_property, 0x3659ace3, "_gpl");
SYMBOL_CRC(zte_devm_power_supply_register, 0xf4397a8f, "_gpl");
SYMBOL_CRC(zte_power_supply_get_by_name, 0x9e2746ce, "_gpl");
SYMBOL_CRC(zte_power_supply_put, 0xbe37a6a1, "_gpl");
SYMBOL_CRC(zte_power_supply_get_drvdata, 0xdb6a83df, "_gpl");

static const struct modversion_info ____versions[]
__used __section("__versions") = {
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
	{ 0x0ac9412a, "dev_set_name" },
	{ 0xb0f9b474, "delayed_work_timer_fn" },
	{ 0x534026f3, "init_timer_key" },
	{ 0xb5a8a2f9, "of_fwnode_ops" },
	{ 0x58db2c7e, "device_add" },
	{ 0x498bbc2e, "put_device" },
	{ 0x571c73d5, "system_power_efficient_wq" },
	{ 0x92339a9b, "queue_delayed_work_on" },
	{ 0xec931d28, "__of_parse_phandle_with_args" },
	{ 0xbac50d1e, "class_for_each_device" },
	{ 0x1445db3f, "devm_kmalloc" },
	{ 0x4a35b4cb, "_dev_info" },
	{ 0xd272d446, "__stack_chk_fail" },
	{ 0xc4b2b008, "atomic_notifier_call_chain" },
	{ 0x81bb3f68, "kobject_uevent" },
	{ 0x0ce73b9f, "pm_relax" },
	{ 0x565f590b, "mutex_trylock" },
	{ 0x67628f51, "msleep" },
	{ 0x995658e3, "mutex_unlock" },
	{ 0xa71696c5, "device_set_wakeup_capable" },
	{ 0xb626596a, "device_wakeup_enable" },
	{ 0x0ce73b9f, "device_wakeup_disable" },
	{ 0xba6d2f6c, "cancel_delayed_work_sync" },
	{ 0x35480a5b, "cancel_work_sync" },
	{ 0x498bbc2e, "device_del" },
	{ 0xd97dbfc4, "__devres_alloc_node" },
	{ 0x2ca45a27, "devres_free" },
	{ 0xdaee0cf8, "devres_add" },
	{ 0xb20e8c4e, "devres_release" },
	{ 0x6ea4a91b, "class_find_device" },
	{ 0xb8c8345a, "alt_cb_patch_nops" },
	{ 0xf5df0401, "strcmp" },
	{ 0x424f0879, "sysfs_create_link" },
	{ 0xc0d1070f, "devm_kfree" },
	{ 0xdc5f8372, "class_create" },
	{ 0xe66cdaff, "class_destroy" },
	{ 0x31359e90, "kfree" },
	{ 0x69b7acda, "sprintf" },
	{ 0x4a35b4cb, "_dev_err" },
	{ 0x3c1aa36f, "__sysfs_match_string" },
	{ 0x43dff603, "kstrtoll" },
	{ 0xb7ec1db1, "add_uevent_var" },
	{ 0xa3e8f44b, "get_zeroed_page_noprof" },
	{ 0xc5f883ea, "strchr" },
	{ 0xf4386284, "snprintf" },
	{ 0x30def38b, "free_pages" },
	{ 0xde6485ed, "module_layout" },
};

static const u32 ____version_ext_crcs[]
__used __section("__version_ext_crcs") = {
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
	0x0ac9412a,
	0xb0f9b474,
	0x534026f3,
	0xb5a8a2f9,
	0x58db2c7e,
	0x498bbc2e,
	0x571c73d5,
	0x92339a9b,
	0xec931d28,
	0xbac50d1e,
	0x1445db3f,
	0x4a35b4cb,
	0xd272d446,
	0xc4b2b008,
	0x81bb3f68,
	0x0ce73b9f,
	0x565f590b,
	0x67628f51,
	0x995658e3,
	0xa71696c5,
	0xb626596a,
	0x0ce73b9f,
	0xba6d2f6c,
	0x35480a5b,
	0x498bbc2e,
	0xd97dbfc4,
	0x2ca45a27,
	0xdaee0cf8,
	0xb20e8c4e,
	0x6ea4a91b,
	0xb8c8345a,
	0xf5df0401,
	0x424f0879,
	0xc0d1070f,
	0xdc5f8372,
	0xe66cdaff,
	0x31359e90,
	0x69b7acda,
	0x4a35b4cb,
	0x3c1aa36f,
	0x43dff603,
	0xb7ec1db1,
	0xa3e8f44b,
	0xc5f883ea,
	0xf4386284,
	0x30def38b,
	0xde6485ed,
};
static const char ____version_ext_names[]
__used __section("__version_ext_names") =
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
	"dev_set_name\0"
	"delayed_work_timer_fn\0"
	"init_timer_key\0"
	"of_fwnode_ops\0"
	"device_add\0"
	"put_device\0"
	"system_power_efficient_wq\0"
	"queue_delayed_work_on\0"
	"__of_parse_phandle_with_args\0"
	"class_for_each_device\0"
	"devm_kmalloc\0"
	"_dev_info\0"
	"__stack_chk_fail\0"
	"atomic_notifier_call_chain\0"
	"kobject_uevent\0"
	"pm_relax\0"
	"mutex_trylock\0"
	"msleep\0"
	"mutex_unlock\0"
	"device_set_wakeup_capable\0"
	"device_wakeup_enable\0"
	"device_wakeup_disable\0"
	"cancel_delayed_work_sync\0"
	"cancel_work_sync\0"
	"device_del\0"
	"__devres_alloc_node\0"
	"devres_free\0"
	"devres_add\0"
	"devres_release\0"
	"class_find_device\0"
	"alt_cb_patch_nops\0"
	"strcmp\0"
	"sysfs_create_link\0"
	"devm_kfree\0"
	"class_create\0"
	"class_destroy\0"
	"kfree\0"
	"sprintf\0"
	"_dev_err\0"
	"__sysfs_match_string\0"
	"kstrtoll\0"
	"add_uevent_var\0"
	"get_zeroed_page_noprof\0"
	"strchr\0"
	"snprintf\0"
	"free_pages\0"
	"module_layout\0"
;

MODULE_INFO(depends, "");

