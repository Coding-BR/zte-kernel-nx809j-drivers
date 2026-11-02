#include <linux/module.h>
#include <linux/export-internal.h>
#include <linux/compiler.h>

MODULE_INFO(name, KBUILD_MODNAME);

__visible struct module __this_module
__section(".gnu.linkonce.this_module") = {
	.name = KBUILD_MODNAME,
#ifdef CONFIG_MODULE_UNLOAD
	.exit = cleanup_module,
#endif
	.arch = MODULE_ARCH_INIT,
};



static const struct modversion_info ____versions[]
__used __section("__versions") = {
	{ 0x7da92691, "complete" },
	{ 0x8b487fa5, "device_destroy" },
	{ 0xe66cdaff, "class_destroy" },
	{ 0xf97173b5, "cdev_del" },
	{ 0x0bc5fb0d, "unregister_chrdev_region" },
	{ 0x31359e90, "kfree" },
	{ 0x16b5b21d, "_printk" },
	{ 0xde6485ed, "module_layout" },
};

static const u32 ____version_ext_crcs[]
__used __section("__version_ext_crcs") = {
	0x7da92691,
	0x8b487fa5,
	0xe66cdaff,
	0xf97173b5,
	0x0bc5fb0d,
	0x31359e90,
	0x16b5b21d,
	0xde6485ed,
};
static const char ____version_ext_names[]
__used __section("__version_ext_names") =
	"complete\0"
	"device_destroy\0"
	"class_destroy\0"
	"cdev_del\0"
	"unregister_chrdev_region\0"
	"kfree\0"
	"_printk\0"
	"module_layout\0"
;

MODULE_INFO(depends, "");

