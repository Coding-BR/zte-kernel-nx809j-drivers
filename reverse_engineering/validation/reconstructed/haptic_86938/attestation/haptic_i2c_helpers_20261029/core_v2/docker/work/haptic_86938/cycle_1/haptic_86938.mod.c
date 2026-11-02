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
	{ 0xf4386284, "snprintf" },
	{ 0x3902a1ac, "i2c_transfer" },
	{ 0x16b5b21d, "_printk" },
	{ 0xd272d446, "__stack_chk_fail" },
	{ 0x8ee1928d, "mem_alloc_profiling_key" },
	{ 0x27865ec7, "__kmalloc_noprof" },
	{ 0x8a7493b2, "memcpy" },
	{ 0xc1dc028f, "i2c_transfer_buffer_flags" },
	{ 0x31359e90, "kfree" },
	{ 0x31b67631, "__fortify_panic" },
	{ 0xde6485ed, "module_layout" },
};

static const u32 ____version_ext_crcs[]
__used __section("__version_ext_crcs") = {
	0xf4386284,
	0x3902a1ac,
	0x16b5b21d,
	0xd272d446,
	0x8ee1928d,
	0x27865ec7,
	0x8a7493b2,
	0xc1dc028f,
	0x31359e90,
	0x31b67631,
	0xde6485ed,
};
static const char ____version_ext_names[]
__used __section("__version_ext_names") =
	"snprintf\0"
	"i2c_transfer\0"
	"_printk\0"
	"__stack_chk_fail\0"
	"mem_alloc_profiling_key\0"
	"__kmalloc_noprof\0"
	"memcpy\0"
	"i2c_transfer_buffer_flags\0"
	"kfree\0"
	"__fortify_panic\0"
	"module_layout\0"
;

MODULE_INFO(depends, "");

