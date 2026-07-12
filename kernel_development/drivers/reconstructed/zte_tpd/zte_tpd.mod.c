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
	{ 0xf5df0401, "strcmp" },
	{ 0x16b5b21d, "_printk" },
	{ 0xebe5da4a, "gpio_free" },
	{ 0x5c76e3f3, "__check_object_size" },
	{ 0x110f4d3a, "memset" },
	{ 0x1f42c609, "__arch_copy_from_user" },
	{ 0xba6d2f6c, "cancel_delayed_work_sync" },
	{ 0x995658e3, "mutex_lock" },
	{ 0x8f4cd990, "queue_work_on" },
	{ 0x995658e3, "mutex_unlock" },
	{ 0xbd0cdbf7, "platform_driver_unregister" },
	{ 0xf4386284, "snprintf" },
	{ 0xf7ec7b9a, "simple_read_from_buffer" },
	{ 0xd272d446, "__stack_chk_fail" },
	{ 0x8afeee90, "input_event" },
	{ 0xb38499e5, "input_mt_report_slot_state" },
	{ 0x90d19584, "strlen" },
	{ 0x7e514d40, "strnstr" },
	{ 0x3702a4be, "vfree" },
	{ 0x31359e90, "kfree" },
	{ 0x8ee1928d, "mem_alloc_profiling_key" },
	{ 0x760296b1, "kmalloc_caches" },
	{ 0x266d672c, "__kmalloc_cache_noprof" },
	{ 0x8a7493b2, "memcpy" },
	{ 0xeac1e857, "strsep" },
	{ 0xafb18b07, "kstrtouint" },
	{ 0xfdbae8c6, "usleep_range_state" },
	{ 0x58d1587d, "kobject_uevent_env" },
	{ 0x7da92691, "complete" },
	{ 0x1e8510b3, "kstrtouint_from_user" },
	{ 0x67628f51, "msleep" },
	{ 0x27865ec7, "__kmalloc_noprof" },
	{ 0xc5f883ea, "strchr" },
	{ 0x21f64238, "strim" },
	{ 0x16c5af34, "simple_strtoul" },
	{ 0x31b67631, "__fortify_panic" },
	{ 0x81d49dc6, "__mutex_init" },
	{ 0xe3a536c7, "register_chrdev_region" },
	{ 0xa5dac1ce, "alloc_chrdev_region" },
	{ 0x44f7075e, "cdev_init" },
	{ 0xfa855fab, "cdev_add" },
	{ 0xdc5f8372, "class_create" },
	{ 0xbdd865ba, "device_create" },
	{ 0xde463212, "__init_waitqueue_head" },
	{ 0xe66cdaff, "class_destroy" },
	{ 0xf97173b5, "cdev_del" },
	{ 0x0bc5fb0d, "unregister_chrdev_region" },
	{ 0xee6b5fe5, "kasprintf" },
	{ 0xc0d1070f, "devm_kfree" },
	{ 0x1445db3f, "devm_kmalloc" },
	{ 0x1f42c609, "__arch_copy_to_user" },
	{ 0x802f8919, "__list_del_entry_valid_or_report" },
	{ 0x6668f05d, "init_wait_entry" },
	{ 0xa29be00c, "prepare_to_wait_event" },
	{ 0x0bac81a1, "schedule_timeout" },
	{ 0x3d03c2e0, "finish_wait" },
	{ 0x1127e91b, "__warn_printk" },
	{ 0x259423b0, "__copy_overflow" },
	{ 0x90ee81b3, "ktime_get_real_ts64" },
	{ 0xf7c60e8b, "__wake_up" },
	{ 0x8b487fa5, "device_destroy" },
	{ 0x92339a9b, "queue_delayed_work_on" },
	{ 0xcd6e7616, "gpio_to_desc" },
	{ 0x736db730, "gpiod_to_irq" },
	{ 0x4425203c, "devm_request_threaded_irq" },
	{ 0xc531e61f, "alloc_workqueue" },
	{ 0xb0f9b474, "delayed_work_timer_fn" },
	{ 0x534026f3, "init_timer_key" },
	{ 0xfa0959b5, "input_unregister_device" },
	{ 0xc3325950, "__flush_workqueue" },
	{ 0xc3325950, "destroy_workqueue" },
	{ 0x963deaae, "devm_free_irq" },
	{ 0x1a09ef8f, "request_firmware" },
	{ 0xb770888b, "release_firmware" },
	{ 0xfe9be5a6, "irq_set_irq_wake" },
	{ 0x6dc35028, "wait_for_completion_timeout" },
	{ 0x736db730, "gpiod_get_raw_value" },
	{ 0x58997344, "__platform_driver_register" },
	{ 0xd4e429b7, "__init_swait_queue_head" },
	{ 0x27865ec7, "__kmalloc_large_noprof" },
	{ 0x49d10c61, "misc_register" },
	{ 0xa71696c5, "device_set_wakeup_capable" },
	{ 0xb626596a, "device_wakeup_enable" },
	{ 0x57858c37, "completion_done" },
	{ 0x0ce73b9f, "pm_stay_awake" },
	{ 0x0ce73b9f, "pm_relax" },
	{ 0x35480a5b, "cancel_work_sync" },
	{ 0x57bbc774, "panel_event_notifier_unregister" },
	{ 0x41b81ae5, "devm_input_allocate_device" },
	{ 0xf447e7b4, "input_set_capability" },
	{ 0xdce386f1, "input_set_abs_params" },
	{ 0xda22d89a, "input_mt_init_slots" },
	{ 0x83b2ff0b, "input_register_device" },
	{ 0xfa0959b5, "input_free_device" },
	{ 0xfc2a1943, "driver_unregister" },
	{ 0xcf7ab190, "platform_device_unregister" },
	{ 0x5df44232, "platform_device_register_full" },
	{ 0x21739f25, "__spi_register_driver" },
	{ 0xd272d446, "schedule" },
	{ 0xc9a2f5d2, "memstart_addr" },
	{ 0x7f175992, "kimage_voffset" },
	{ 0x40fda619, "remap_pfn_range" },
	{ 0x8e3336dd, "enable_irq" },
	{ 0x8e3336dd, "disable_irq_nosync" },
	{ 0xf4386284, "scnprintf" },
	{ 0x69656318, "gpio_request" },
	{ 0x76ddeae0, "gpiod_direction_output_raw" },
	{ 0xcf0a82f0, "gpiod_direction_input" },
	{ 0xc1a43599, "gpiod_set_raw_value" },
	{ 0x8a189605, "regulator_disable" },
	{ 0x8a189605, "regulator_enable" },
	{ 0x75abbb63, "of_find_property" },
	{ 0x2c6cfe34, "of_get_named_gpio" },
	{ 0x4ebccdb7, "of_property_read_variable_u32_array" },
	{ 0x45ed543a, "of_property_read_string" },
	{ 0xcae628c3, "devm_regulator_get" },
	{ 0x375bc02f, "spi_setup" },
	{ 0x51a622eb, "devm_regulator_put" },
	{ 0x6fabd45b, "__list_add_valid_or_report" },
	{ 0xa4a268e5, "spi_sync" },
	{ 0xc6e98b8a, "kobject_create_and_add" },
	{ 0x21475af2, "sysfs_create_group" },
	{ 0x0339dbfa, "sysfs_remove_group" },
	{ 0xf8f94d15, "kobject_put" },
	{ 0xd6761c95, "strncmp" },
	{ 0xb5bedffb, "strnlen" },
	{ 0x31a83776, "crc32_le" },
	{ 0x00601e9b, "power_supply_get_by_name" },
	{ 0x0a227d4d, "power_supply_reg_notifier" },
	{ 0x1c6fbb68, "of_count_phandle_with_args" },
	{ 0xec931d28, "__of_parse_phandle_with_args" },
	{ 0x8c83d153, "of_drm_find_panel" },
	{ 0x11ce17c6, "strncpy" },
	{ 0x1988207d, "panel_event_notifier_register" },
	{ 0x38faebe9, "vmalloc_noprof" },
	{ 0x3da00d6c, "remove_proc_entry" },
	{ 0xf2a4b08a, "jiffies" },
	{ 0x693ab53d, "jiffies_to_msecs" },
	{ 0x729d105b, "_ctype" },
	{ 0x788be0c4, "wakeup_source_remove" },
	{ 0x788be0c4, "wakeup_source_add" },
	{ 0x073dd9d9, "pm_wakeup_ws_event" },
	{ 0x92339a9b, "mod_delayed_work_on" },
	{ 0x5a41dd94, "sysfs_remove_bin_file" },
	{ 0xaf4da3a2, "platform_device_alloc" },
	{ 0x1a1478f3, "platform_device_add" },
	{ 0xcf7ab190, "platform_device_put" },
	{ 0xb4d26434, "proc_mkdir" },
	{ 0xb7151959, "proc_create" },
	{ 0x21ff4a19, "sysfs_create_bin_file" },
	{ 0xde6485ed, "module_layout" },
};

