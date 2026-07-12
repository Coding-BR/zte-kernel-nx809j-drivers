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
	{ 0x16b5b21d, "_printk" },
	{ 0x95cd1ec9, "__register_chrdev" },
	{ 0xdc5f8372, "class_create" },
	{ 0x58997344, "__platform_driver_register" },
	{ 0x8a7493b2, "memcpy" },
	{ 0xaac6c3df, "init_net" },
	{ 0xcba1cc76, "__netlink_kernel_create" },
	{ 0xe66cdaff, "class_destroy" },
	{ 0x52e65492, "__unregister_chrdev" },
	{ 0xbd0cdbf7, "platform_driver_unregister" },
	{ 0xd272d446, "__stack_chk_fail" },
	{ 0xd3e18723, "netlink_kernel_release" },
	{ 0x8afeee90, "input_event" },
	{ 0x995658e3, "mutex_lock" },
	{ 0xe010ab8e, "nonseekable_open" },
	{ 0xd10ee1a9, "devm_pinctrl_get" },
	{ 0xd2b70215, "pinctrl_lookup_state" },
	{ 0x7c2f5040, "pinctrl_select_state" },
	{ 0xfdbae8c6, "usleep_range_state" },
	{ 0xcae628c3, "devm_regulator_get" },
	{ 0xcd6e7616, "gpio_to_desc" },
	{ 0x736db730, "gpiod_to_irq" },
	{ 0xc407eb52, "request_threaded_irq" },
	{ 0xfe9be5a6, "irq_set_irq_wake" },
	{ 0x995658e3, "mutex_unlock" },
	{ 0x8a189605, "regulator_enable" },
	{ 0x2c6cfe34, "of_get_named_gpio" },
	{ 0xb18ed447, "devm_gpio_request" },
	{ 0xcf0a82f0, "gpiod_direction_input" },
	{ 0x4a35b4cb, "_dev_err" },
	{ 0x8e3336dd, "disable_irq" },
	{ 0xdd0d6b2a, "free_irq" },
	{ 0xc1a43599, "gpiod_set_raw_value" },
	{ 0xb7d17430, "__const_udelay" },
	{ 0x8e3336dd, "enable_irq" },
	{ 0x8a189605, "regulator_is_enabled" },
	{ 0x8a189605, "regulator_disable" },
	{ 0xebe5da4a, "gpio_free" },
	{ 0x1f42c609, "__arch_copy_to_user" },
	{ 0x110f4d3a, "memset" },
	{ 0x1f42c609, "__arch_copy_from_user" },
	{ 0x073dd9d9, "pm_wakeup_ws_event" },
	{ 0x120906f6, "__alloc_skb" },
	{ 0x14e15a63, "sk_skb_reason_drop" },
	{ 0xa46cebd0, "__nlmsg_put" },
	{ 0x881cfb14, "netlink_unicast" },
	{ 0xc531e61f, "alloc_workqueue" },
	{ 0xb0f9b474, "delayed_work_timer_fn" },
	{ 0x534026f3, "init_timer_key" },
	{ 0x92339a9b, "queue_delayed_work_on" },
	{ 0xbdd865ba, "device_create" },
	{ 0x66117795, "input_allocate_device" },
	{ 0xf447e7b4, "input_set_capability" },
	{ 0x83b2ff0b, "input_register_device" },
	{ 0xc52903d6, "wakeup_source_create" },
	{ 0x788be0c4, "wakeup_source_add" },
	{ 0xfa0959b5, "input_free_device" },
	{ 0x8b487fa5, "device_destroy" },
	{ 0xba6d2f6c, "cancel_delayed_work_sync" },
	{ 0xc3325950, "destroy_workqueue" },
	{ 0x802f8919, "__list_del_entry_valid_or_report" },
	{ 0x6fabd45b, "__list_add_valid_or_report" },
	{ 0x788be0c4, "wakeup_source_remove" },
	{ 0x788be0c4, "wakeup_source_destroy" },
	{ 0xfa0959b5, "input_unregister_device" },
	{ 0x57bbc774, "panel_event_notifier_unregister" },
	{ 0x1c6fbb68, "of_count_phandle_with_args" },
	{ 0xec931d28, "__of_parse_phandle_with_args" },
	{ 0x8c83d153, "of_drm_find_panel" },
	{ 0x1988207d, "panel_event_notifier_register" },
	{ 0xde6485ed, "module_layout" },
};

