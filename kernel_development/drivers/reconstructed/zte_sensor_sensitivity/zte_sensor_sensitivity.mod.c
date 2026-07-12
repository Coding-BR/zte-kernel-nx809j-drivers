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
	{ 0x8ee1928d, "mem_alloc_profiling_key" },
	{ 0x760296b1, "kmalloc_caches" },
	{ 0x266d672c, "__kmalloc_cache_noprof" },
	{ 0x81d49dc6, "__mutex_init" },
	{ 0xdc5f8372, "class_create" },
	{ 0xa5dac1ce, "alloc_chrdev_region" },
	{ 0xbdd865ba, "device_create" },
	{ 0x8b487fa5, "device_destroy" },
	{ 0x0bc5fb0d, "unregister_chrdev_region" },
	{ 0xe66cdaff, "class_destroy" },
	{ 0x31359e90, "kfree" },
	{ 0x16b5b21d, "_printk" },
	{ 0x713049b8, "device_remove_file" },
	{ 0x5bb232f5, "device_create_file" },
	{ 0x69b7acda, "sprintf" },
	{ 0x8a4521ee, "kstrtoint" },
	{ 0x995658e3, "mutex_lock" },
	{ 0x995658e3, "mutex_unlock" },
	{ 0xd272d446, "__stack_chk_fail" },
	{ 0x1c5c0483, "param_ops_int" },
	{ 0xde6485ed, "module_layout" },
};

static const u32 ____version_ext_crcs[]
__used __section("__version_ext_crcs") = {
	0x8ee1928d,
	0x760296b1,
	0x266d672c,
	0x81d49dc6,
	0xdc5f8372,
	0xa5dac1ce,
	0xbdd865ba,
	0x8b487fa5,
	0x0bc5fb0d,
	0xe66cdaff,
	0x31359e90,
	0x16b5b21d,
	0x713049b8,
	0x5bb232f5,
	0x69b7acda,
	0x8a4521ee,
	0x995658e3,
	0x995658e3,
	0xd272d446,
	0x1c5c0483,
	0xde6485ed,
};
static const char ____version_ext_names[]
__used __section("__version_ext_names") =
	"mem_alloc_profiling_key\0"
	"kmalloc_caches\0"
	"__kmalloc_cache_noprof\0"
	"__mutex_init\0"
	"class_create\0"
	"alloc_chrdev_region\0"
	"device_create\0"
	"device_destroy\0"
	"unregister_chrdev_region\0"
	"class_destroy\0"
	"kfree\0"
	"_printk\0"
	"device_remove_file\0"
	"device_create_file\0"
	"sprintf\0"
	"kstrtoint\0"
	"mutex_lock\0"
	"mutex_unlock\0"
	"__stack_chk_fail\0"
	"param_ops_int\0"
	"module_layout\0"
;

MODULE_INFO(depends, "");

