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
	{ 0x995658e3, "mutex_lock" },
	{ 0xf81b4a87, "memdup_user" },
	{ 0xa4a268e5, "spi_sync" },
	{ 0x498bbc2e, "put_device" },
	{ 0x31359e90, "kfree" },
	{ 0x995658e3, "mutex_unlock" },
	{ 0xd272d446, "__stack_chk_fail" },
	{ 0xe010ab8e, "nonseekable_open" },
	{ 0x8ee1928d, "mem_alloc_profiling_key" },
	{ 0x27865ec7, "__kmalloc_large_noprof" },
	{ 0x81d49dc6, "__mutex_init" },
	{ 0xbdd865ba, "device_create" },
	{ 0xb8c8345a, "alt_cb_patch_nops" },
	{ 0x6fabd45b, "__list_add_valid_or_report" },
	{ 0xaa615763, "_raw_spin_lock_irqsave" },
	{ 0x582af1c8, "_raw_spin_unlock_irqrestore" },
	{ 0x8b487fa5, "device_destroy" },
	{ 0x802f8919, "__list_del_entry_valid_or_report" },
	{ 0x95cd1ec9, "__register_chrdev" },
	{ 0xdc5f8372, "class_create" },
	{ 0x21739f25, "__spi_register_driver" },
	{ 0xe66cdaff, "class_destroy" },
	{ 0x52e65492, "__unregister_chrdev" },
	{ 0x16b5b21d, "_printk" },
	{ 0xfc2a1943, "driver_unregister" },
	{ 0x7bc24075, "get_device" },
	{ 0xf1cb1507, "noop_llseek" },
	{ 0xde6485ed, "module_layout" },
};

static const u32 ____version_ext_crcs[]
__used __section("__version_ext_crcs") = {
	0x995658e3,
	0xf81b4a87,
	0xa4a268e5,
	0x498bbc2e,
	0x31359e90,
	0x995658e3,
	0xd272d446,
	0xe010ab8e,
	0x8ee1928d,
	0x27865ec7,
	0x81d49dc6,
	0xbdd865ba,
	0xb8c8345a,
	0x6fabd45b,
	0xaa615763,
	0x582af1c8,
	0x8b487fa5,
	0x802f8919,
	0x95cd1ec9,
	0xdc5f8372,
	0x21739f25,
	0xe66cdaff,
	0x52e65492,
	0x16b5b21d,
	0xfc2a1943,
	0x7bc24075,
	0xf1cb1507,
	0xde6485ed,
};
static const char ____version_ext_names[]
__used __section("__version_ext_names") =
	"mutex_lock\0"
	"memdup_user\0"
	"spi_sync\0"
	"put_device\0"
	"kfree\0"
	"mutex_unlock\0"
	"__stack_chk_fail\0"
	"nonseekable_open\0"
	"mem_alloc_profiling_key\0"
	"__kmalloc_large_noprof\0"
	"__mutex_init\0"
	"device_create\0"
	"alt_cb_patch_nops\0"
	"__list_add_valid_or_report\0"
	"_raw_spin_lock_irqsave\0"
	"_raw_spin_unlock_irqrestore\0"
	"device_destroy\0"
	"__list_del_entry_valid_or_report\0"
	"__register_chrdev\0"
	"class_create\0"
	"__spi_register_driver\0"
	"class_destroy\0"
	"__unregister_chrdev\0"
	"_printk\0"
	"driver_unregister\0"
	"get_device\0"
	"noop_llseek\0"
	"module_layout\0"
;

MODULE_INFO(depends, "");

MODULE_ALIAS("of:N*T*Czte,zte_ir");
MODULE_ALIAS("of:N*T*Czte,zte_irC*");
