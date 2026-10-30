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
	{ 0xf779b1f2, "memchr" },
	{ 0x90d19584, "strlen" },
	{ 0x8a7493b2, "memcpy" },
	{ 0x110f4d3a, "memset" },
	{ 0x16b5b21d, "_printk" },
	{ 0x791ba436, "nvmem_cell_write" },
	{ 0x729d105b, "_ctype" },
	{ 0xf4386284, "scnprintf" },
	{ 0xd272d446, "__stack_chk_fail" },
	{ 0x6462cbe7, "get_ss_panic_buf_byte" },
	{ 0x1445db3f, "devm_kmalloc" },
	{ 0xb4f2cf3c, "kernel_kobj" },
	{ 0x055848b2, "kobject_init_and_add" },
	{ 0x21475af2, "sysfs_create_group" },
	{ 0x5770cdb3, "nvmem_cell_get" },
	{ 0xf8f94d15, "kobject_put" },
	{ 0xf8f94d15, "kobject_del" },
	{ 0x22690a37, "nvmem_cell_read" },
	{ 0x31359e90, "kfree" },
	{ 0x3cf68c21, "panic_notifier_list" },
	{ 0xd4b63632, "atomic_notifier_chain_register" },
	{ 0xf4386284, "snprintf" },
	{ 0xf5df0401, "strcmp" },
	{ 0x1127e91b, "panic" },
	{ 0x58997344, "__platform_driver_register" },
	{ 0xbd0cdbf7, "platform_driver_unregister" },
	{ 0x2a38fe47, "register_kretprobe" },
	{ 0x4a35b4cb, "_dev_info" },
	{ 0x4a35b4cb, "_dev_err" },
	{ 0xd4b63632, "atomic_notifier_chain_unregister" },
	{ 0x3d5e2716, "unregister_kretprobe" },
	{ 0xde6485ed, "module_layout" },
};

static const u32 ____version_ext_crcs[]
__used __section("__version_ext_crcs") = {
	0xf779b1f2,
	0x90d19584,
	0x8a7493b2,
	0x110f4d3a,
	0x16b5b21d,
	0x791ba436,
	0x729d105b,
	0xf4386284,
	0xd272d446,
	0x6462cbe7,
	0x1445db3f,
	0xb4f2cf3c,
	0x055848b2,
	0x21475af2,
	0x5770cdb3,
	0xf8f94d15,
	0xf8f94d15,
	0x22690a37,
	0x31359e90,
	0x3cf68c21,
	0xd4b63632,
	0xf4386284,
	0xf5df0401,
	0x1127e91b,
	0x58997344,
	0xbd0cdbf7,
	0x2a38fe47,
	0x4a35b4cb,
	0x4a35b4cb,
	0xd4b63632,
	0x3d5e2716,
	0xde6485ed,
};
static const char ____version_ext_names[]
__used __section("__version_ext_names") =
	"memchr\0"
	"strlen\0"
	"memcpy\0"
	"memset\0"
	"_printk\0"
	"nvmem_cell_write\0"
	"_ctype\0"
	"scnprintf\0"
	"__stack_chk_fail\0"
	"get_ss_panic_buf_byte\0"
	"devm_kmalloc\0"
	"kernel_kobj\0"
	"kobject_init_and_add\0"
	"sysfs_create_group\0"
	"nvmem_cell_get\0"
	"kobject_put\0"
	"kobject_del\0"
	"nvmem_cell_read\0"
	"kfree\0"
	"panic_notifier_list\0"
	"atomic_notifier_chain_register\0"
	"snprintf\0"
	"strcmp\0"
	"panic\0"
	"__platform_driver_register\0"
	"platform_driver_unregister\0"
	"register_kretprobe\0"
	"_dev_info\0"
	"_dev_err\0"
	"atomic_notifier_chain_unregister\0"
	"unregister_kretprobe\0"
	"module_layout\0"
;

MODULE_INFO(depends, "qcom_q6v5");

MODULE_ALIAS("of:N*T*Czte,reboot-ext");
MODULE_ALIAS("of:N*T*Czte,reboot-extC*");
