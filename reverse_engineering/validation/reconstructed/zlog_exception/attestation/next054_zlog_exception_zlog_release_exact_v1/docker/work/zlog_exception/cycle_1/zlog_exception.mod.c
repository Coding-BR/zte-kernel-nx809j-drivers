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

KSYMTAB_FUNC(zlog_write_internal, "", "");

SYMBOL_CRC(zlog_write_internal, 0x6f3d45ca, "");

static const struct modversion_info ____versions[]
__used __section("__versions") = {
	{ 0x8ee1928d, "mem_alloc_profiling_key" },
	{ 0x760296b1, "kmalloc_caches" },
	{ 0x266d672c, "__kmalloc_cache_noprof" },
	{ 0x27865ec7, "__kmalloc_noprof" },
	{ 0x8a7493b2, "memcpy" },
	{ 0x995658e3, "mutex_lock" },
	{ 0x995658e3, "mutex_unlock" },
	{ 0xf7c60e8b, "__wake_up" },
	{ 0x6fabd45b, "__list_add_valid_or_report" },
	{ 0x31b67631, "__fortify_panic" },
	{ 0x16b5b21d, "_printk" },
	{ 0x31359e90, "kfree" },
	{ 0xde463212, "__init_waitqueue_head" },
	{ 0x81d49dc6, "__mutex_init" },
	{ 0x3accfef3, "kstrdup" },
	{ 0x49d10c61, "misc_register" },
	{ 0x6668f05d, "init_wait_entry" },
	{ 0xa29be00c, "prepare_to_wait_event" },
	{ 0xd272d446, "schedule" },
	{ 0x3d03c2e0, "finish_wait" },
	{ 0x5c76e3f3, "__check_object_size" },
	{ 0x1f42c609, "__arch_copy_to_user" },
	{ 0x802f8919, "__list_del_entry_valid_or_report" },
	{ 0xd272d446, "__stack_chk_fail" },
	{ 0x110f4d3a, "memset" },
	{ 0x1f42c609, "__arch_copy_from_user" },
	{ 0xb8c8345a, "alt_cb_patch_nops" },
	{ 0xde6485ed, "module_layout" },
};

static const u32 ____version_ext_crcs[]
__used __section("__version_ext_crcs") = {
	0x8ee1928d,
	0x760296b1,
	0x266d672c,
	0x27865ec7,
	0x8a7493b2,
	0x995658e3,
	0x995658e3,
	0xf7c60e8b,
	0x6fabd45b,
	0x31b67631,
	0x16b5b21d,
	0x31359e90,
	0xde463212,
	0x81d49dc6,
	0x3accfef3,
	0x49d10c61,
	0x6668f05d,
	0xa29be00c,
	0xd272d446,
	0x3d03c2e0,
	0x5c76e3f3,
	0x1f42c609,
	0x802f8919,
	0xd272d446,
	0x110f4d3a,
	0x1f42c609,
	0xb8c8345a,
	0xde6485ed,
};
static const char ____version_ext_names[]
__used __section("__version_ext_names") =
	"mem_alloc_profiling_key\0"
	"kmalloc_caches\0"
	"__kmalloc_cache_noprof\0"
	"__kmalloc_noprof\0"
	"memcpy\0"
	"mutex_lock\0"
	"mutex_unlock\0"
	"__wake_up\0"
	"__list_add_valid_or_report\0"
	"__fortify_panic\0"
	"_printk\0"
	"kfree\0"
	"__init_waitqueue_head\0"
	"__mutex_init\0"
	"kstrdup\0"
	"misc_register\0"
	"init_wait_entry\0"
	"prepare_to_wait_event\0"
	"schedule\0"
	"finish_wait\0"
	"__check_object_size\0"
	"__arch_copy_to_user\0"
	"__list_del_entry_valid_or_report\0"
	"__stack_chk_fail\0"
	"memset\0"
	"__arch_copy_from_user\0"
	"alt_cb_patch_nops\0"
	"module_layout\0"
;

MODULE_INFO(depends, "");

