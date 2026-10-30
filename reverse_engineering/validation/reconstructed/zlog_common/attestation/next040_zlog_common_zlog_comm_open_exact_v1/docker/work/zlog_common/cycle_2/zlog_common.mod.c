#include <linux/module.h>
#include <linux/export-internal.h>
#include <linux/compiler.h>

MODULE_INFO(name, KBUILD_MODNAME);

__visible struct module __this_module
__section(".gnu.linkonce.this_module") = {
	.name = KBUILD_MODNAME,
	.init = init_module,
	.arch = MODULE_ARCH_INIT,
};

KSYMTAB_FUNC(zlog_client_notify, "", "");
KSYMTAB_FUNC(zlog_reset_client, "", "");
KSYMTAB_FUNC(zlog_client_record, "", "");
KSYMTAB_FUNC(zlog_register_client, "", "");
KSYMTAB_FUNC(zlog_unregister_client, "", "");

SYMBOL_CRC(zlog_client_notify, 0xc0f08c3b, "");
SYMBOL_CRC(zlog_reset_client, 0xa6a4265f, "");
SYMBOL_CRC(zlog_client_record, 0x70a3f9c6, "");
SYMBOL_CRC(zlog_register_client, 0x10c8295f, "");
SYMBOL_CRC(zlog_unregister_client, 0x7c50d6d4, "");

static const struct modversion_info ____versions[]
__used __section("__versions") = {
	{ 0x8ee1928d, "mem_alloc_profiling_key" },
	{ 0x995658e3, "mutex_lock" },
	{ 0x78dfe782, "vsnprintf" },
	{ 0x995658e3, "mutex_unlock" },
	{ 0x16b5b21d, "_printk" },
	{ 0xd272d446, "__stack_chk_fail" },
	{ 0xd6761c95, "strncmp" },
	{ 0x760296b1, "kmalloc_caches" },
	{ 0x266d672c, "__kmalloc_cache_noprof" },
	{ 0x11ce17c6, "strncpy" },
	{ 0x31359e90, "kfree" },
	{ 0x27865ec7, "__kmalloc_noprof" },
	{ 0x90ee81b3, "ktime_get_real_ts64" },
	{ 0xf5a7643a, "sys_tz" },
	{ 0x9bddc418, "rtc_time64_to_tm" },
	{ 0x69b7acda, "sprintf" },
	{ 0xf4386284, "snprintf" },
	{ 0x8a7493b2, "memcpy" },
	{ 0x6f3d45ca, "zlog_write_internal" },
	{ 0x31b67631, "__fortify_panic" },
	{ 0xb8c8345a, "alt_cb_patch_nops" },
	{ 0xba6d2f6c, "cancel_delayed_work" },
	{ 0x92339a9b, "queue_delayed_work_on" },
	{ 0x110f4d3a, "memset" },
	{ 0x81d49dc6, "__mutex_init" },
	{ 0xc531e61f, "alloc_workqueue" },
	{ 0xb0f9b474, "delayed_work_timer_fn" },
	{ 0x534026f3, "init_timer_key" },
	{ 0x3accfef3, "kstrdup" },
	{ 0x49d10c61, "misc_register" },
	{ 0x1f42c609, "__arch_copy_from_user" },
	{ 0xde6485ed, "module_layout" },
};

static const u32 ____version_ext_crcs[]
__used __section("__version_ext_crcs") = {
	0x8ee1928d,
	0x995658e3,
	0x78dfe782,
	0x995658e3,
	0x16b5b21d,
	0xd272d446,
	0xd6761c95,
	0x760296b1,
	0x266d672c,
	0x11ce17c6,
	0x31359e90,
	0x27865ec7,
	0x90ee81b3,
	0xf5a7643a,
	0x9bddc418,
	0x69b7acda,
	0xf4386284,
	0x8a7493b2,
	0x6f3d45ca,
	0x31b67631,
	0xb8c8345a,
	0xba6d2f6c,
	0x92339a9b,
	0x110f4d3a,
	0x81d49dc6,
	0xc531e61f,
	0xb0f9b474,
	0x534026f3,
	0x3accfef3,
	0x49d10c61,
	0x1f42c609,
	0xde6485ed,
};
static const char ____version_ext_names[]
__used __section("__version_ext_names") =
	"mem_alloc_profiling_key\0"
	"mutex_lock\0"
	"vsnprintf\0"
	"mutex_unlock\0"
	"_printk\0"
	"__stack_chk_fail\0"
	"strncmp\0"
	"kmalloc_caches\0"
	"__kmalloc_cache_noprof\0"
	"strncpy\0"
	"kfree\0"
	"__kmalloc_noprof\0"
	"ktime_get_real_ts64\0"
	"sys_tz\0"
	"rtc_time64_to_tm\0"
	"sprintf\0"
	"snprintf\0"
	"memcpy\0"
	"zlog_write_internal\0"
	"__fortify_panic\0"
	"alt_cb_patch_nops\0"
	"cancel_delayed_work\0"
	"queue_delayed_work_on\0"
	"memset\0"
	"__mutex_init\0"
	"alloc_workqueue\0"
	"delayed_work_timer_fn\0"
	"init_timer_key\0"
	"kstrdup\0"
	"misc_register\0"
	"__arch_copy_from_user\0"
	"module_layout\0"
;

MODULE_INFO(depends, "zlog_exception");

