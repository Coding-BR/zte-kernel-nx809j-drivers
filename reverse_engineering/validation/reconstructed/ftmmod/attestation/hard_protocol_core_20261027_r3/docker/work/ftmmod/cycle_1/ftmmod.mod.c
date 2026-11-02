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
	{ 0x1a1478f3, "platform_device_register" },
	{ 0x3588e479, "__platform_driver_probe" },
	{ 0xbd0cdbf7, "platform_driver_unregister" },
	{ 0xcf7ab190, "platform_device_unregister" },
	{ 0x4d0f6ae5, "of_find_compatible_node" },
	{ 0xdfd26a4d, "of_iomap" },
	{ 0x3239fbdb, "arm64_use_ng_mappings" },
	{ 0xc948ac44, "ioremap_prot" },
	{ 0x21475af2, "sysfs_create_group" },
	{ 0x7851be11, "is_secboot_device" },
	{ 0xf4386284, "snprintf" },
	{ 0xbf1bc3c1, "qcom_scm_qseecom_call" },
	{ 0xd272d446, "__stack_chk_fail" },
	{ 0xf5197fd4, "sscanf" },
	{ 0xde6485ed, "module_layout" },
};

static const u32 ____version_ext_crcs[]
__used __section("__version_ext_crcs") = {
	0x16b5b21d,
	0x1a1478f3,
	0x3588e479,
	0xbd0cdbf7,
	0xcf7ab190,
	0x4d0f6ae5,
	0xdfd26a4d,
	0x3239fbdb,
	0xc948ac44,
	0x21475af2,
	0x7851be11,
	0xf4386284,
	0xbf1bc3c1,
	0xd272d446,
	0xf5197fd4,
	0xde6485ed,
};
static const char ____version_ext_names[]
__used __section("__version_ext_names") =
	"_printk\0"
	"platform_device_register\0"
	"__platform_driver_probe\0"
	"platform_driver_unregister\0"
	"platform_device_unregister\0"
	"of_find_compatible_node\0"
	"of_iomap\0"
	"arm64_use_ng_mappings\0"
	"ioremap_prot\0"
	"sysfs_create_group\0"
	"is_secboot_device\0"
	"snprintf\0"
	"qcom_scm_qseecom_call\0"
	"__stack_chk_fail\0"
	"sscanf\0"
	"module_layout\0"
;

MODULE_INFO(depends, "kmparam,qcom-scm");

