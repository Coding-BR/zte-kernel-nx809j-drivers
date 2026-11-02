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



static const struct modversion_info ____versions[]
__used __section("__versions") = {
	{ 0xd272d446, "__rcu_read_lock" },
	{ 0xaa615763, "_raw_spin_lock_irqsave" },
	{ 0x582af1c8, "_raw_spin_unlock_irqrestore" },
	{ 0xd272d446, "__rcu_read_unlock" },
	{ 0x120906f6, "__alloc_skb" },
	{ 0x96fd93e6, "genlmsg_put" },
	{ 0x14e15a63, "sk_skb_reason_drop" },
	{ 0xd272d446, "preempt_schedule_notrace" },
	{ 0xd92ea852, "nla_put" },
	{ 0xd1c38163, "nla_reserve_64bit" },
	{ 0x969b0359, "skb_trim" },
	{ 0xd272d446, "__stack_chk_fail" },
	{ 0x0de4cab5, "__per_cpu_offset" },
	{ 0x4e994f70, "__cpu_possible_mask" },
	{ 0xf478b455, "__init_rwsem" },
	{ 0xd1e5ee3b, "genl_register_family" },
	{ 0x16b5b21d, "_printk" },
	{ 0x40065586, "find_task_by_vpid" },
	{ 0xb8c8345a, "alt_cb_patch_nops" },
	{ 0x01262f7f, "task_active_pid_ns" },
	{ 0x110f4d3a, "memset" },
	{ 0xff9a6e5c, "ktime_get" },
	{ 0x146fb171, "ktime_get_real_seconds" },
	{ 0xc228a75f, "__task_pid_nr_ns" },
	{ 0x11ce17c6, "strncpy" },
	{ 0x730b4a23, "get_task_mm" },
	{ 0x663ebea2, "mmput" },
	{ 0x364ff06a, "__put_task_struct" },
	{ 0x8a7493b2, "memcpy" },
	{ 0x2373037a, "refcount_warn_saturate" },
	{ 0x881cfb14, "netlink_unicast" },
	{ 0x8ee1928d, "mem_alloc_profiling_key" },
	{ 0x27865ec7, "__kmalloc_noprof" },
	{ 0xaec5404e, "nla_strscpy" },
	{ 0xf296206e, "nr_cpu_ids" },
	{ 0x86872597, "bitmap_parselist" },
	{ 0x31359e90, "kfree" },
	{ 0x70046973, "init_pid_ns" },
	{ 0x760296b1, "kmalloc_caches" },
	{ 0x6fabd45b, "__list_add_valid_or_report" },
	{ 0x512802b6, "up_write" },
	{ 0x8c3dc1df, "__kmalloc_cache_node_noprof" },
	{ 0x512802b6, "down_write" },
	{ 0x802f8919, "__list_del_entry_valid_or_report" },
	{ 0xde6485ed, "module_layout" },
};

static const u32 ____version_ext_crcs[]
__used __section("__version_ext_crcs") = {
	0xd272d446,
	0xaa615763,
	0x582af1c8,
	0xd272d446,
	0x120906f6,
	0x96fd93e6,
	0x14e15a63,
	0xd272d446,
	0xd92ea852,
	0xd1c38163,
	0x969b0359,
	0xd272d446,
	0x0de4cab5,
	0x4e994f70,
	0xf478b455,
	0xd1e5ee3b,
	0x16b5b21d,
	0x40065586,
	0xb8c8345a,
	0x01262f7f,
	0x110f4d3a,
	0xff9a6e5c,
	0x146fb171,
	0xc228a75f,
	0x11ce17c6,
	0x730b4a23,
	0x663ebea2,
	0x364ff06a,
	0x8a7493b2,
	0x2373037a,
	0x881cfb14,
	0x8ee1928d,
	0x27865ec7,
	0xaec5404e,
	0xf296206e,
	0x86872597,
	0x31359e90,
	0x70046973,
	0x760296b1,
	0x6fabd45b,
	0x512802b6,
	0x8c3dc1df,
	0x512802b6,
	0x802f8919,
	0xde6485ed,
};
static const char ____version_ext_names[]
__used __section("__version_ext_names") =
	"__rcu_read_lock\0"
	"_raw_spin_lock_irqsave\0"
	"_raw_spin_unlock_irqrestore\0"
	"__rcu_read_unlock\0"
	"__alloc_skb\0"
	"genlmsg_put\0"
	"sk_skb_reason_drop\0"
	"preempt_schedule_notrace\0"
	"nla_put\0"
	"nla_reserve_64bit\0"
	"skb_trim\0"
	"__stack_chk_fail\0"
	"__per_cpu_offset\0"
	"__cpu_possible_mask\0"
	"__init_rwsem\0"
	"genl_register_family\0"
	"_printk\0"
	"find_task_by_vpid\0"
	"alt_cb_patch_nops\0"
	"task_active_pid_ns\0"
	"memset\0"
	"ktime_get\0"
	"ktime_get_real_seconds\0"
	"__task_pid_nr_ns\0"
	"strncpy\0"
	"get_task_mm\0"
	"mmput\0"
	"__put_task_struct\0"
	"memcpy\0"
	"refcount_warn_saturate\0"
	"netlink_unicast\0"
	"mem_alloc_profiling_key\0"
	"__kmalloc_noprof\0"
	"nla_strscpy\0"
	"nr_cpu_ids\0"
	"bitmap_parselist\0"
	"kfree\0"
	"init_pid_ns\0"
	"kmalloc_caches\0"
	"__list_add_valid_or_report\0"
	"up_write\0"
	"__kmalloc_cache_node_noprof\0"
	"down_write\0"
	"__list_del_entry_valid_or_report\0"
	"module_layout\0"
;

MODULE_INFO(depends, "");