static const u32 ____version_ext_crcs[]
__used __section("__version_ext_crcs") = {
	0x16b5b21d,
	0x95cd1ec9,
	0xdc5f8372,
	0x58997344,
	0x8a7493b2,
	0xaac6c3df,
	0xcba1cc76,
	0xe66cdaff,
	0x52e65492,
	0xbd0cdbf7,
	0xd272d446,
	0xd3e18723,
	0x8afeee90,
	0x995658e3,
	0xe010ab8e,
	0xd10ee1a9,
	0xd2b70215,
	0x7c2f5040,
	0xfdbae8c6,
	0xcae628c3,
	0xcd6e7616,
	0x736db730,
	0xc407eb52,
	0xfe9be5a6,
	0x995658e3,
	0x8a189605,
	0x2c6cfe34,
	0xb18ed447,
	0xcf0a82f0,
	0x4a35b4cb,
	0x8e3336dd,
	0xdd0d6b2a,
	0xc1a43599,
	0xb7d17430,
	0x8e3336dd,
	0x8a189605,
	0x8a189605,
	0xebe5da4a,
	0x1f42c609,
	0x110f4d3a,
	0x1f42c609,
	0x073dd9d9,
	0x120906f6,
	0x14e15a63,
	0xa46cebd0,
	0x881cfb14,
	0xc531e61f,
	0xb0f9b474,
	0x534026f3,
	0x92339a9b,
	0xbdd865ba,
	0x66117795,
	0xf447e7b4,
	0x83b2ff0b,
	0xc52903d6,
	0x788be0c4,
	0xfa0959b5,
	0x8b487fa5,
	0xba6d2f6c,
	0xc3325950,
	0x802f8919,
	0x6fabd45b,
	0x788be0c4,
	0x788be0c4,
	0xfa0959b5,
	0x57bbc774,
	0x1c6fbb68,
	0xec931d28,
	0x8c83d153,
	0x1988207d,
	0xde6485ed,
};
static const char ____version_ext_names[]
__used __section("__version_ext_names") =
	"_printk\0"
	"__register_chrdev\0"
	"class_create\0"
	"__platform_driver_register\0"
	"memcpy\0"
	"init_net\0"
	"__netlink_kernel_create\0"
	"class_destroy\0"
	"__unregister_chrdev\0"
	"platform_driver_unregister\0"
	"__stack_chk_fail\0"
	"netlink_kernel_release\0"
	"input_event\0"
	"mutex_lock\0"
	"nonseekable_open\0"
	"devm_pinctrl_get\0"
	"pinctrl_lookup_state\0"
	"pinctrl_select_state\0"
	"usleep_range_state\0"
	"devm_regulator_get\0"
	"gpio_to_desc\0"
	"gpiod_to_irq\0"
	"request_threaded_irq\0"
	"irq_set_irq_wake\0"
	"mutex_unlock\0"
	"regulator_enable\0"
	"of_get_named_gpio\0"
	"devm_gpio_request\0"
	"gpiod_direction_input\0"
	"_dev_err\0"
	"disable_irq\0"
	"free_irq\0"
	"gpiod_set_raw_value\0"
	"__const_udelay\0"
	"enable_irq\0"
	"regulator_is_enabled\0"
	"regulator_disable\0"
	"gpio_free\0"
	"__arch_copy_to_user\0"
	"memset\0"
	"__arch_copy_from_user\0"
	"pm_wakeup_ws_event\0"
	"__alloc_skb\0"
	"sk_skb_reason_drop\0"
	"__nlmsg_put\0"
	"netlink_unicast\0"
	"alloc_workqueue\0"
	"delayed_work_timer_fn\0"
	"init_timer_key\0"
	"queue_delayed_work_on\0"
	"device_create\0"
	"input_allocate_device\0"
	"input_set_capability\0"
	"input_register_device\0"
	"wakeup_source_create\0"
	"wakeup_source_add\0"
	"input_free_device\0"
	"device_destroy\0"
	"cancel_delayed_work_sync\0"
	"destroy_workqueue\0"
	"__list_del_entry_valid_or_report\0"
	"__list_add_valid_or_report\0"
	"wakeup_source_remove\0"
	"wakeup_source_destroy\0"
	"input_unregister_device\0"
	"panel_event_notifier_unregister\0"
	"of_count_phandle_with_args\0"
	"__of_parse_phandle_with_args\0"
	"of_drm_find_panel\0"
	"panel_event_notifier_register\0"
	"module_layout\0"
;

MODULE_INFO(depends, "");

MODULE_ALIAS("of:N*T*Cgoodix,fingerprint");
MODULE_ALIAS("of:N*T*Cgoodix,fingerprintC*");
MODULE_ALIAS("of:N*T*Cgoodix,fp");
MODULE_ALIAS("of:N*T*Cgoodix,fpC*");
MODULE_ALIAS("of:N*T*Cgoodix,fp-spi");
MODULE_ALIAS("of:N*T*Cgoodix,fp-spiC*");
MODULE_ALIAS("of:N*T*Czte,goodix-fp");
MODULE_ALIAS("of:N*T*Czte,goodix-fpC*");