static const u32 ____version_ext_crcs[]
__used __section("__version_ext_crcs") = {
	0xf5df0401,
	0x16b5b21d,
	0xebe5da4a,
	0x5c76e3f3,
	0x110f4d3a,
	0x1f42c609,
	0xba6d2f6c,
	0x995658e3,
	0x8f4cd990,
	0x995658e3,
	0xbd0cdbf7,
	0xf4386284,
	0xf7ec7b9a,
	0xd272d446,
	0x8afeee90,
	0xb38499e5,
	0x90d19584,
	0x7e514d40,
	0x3702a4be,
	0x31359e90,
	0x8ee1928d,
	0x760296b1,
	0x266d672c,
	0x8a7493b2,
	0xeac1e857,
	0xafb18b07,
	0xfdbae8c6,
	0x58d1587d,
	0x7da92691,
	0x1e8510b3,
	0x67628f51,
	0x27865ec7,
	0xc5f883ea,
	0x21f64238,
	0x16c5af34,
	0x31b67631,
	0x81d49dc6,
	0xe3a536c7,
	0xa5dac1ce,
	0x44f7075e,
	0xfa855fab,
	0xdc5f8372,
	0xbdd865ba,
	0xde463212,
	0xe66cdaff,
	0xf97173b5,
	0x0bc5fb0d,
	0xee6b5fe5,
	0xc0d1070f,
	0x1445db3f,
	0x1f42c609,
	0x802f8919,
	0x6668f05d,
	0xa29be00c,
	0x0bac81a1,
	0x3d03c2e0,
	0x1127e91b,
	0x259423b0,
	0x90ee81b3,
	0xf7c60e8b,
	0x8b487fa5,
	0x92339a9b,
	0xcd6e7616,
	0x736db730,
	0x4425203c,
	0xc531e61f,
	0xb0f9b474,
	0x534026f3,
	0xfa0959b5,
	0xc3325950,
	0xc3325950,
	0x963deaae,
	0x1a09ef8f,
	0xb770888b,
	0xfe9be5a6,
	0x6dc35028,
	0x736db730,
	0x58997344,
	0xd4e429b7,
	0x27865ec7,
	0x49d10c61,
	0xa71696c5,
	0xb626596a,
	0x57858c37,
	0x0ce73b9f,
	0x0ce73b9f,
	0x35480a5b,
	0x57bbc774,
	0x41b81ae5,
	0xf447e7b4,
	0xdce386f1,
	0xda22d89a,
	0x83b2ff0b,
	0xfa0959b5,
	0xfc2a1943,
	0xcf7ab190,
	0x5df44232,
	0x21739f25,
	0xd272d446,
	0xc9a2f5d2,
	0x7f175992,
	0x40fda619,
	0x8e3336dd,
	0x8e3336dd,
	0xf4386284,
	0x69656318,
	0x76ddeae0,
	0xcf0a82f0,
	0xc1a43599,
	0x8a189605,
	0x8a189605,
	0x75abbb63,
	0x2c6cfe34,
	0x4ebccdb7,
	0x45ed543a,
	0xcae628c3,
	0x375bc02f,
	0x51a622eb,
	0x6fabd45b,
	0xa4a268e5,
	0xc6e98b8a,
	0x21475af2,
	0x0339dbfa,
	0xf8f94d15,
	0xd6761c95,
	0xb5bedffb,
	0x31a83776,
	0x00601e9b,
	0x0a227d4d,
	0x1c6fbb68,
	0xec931d28,
	0x8c83d153,
	0x11ce17c6,
	0x1988207d,
	0x38faebe9,
	0x3da00d6c,
	0xf2a4b08a,
	0x693ab53d,
	0x729d105b,
	0x788be0c4,
	0x788be0c4,
	0x073dd9d9,
	0x92339a9b,
	0x5a41dd94,
	0xaf4da3a2,
	0x1a1478f3,
	0xcf7ab190,
	0xb4d26434,
	0xb7151959,
	0x21ff4a19,
	0xde6485ed,
};
static const char ____version_ext_names[]
__used __section("__version_ext_names") =
	"strcmp\0"
	"_printk\0"
	"gpio_free\0"
	"__check_object_size\0"
	"memset\0"
	"__arch_copy_from_user\0"
	"cancel_delayed_work_sync\0"
	"mutex_lock\0"
	"queue_work_on\0"
	"mutex_unlock\0"
	"platform_driver_unregister\0"
	"snprintf\0"
	"simple_read_from_buffer\0"
	"__stack_chk_fail\0"
	"input_event\0"
	"input_mt_report_slot_state\0"
	"strlen\0"
	"strnstr\0"
	"vfree\0"
	"kfree\0"
	"mem_alloc_profiling_key\0"
	"kmalloc_caches\0"
	"__kmalloc_cache_noprof\0"
	"memcpy\0"
	"strsep\0"
	"kstrtouint\0"
	"usleep_range_state\0"
	"kobject_uevent_env\0"
	"complete\0"
	"kstrtouint_from_user\0"
	"msleep\0"
	"__kmalloc_noprof\0"
	"strchr\0"
	"strim\0"
	"simple_strtoul\0"
	"__fortify_panic\0"
	"__mutex_init\0"
	"register_chrdev_region\0"
	"alloc_chrdev_region\0"
	"cdev_init\0"
	"cdev_add\0"
	"class_create\0"
	"device_create\0"
	"__init_waitqueue_head\0"
	"class_destroy\0"
	"cdev_del\0"
	"unregister_chrdev_region\0"
	"kasprintf\0"
	"devm_kfree\0"
	"devm_kmalloc\0"
	"__arch_copy_to_user\0"
	"__list_del_entry_valid_or_report\0"
	"init_wait_entry\0"
	"prepare_to_wait_event\0"
	"schedule_timeout\0"
	"finish_wait\0"
	"__warn_printk\0"
	"__copy_overflow\0"
	"ktime_get_real_ts64\0"
	"__wake_up\0"
	"device_destroy\0"
	"queue_delayed_work_on\0"
	"gpio_to_desc\0"
	"gpiod_to_irq\0"
	"devm_request_threaded_irq\0"
	"alloc_workqueue\0"
	"delayed_work_timer_fn\0"
	"init_timer_key\0"
	"input_unregister_device\0"
	"__flush_workqueue\0"
	"destroy_workqueue\0"
	"devm_free_irq\0"
	"request_firmware\0"
	"release_firmware\0"
	"irq_set_irq_wake\0"
	"wait_for_completion_timeout\0"
	"gpiod_get_raw_value\0"
	"__platform_driver_register\0"
	"__init_swait_queue_head\0"
	"__kmalloc_large_noprof\0"
	"misc_register\0"
	"device_set_wakeup_capable\0"
	"device_wakeup_enable\0"
	"completion_done\0"
	"pm_stay_awake\0"
	"pm_relax\0"
	"cancel_work_sync\0"
	"panel_event_notifier_unregister\0"
	"devm_input_allocate_device\0"
	"input_set_capability\0"
	"input_set_abs_params\0"
	"input_mt_init_slots\0"
	"input_register_device\0"
	"input_free_device\0"
	"driver_unregister\0"
	"platform_device_unregister\0"
	"platform_device_register_full\0"
	"__spi_register_driver\0"
	"schedule\0"
	"memstart_addr\0"
	"kimage_voffset\0"
	"remap_pfn_range\0"
	"enable_irq\0"
	"disable_irq_nosync\0"
	"scnprintf\0"
	"gpio_request\0"
	"gpiod_direction_output_raw\0"
	"gpiod_direction_input\0"
	"gpiod_set_raw_value\0"
	"regulator_disable\0"
	"regulator_enable\0"
	"of_find_property\0"
	"of_get_named_gpio\0"
	"of_property_read_variable_u32_array\0"
	"of_property_read_string\0"
	"devm_regulator_get\0"
	"spi_setup\0"
	"devm_regulator_put\0"
	"__list_add_valid_or_report\0"
	"spi_sync\0"
	"kobject_create_and_add\0"
	"sysfs_create_group\0"
	"sysfs_remove_group\0"
	"kobject_put\0"
	"strncmp\0"
	"strnlen\0"
	"crc32_le\0"
	"power_supply_get_by_name\0"
	"power_supply_reg_notifier\0"
	"of_count_phandle_with_args\0"
	"__of_parse_phandle_with_args\0"
	"of_drm_find_panel\0"
	"strncpy\0"
	"panel_event_notifier_register\0"
	"vmalloc_noprof\0"
	"remove_proc_entry\0"
	"jiffies\0"
	"jiffies_to_msecs\0"
	"_ctype\0"
	"wakeup_source_remove\0"
	"wakeup_source_add\0"
	"pm_wakeup_ws_event\0"
	"mod_delayed_work_on\0"
	"sysfs_remove_bin_file\0"
	"platform_device_alloc\0"
	"platform_device_add\0"
	"platform_device_put\0"
	"proc_mkdir\0"
	"proc_create\0"
	"sysfs_create_bin_file\0"
	"module_layout\0"
;

MODULE_INFO(depends, "");

