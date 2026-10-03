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

KSYMTAB_FUNC(zte_misc_register_callback, "", "");
KSYMTAB_FUNC(zte_misc_get_node_val, "", "");
KSYMTAB_FUNC(zte_poweroff_charging_status, "", "");

SYMBOL_CRC(zte_misc_register_callback, 0x61afab7e, "");
SYMBOL_CRC(zte_misc_get_node_val, 0x591cb0f8, "");
SYMBOL_CRC(zte_poweroff_charging_status, 0x7851be11, "");

static const struct modversion_info ____versions[]
__used __section("__versions") = {
	{ 0x90d19584, "strlen" },
	{ 0xd6761c95, "strncmp" },
	{ 0x16b5b21d, "_printk" },
	{ 0xf5197fd4, "sscanf" },
	{ 0xd272d446, "__stack_chk_fail" },
	{ 0xb5bedffb, "strnlen" },
	{ 0x31b67631, "__fortify_panic" },
	{ 0x8a4521ee, "kstrtoint" },
	{ 0xf4386284, "snprintf" },
	{ 0x00601e9b, "power_supply_get_by_name" },
	{ 0xa3a25682, "power_supply_get_property" },
	{ 0xf15b050c, "power_supply_put" },
	{ 0x43dff603, "kstrtoll" },
	{ 0xf5df0401, "strcmp" },
	{ 0x58997344, "__platform_driver_register" },
	{ 0xbd0cdbf7, "platform_driver_unregister" },
	{ 0x111ba76e, "of_find_node_opts_by_path" },
	{ 0x45ed543a, "of_property_read_string" },
	{ 0x719e716c, "strstr" },
	{ 0x9c1b9f02, "of_get_next_child" },
	{ 0x4a35b4cb, "_dev_warn" },
	{ 0x75abbb63, "of_find_property" },
	{ 0xfe63d2cc, "of_get_property" },
	{ 0x3accfef3, "kstrdup" },
	{ 0x2c6cfe34, "of_get_named_gpio" },
	{ 0x1c5c0483, "param_ops_int" },
	{ 0xde6485ed, "module_layout" },
};

static const u32 ____version_ext_crcs[]
__used __section("__version_ext_crcs") = {
	0x90d19584,
	0xd6761c95,
	0x16b5b21d,
	0xf5197fd4,
	0xd272d446,
	0xb5bedffb,
	0x31b67631,
	0x8a4521ee,
	0xf4386284,
	0x00601e9b,
	0xa3a25682,
	0xf15b050c,
	0x43dff603,
	0xf5df0401,
	0x58997344,
	0xbd0cdbf7,
	0x111ba76e,
	0x45ed543a,
	0x719e716c,
	0x9c1b9f02,
	0x4a35b4cb,
	0x75abbb63,
	0xfe63d2cc,
	0x3accfef3,
	0x2c6cfe34,
	0x1c5c0483,
	0xde6485ed,
};
static const char ____version_ext_names[]
__used __section("__version_ext_names") =
	"strlen\0"
	"strncmp\0"
	"_printk\0"
	"sscanf\0"
	"__stack_chk_fail\0"
	"strnlen\0"
	"__fortify_panic\0"
	"kstrtoint\0"
	"snprintf\0"
	"power_supply_get_by_name\0"
	"power_supply_get_property\0"
	"power_supply_put\0"
	"kstrtoll\0"
	"strcmp\0"
	"__platform_driver_register\0"
	"platform_driver_unregister\0"
	"of_find_node_opts_by_path\0"
	"of_property_read_string\0"
	"strstr\0"
	"of_get_next_child\0"
	"_dev_warn\0"
	"of_find_property\0"
	"of_get_property\0"
	"kstrdup\0"
	"of_get_named_gpio\0"
	"param_ops_int\0"
	"module_layout\0"
;

MODULE_INFO(depends, "");

MODULE_ALIAS("of:N*T*Czte-misc");
MODULE_ALIAS("of:N*T*Czte-miscC*");
