#include <linux/module.h>
#include <linux/export-internal.h>
#include <linux/compiler.h>

MODULE_INFO(name, KBUILD_MODNAME);

__visible struct module __this_module
__section(".gnu.linkonce.this_module") = {
	.name = KBUILD_MODNAME,
#ifdef CONFIG_MODULE_UNLOAD
	.exit = cleanup_module,
#endif
	.arch = MODULE_ARCH_INIT,
};



static const struct modversion_info ____versions[]
__used __section("__versions") = {
	{ 0x7da92691, "complete" },
	{ 0x8b487fa5, "device_destroy" },
	{ 0xe66cdaff, "class_destroy" },
	{ 0xf97173b5, "cdev_del" },
	{ 0x0bc5fb0d, "unregister_chrdev_region" },
	{ 0x31359e90, "kfree" },
	{ 0x16b5b21d, "_printk" },
	{ 0x869bde71, "qcom_smem_get" },
	{ 0xd4e429b7, "__init_swait_queue_head" },
	{ 0xc407eb52, "request_threaded_irq" },
	{ 0x81d49dc6, "__mutex_init" },
	{ 0x8ee1928d, "mem_alloc_profiling_key" },
	{ 0x27865ec7, "__kmalloc_noprof" },
	{ 0x110f4d3a, "memset" },
	{ 0x4a35b4cb, "_dev_err" },
	{ 0x760296b1, "kmalloc_caches" },
	{ 0x266d672c, "__kmalloc_cache_noprof" },
	{ 0xf4386284, "snprintf" },
	{ 0x3118db51, "of_device_is_compatible" },
	{ 0x75abbb63, "of_find_property" },
	{ 0x873dc599, "qcom_smem_state_get" },
	{ 0x8345e27c, "of_irq_get_byname" },
	{ 0xf8191fb5, "wait_for_completion_interruptible" },
	{ 0x995658e3, "mutex_lock" },
	{ 0x995658e3, "mutex_unlock" },
	{ 0x5c76e3f3, "__check_object_size" },
	{ 0x1f42c609, "__arch_copy_to_user" },
	{ 0xde6485ed, "module_layout" },
};

static const u32 ____version_ext_crcs[]
__used __section("__version_ext_crcs") = {
	0x7da92691,
	0x8b487fa5,
	0xe66cdaff,
	0xf97173b5,
	0x0bc5fb0d,
	0x31359e90,
	0x16b5b21d,
	0x869bde71,
	0xd4e429b7,
	0xc407eb52,
	0x81d49dc6,
	0x8ee1928d,
	0x27865ec7,
	0x110f4d3a,
	0x4a35b4cb,
	0x760296b1,
	0x266d672c,
	0xf4386284,
	0x3118db51,
	0x75abbb63,
	0x873dc599,
	0x8345e27c,
	0xf8191fb5,
	0x995658e3,
	0x995658e3,
	0x5c76e3f3,
	0x1f42c609,
	0xde6485ed,
};
static const char ____version_ext_names[]
__used __section("__version_ext_names") =
	"complete\0"
	"device_destroy\0"
	"class_destroy\0"
	"cdev_del\0"
	"unregister_chrdev_region\0"
	"kfree\0"
	"_printk\0"
	"qcom_smem_get\0"
	"__init_swait_queue_head\0"
	"request_threaded_irq\0"
	"__mutex_init\0"
	"mem_alloc_profiling_key\0"
	"__kmalloc_noprof\0"
	"memset\0"
	"_dev_err\0"
	"kmalloc_caches\0"
	"__kmalloc_cache_noprof\0"
	"snprintf\0"
	"of_device_is_compatible\0"
	"of_find_property\0"
	"qcom_smem_state_get\0"
	"of_irq_get_byname\0"
	"wait_for_completion_interruptible\0"
	"mutex_lock\0"
	"mutex_unlock\0"
	"__check_object_size\0"
	"__arch_copy_to_user\0"
	"module_layout\0"
;

MODULE_INFO(depends, "smem");

