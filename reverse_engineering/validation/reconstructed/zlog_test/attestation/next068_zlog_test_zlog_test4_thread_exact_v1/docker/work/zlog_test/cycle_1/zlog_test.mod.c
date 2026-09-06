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
	{ 0xf5197fd4, "sscanf" },
	{ 0x16b5b21d, "_printk" },
	{ 0x4da5b954, "zlog_register_client" },
	{ 0x92339a9b, "queue_delayed_work_on" },
	{ 0xba6d2f6c, "flush_delayed_work" },
	{ 0xba6d2f6c, "cancel_delayed_work_sync" },
	{ 0x5256c993, "zlog_unregister_client" },
	{ 0xd272d446, "__stack_chk_fail" },
	{ 0xf4386284, "snprintf" },
	{ 0xc01aafd2, "get_random_u32" },
	{ 0x6935e881, "zlog_client_record" },
	{ 0xd8fcc09c, "zlog_client_notify" },
	{ 0xc531e61f, "alloc_workqueue" },
	{ 0xb0f9b474, "delayed_work_timer_fn" },
	{ 0x534026f3, "init_timer_key" },
	{ 0x9bec046c, "zte_misc_register_callback" },
	{ 0x7162a662, "__msecs_to_jiffies" },
	{ 0xde6485ed, "module_layout" },
};

static const u32 ____version_ext_crcs[]
__used __section("__version_ext_crcs") = {
	0xf5197fd4,
	0x16b5b21d,
	0x4da5b954,
	0x92339a9b,
	0xba6d2f6c,
	0xba6d2f6c,
	0x5256c993,
	0xd272d446,
	0xf4386284,
	0xc01aafd2,
	0x6935e881,
	0xd8fcc09c,
	0xc531e61f,
	0xb0f9b474,
	0x534026f3,
	0x9bec046c,
	0x7162a662,
	0xde6485ed,
};
static const char ____version_ext_names[]
__used __section("__version_ext_names") =
	"sscanf\0"
	"_printk\0"
	"zlog_register_client\0"
	"queue_delayed_work_on\0"
	"flush_delayed_work\0"
	"cancel_delayed_work_sync\0"
	"zlog_unregister_client\0"
	"__stack_chk_fail\0"
	"snprintf\0"
	"get_random_u32\0"
	"zlog_client_record\0"
	"zlog_client_notify\0"
	"alloc_workqueue\0"
	"delayed_work_timer_fn\0"
	"init_timer_key\0"
	"zte_misc_register_callback\0"
	"__msecs_to_jiffies\0"
	"module_layout\0"
;

MODULE_INFO(depends, "zlog_common,zte_misc");

