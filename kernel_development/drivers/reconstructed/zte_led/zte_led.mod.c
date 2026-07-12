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
	{ 0x7230141c, "i2c_register_driver" },
	{ 0xcb788097, "i2c_del_driver" },
	{ 0x16b5b21d, "_printk" },
	{ 0x1445db3f, "devm_kmalloc" },
	{ 0x4a35b4cb, "_dev_err" },
	{ 0x81d49dc6, "__mutex_init" },
	{ 0xd10ee1a9, "devm_pinctrl_get" },
	{ 0xd2b70215, "pinctrl_lookup_state" },
	{ 0x7c2f5040, "pinctrl_select_state" },
	{ 0x4ebccdb7, "of_property_read_variable_u32_array" },
	{ 0x4a35b4cb, "_dev_info" },
	{ 0x2c6cfe34, "of_get_named_gpio" },
	{ 0xe7fd1854, "devm_gpio_request_one" },
	{ 0xfdbae8c6, "usleep_range_state" },
	{ 0x67628f51, "msleep" },
	{ 0x9c1b9f02, "of_get_next_child" },
	{ 0x45ed543a, "of_property_read_string" },
	{ 0x87748dfe, "led_classdev_register_ext" },
	{ 0x21475af2, "sysfs_create_group" },
	{ 0xcd6e7616, "gpio_to_desc" },
	{ 0x76ddeae0, "gpiod_direction_output" },
	{ 0xcbcc00dd, "led_classdev_unregister" },
	{ 0xd272d446, "__stack_chk_fail" },
	{ 0xf42c304c, "hrtimer_cancel" },
	{ 0x35480a5b, "cancel_work_sync" },
	{ 0x2b323c39, "kthread_stop" },
	{ 0x0339dbfa, "sysfs_remove_group" },
	{ 0x3da00d6c, "remove_proc_entry" },
	{ 0x31359e90, "kfree" },
	{ 0xc1a43599, "gpiod_set_value_cansleep" },
	{ 0x8ee1928d, "mem_alloc_profiling_key" },
	{ 0x760296b1, "kmalloc_caches" },
	{ 0x266d672c, "__kmalloc_cache_noprof" },
	{ 0x80684a2f, "hrtimer_init" },
	{ 0xafb2b6c9, "hrtimer_start_range_ns" },
	{ 0xb7151959, "proc_create" },
	{ 0xc1dc028f, "i2c_transfer_buffer_flags" },
	{ 0x736db730, "gpiod_get_value" },
	{ 0x571c73d5, "system_wq" },
	{ 0x8f4cd990, "queue_work_on" },
	{ 0xf4386284, "snprintf" },
	{ 0xf5197fd4, "sscanf" },
	{ 0x995658e3, "mutex_lock" },
	{ 0x995658e3, "mutex_unlock" },
	{ 0xb5bedffb, "strnlen" },
	{ 0x8f8e273c, "sized_strscpy" },
	{ 0x31b67631, "__fortify_panic" },
	{ 0x1a09ef8f, "request_firmware" },
	{ 0xb770888b, "release_firmware" },
	{ 0x27fd50b2, "kthread_create_on_node" },
	{ 0xcd297f27, "wake_up_process" },
	{ 0x5e505530, "kthread_should_stop" },
	{ 0x2933e3d1, "request_firmware_nowait" },
	{ 0x27865ec7, "__kmalloc_noprof" },
	{ 0x8a7493b2, "memcpy" },
	{ 0xf7ec7b9a, "simple_read_from_buffer" },
	{ 0xde6485ed, "module_layout" },
};

static const u32 ____version_ext_crcs[]
__used __section("__version_ext_crcs") = {
	0x7230141c,
	0xcb788097,
	0x16b5b21d,
	0x1445db3f,
	0x4a35b4cb,
	0x81d49dc6,
	0xd10ee1a9,
	0xd2b70215,
	0x7c2f5040,
	0x4ebccdb7,
	0x4a35b4cb,
	0x2c6cfe34,
	0xe7fd1854,
	0xfdbae8c6,
	0x67628f51,
	0x9c1b9f02,
	0x45ed543a,
	0x87748dfe,
	0x21475af2,
	0xcd6e7616,
	0x76ddeae0,
	0xcbcc00dd,
	0xd272d446,
	0xf42c304c,
	0x35480a5b,
	0x2b323c39,
	0x0339dbfa,
	0x3da00d6c,
	0x31359e90,
	0xc1a43599,
	0x8ee1928d,
	0x760296b1,
	0x266d672c,
	0x80684a2f,
	0xafb2b6c9,
	0xb7151959,
	0xc1dc028f,
	0x736db730,
	0x571c73d5,
	0x8f4cd990,
	0xf4386284,
	0xf5197fd4,
	0x995658e3,
	0x995658e3,
	0xb5bedffb,
	0x8f8e273c,
	0x31b67631,
	0x1a09ef8f,
	0xb770888b,
	0x27fd50b2,
	0xcd297f27,
	0x5e505530,
	0x2933e3d1,
	0x27865ec7,
	0x8a7493b2,
	0xf7ec7b9a,
	0xde6485ed,
};
static const char ____version_ext_names[]
__used __section("__version_ext_names") =
	"i2c_register_driver\0"
	"i2c_del_driver\0"
	"_printk\0"
	"devm_kmalloc\0"
	"_dev_err\0"
	"__mutex_init\0"
	"devm_pinctrl_get\0"
	"pinctrl_lookup_state\0"
	"pinctrl_select_state\0"
	"of_property_read_variable_u32_array\0"
	"_dev_info\0"
	"of_get_named_gpio\0"
	"devm_gpio_request_one\0"
	"usleep_range_state\0"
	"msleep\0"
	"of_get_next_child\0"
	"of_property_read_string\0"
	"led_classdev_register_ext\0"
	"sysfs_create_group\0"
	"gpio_to_desc\0"
	"gpiod_direction_output\0"
	"led_classdev_unregister\0"
	"__stack_chk_fail\0"
	"hrtimer_cancel\0"
	"cancel_work_sync\0"
	"kthread_stop\0"
	"sysfs_remove_group\0"
	"remove_proc_entry\0"
	"kfree\0"
	"gpiod_set_value_cansleep\0"
	"mem_alloc_profiling_key\0"
	"kmalloc_caches\0"
	"__kmalloc_cache_noprof\0"
	"hrtimer_init\0"
	"hrtimer_start_range_ns\0"
	"proc_create\0"
	"i2c_transfer_buffer_flags\0"
	"gpiod_get_value\0"
	"system_wq\0"
	"queue_work_on\0"
	"snprintf\0"
	"sscanf\0"
	"mutex_lock\0"
	"mutex_unlock\0"
	"strnlen\0"
	"sized_strscpy\0"
	"__fortify_panic\0"
	"request_firmware\0"
	"release_firmware\0"
	"kthread_create_on_node\0"
	"wake_up_process\0"
	"kthread_should_stop\0"
	"request_firmware_nowait\0"
	"__kmalloc_noprof\0"
	"memcpy\0"
	"simple_read_from_buffer\0"
	"module_layout\0"
;

MODULE_INFO(depends, "");

MODULE_ALIAS("of:N*T*Cawinic,aw22xxx_led");
MODULE_ALIAS("of:N*T*Cawinic,aw22xxx_ledC*");
MODULE_ALIAS("i2c:aw22xxx_led");
