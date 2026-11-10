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
	{ 0xf5197fd4, "sscanf" },
	{ 0x16b5b21d, "_printk" },
	{ 0x4da5b954, "zlog_register_client" },
	{ 0xaa615763, "_raw_spin_lock_irqsave" },
	{ 0x92339a9b, "queue_delayed_work_on" },
	{ 0x582af1c8, "_raw_spin_unlock_irqrestore" },
	{ 0xba6d2f6c, "cancel_delayed_work_sync" },
	{ 0x995658e3, "mutex_unlock" },
	{ 0xd272d446, "__stack_chk_fail" },
	{ 0xf4386284, "snprintf" },
	{ 0xc01aafd2, "get_random_u32" },
	{ 0x6935e881, "zlog_client_record" },
	{ 0xd8fcc09c, "zlog_client_notify" },
	{ 0xb0f9b474, "delayed_work_timer_fn" },
	{ 0x534026f3, "init_timer_key" },
	{ 0xc531e61f, "alloc_workqueue" },
	{ 0xc3325950, "destroy_workqueue" },
	{ 0x61afab7e, "zte_misc_register_callback" },
	{ 0x61afab7e, "zte_misc_unregister_callback" },
	{ 0xba6d2f6c, "disable_delayed_work_sync" },
	{ 0x5256c993, "zlog_unregister_client" },
	{ 0x7162a662, "__msecs_to_jiffies" },
	{ 0xde6485ed, "module_layout" },
};

static const u32 ____version_ext_crcs[]
__used __section("__version_ext_crcs") = {
	0x995658e3,
	0xf5197fd4,
	0x16b5b21d,
	0x4da5b954,
	0xaa615763,
	0x92339a9b,
	0x582af1c8,
	0xba6d2f6c,
	0x995658e3,
	0xd272d446,
	0xf4386284,
	0xc01aafd2,
	0x6935e881,
	0xd8fcc09c,
	0xb0f9b474,
	0x534026f3,
	0xc531e61f,
	0xc3325950,
	0x61afab7e,
	0x61afab7e,
	0xba6d2f6c,
	0x5256c993,
	0x7162a662,
	0xde6485ed,
};
static const char ____version_ext_names[]
__used __section("__version_ext_names") =
	"mutex_lock\0"
	"sscanf\0"
	"_printk\0"
	"zlog_register_client\0"
	"_raw_spin_lock_irqsave\0"
	"queue_delayed_work_on\0"
	"_raw_spin_unlock_irqrestore\0"
	"cancel_delayed_work_sync\0"
	"mutex_unlock\0"
	"__stack_chk_fail\0"
	"snprintf\0"
	"get_random_u32\0"
	"zlog_client_record\0"
	"zlog_client_notify\0"
	"delayed_work_timer_fn\0"
	"init_timer_key\0"
	"alloc_workqueue\0"
	"destroy_workqueue\0"
	"zte_misc_register_callback\0"
	"zte_misc_unregister_callback\0"
	"disable_delayed_work_sync\0"
	"zlog_unregister_client\0"
	"__msecs_to_jiffies\0"
	"module_layout\0"
;

MODULE_INFO(depends, "zlog_common,zte_misc");

