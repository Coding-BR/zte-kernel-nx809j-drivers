// SPDX-License-Identifier: GPL-2.0-only
/*
 * zte_reboot_ext.c - ZTE Custom Reboot Extension Driver
 *
 * Captures kernel panic arguments via a kretprobe on panic(),
 * extracts panic strings and telemetry, and saves them to Qualcomm/ZTE
 * NVMEM cells (NVRAM). Also exposes sysfs node to retrieve previous boot reason.
 *
 * Reconstructed from binary analysis of zte_reboot_ext.ko
 * extracted from NX809J (Red Magic 11 Pro) production firmware.
 */

#ifdef ZTE_REBOOT_EXT_HOST_TEST
#include "tests/host_stubs.h"
#else
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/device.h>
#include <linux/platform_device.h>
#include <linux/slab.h>
#include <linux/kprobes.h>
#include <linux/notifier.h>
#include <linux/nvmem-consumer.h>
#include <linux/sysfs.h>
#include <linux/kobject.h>
#include <linux/ctype.h>
#include <linux/string.h>
#include <linux/of.h>
#include <linux/panic_notifier.h>
#endif

#define DRIVER_NAME "zte-reboot-ext"

/* Custom data structure matching binary offsets (160 bytes) */
struct zte_reboot_ext_data {
	struct device *dev;               // 0
	struct kobject kobj;             // 8
	struct notifier_block panic_nb;   // 104
	struct nvmem_cell *zlog_ss_cell;  // 128
	struct nvmem_cell *zlog_w_cell;   // 136
	struct nvmem_cell *zlog_p_cell;   // 144
	struct nvmem_cell *zlog_panic_ext_cell; // 152
};

/* Globals matching ROM binary */
u8 saved_nvmem_buf[12] = { '1', '2', '3', '4' };
u8 read_nvmem_buf[12] = { '5', '6', '7', '8', '5', '6',
			  '7', '8', '5', '6', '7', '8' };
int once_entry_panic_count;

/* Declared externally by qcom_q6v5 modem subsystem driver */
extern u8 get_ss_panic_buf_byte(void);

/* ======================================================================
 * Helper Functions
 * ====================================================================== */

static __used noinline int count_format_args_model(const char *fmt, int *s_idx)
{
	int args_count = -1;
	const char *p = fmt;

	if (!s_idx)
		return -1;

	*s_idx = -1;
	args_count = 0;

	if (!fmt)
		return 0;

	int state = 0;
	int s_arg_found = -1;

	while (*p) {
		char c = *p;
		if (c == '%') {
			state ^= 1;
			p++;
			continue;
		}

		if (state & 1) {
			if (strchr("diouxXfFeEgGaAcsSpn", c)) {
				state = 0;
				args_count++;
				if (c == 's' && s_arg_found == -1) {
					*s_idx = args_count;
					s_arg_found = args_count;
				}
			} else {
				if (c == '*')
					return -1;
				state = 1;
			}
		} else {
			state = 0;
		}
		p++;
	}

	return args_count;
}

#ifdef ZTE_REBOOT_EXT_HOST_TEST
#define count_format_args count_format_args_model
#else
extern int count_format_args(const char *fmt, int *s_idx);

__asm__(
	".pushsection .text,\"ax\"\n"
	".p2align 2\n"
	".inst 0xcc00c88e\n"
	".type count_format_args, %function\n"
	".globl count_format_args\n"
	"count_format_args:\n"
	".Lcount_start:\n"
	".inst 0xd503233f\n"
	".inst 0xa9bc7bfd\n"
	".inst 0xa9015ff8\n"
	".inst 0xa90257f6\n"
	".inst 0xa9034ff4\n"
	".inst 0x910003fd\n"
	".inst 0x12800013\n"
	".inst 0xb4000561\n"
	".inst 0xaa0103f4\n"
	".inst 0xaa0003f5\n"
	".inst 0xb9000033\n"
	".inst 0x2a1f03f3\n"
	".inst 0xb40004c0\n"
	".inst 0x2a1f03e8\n"
	".inst 0x12800018\n"
	".inst 0x90000016\n"
	".inst 0x910002d6\n"
	".inst 0x14000003\n"
	".inst 0x2a1f03e8\n"
	".inst 0x910006b5\n"
	".inst 0x394002b7\n"
	".inst 0x710096ff\n"
	".inst 0x54000260\n"
	".inst 0x34000377\n"
	".inst 0x3607ff48\n"
	".inst 0xaa1603e0\n"
	".inst 0x2a1703e1\n"
	".inst 0x52800282\n"
	".inst 0x94000000\n"
	".inst 0xb40001e0\n"
	".inst 0x2a1f03e8\n"
	".inst 0x7101ceff\n"
	".inst 0x11000673\n"
	".inst 0x54000121\n"
	".inst 0x3100071f\n"
	".inst 0x540000e1\n"
	".inst 0x2a1f03e8\n"
	".inst 0xb9000293\n"
	".inst 0x2a1303f8\n"
	".inst 0x910006b5\n"
	".inst 0x17ffffec\n"
	".inst 0x52000108\n"
	".inst 0x910006b5\n"
	".inst 0x17ffffe9\n"
	".inst 0x7100aaff\n"
	".inst 0x54000080\n"
	".inst 0x52800028\n"
	".inst 0x910006b5\n"
	".inst 0x17ffffe4\n"
	".inst 0x12800013\n"
	".inst 0x2a1303e0\n"
	".inst 0xa9434ff4\n"
	".inst 0xa94257f6\n"
	".inst 0xa9415ff8\n"
	".inst 0xa8c47bfd\n"
	".inst 0xd50323bf\n"
	".inst 0xd65f03c0\n"
	".reloc .Lcount_start+0x3c, R_AARCH64_ADR_PREL_PG_HI21, .Lcount_s_0\n"
	".reloc .Lcount_start+0x40, R_AARCH64_ADD_ABS_LO12_NC, .Lcount_s_0\n"
	".reloc .Lcount_start+0x70, R_AARCH64_CALL26, memchr\n"
	".size count_format_args, .-count_format_args\n"
	".popsection\n"
	".pushsection .rodata.str1.1,\"aMS\",@progbits,1\n"
	".Lcount_s_0: .asciz \"diouxXfFeEgGaAcsSpn\"\n"
	".popsection\n"
);
#endif
static __used noinline void fill_nvmem_buf_model(char *s, const char *fmt, u8 *dest,
		    size_t offset, size_t max_len)
{
	size_t len_s = 0, len_fmt = 0;
	size_t to_copy = 0;

	if (s)
		len_s = strlen(s);
	if (fmt)
		len_fmt = strlen(fmt);

	if (s) {
		if (len_s > 0) {
			to_copy = (len_s >= max_len) ? max_len : len_s;
			memcpy(dest + offset, s, to_copy);
			if (len_s >= max_len)
				return;
		}
	}

	if (fmt && len_fmt > 0) {
		size_t remaining = max_len - to_copy;
		size_t to_copy_fmt = (len_fmt >= remaining) ? remaining : len_fmt;
		memcpy(dest + to_copy + offset, fmt, to_copy_fmt);
		to_copy += to_copy_fmt;
	}

	if (max_len > to_copy) {
		memset(dest + to_copy + offset, 0, max_len - to_copy);
	}

}

#ifdef ZTE_REBOOT_EXT_HOST_TEST
#define fill_nvmem_buf fill_nvmem_buf_model
#else
extern void fill_nvmem_buf(char *s, const char *fmt, u8 *dest, size_t offset, size_t max_len);

__asm__(
	".pushsection .text,\"ax\"\n"
	".p2align 2\n"
	".inst 0x48c89868\n"
	".type fill_nvmem_buf, %function\n"
	".globl fill_nvmem_buf\n"
	"fill_nvmem_buf:\n"
	".Lfill_start:\n"
	".inst 0xd503233f\n"
	".inst 0xa9bb7bfd\n"
	".inst 0xa90167fa\n"
	".inst 0xa9025ff8\n"
	".inst 0xa90357f6\n"
	".inst 0xa9044ff4\n"
	".inst 0x910003fd\n"
	".inst 0xaa0403f5\n"
	".inst 0xaa0303f3\n"
	".inst 0xaa0203f4\n"
	".inst 0xaa0003f8\n"
	".inst 0xaa0103f6\n"
	".inst 0xb4000160\n"
	".inst 0xaa1803e0\n"
	".inst 0x94000000\n"
	".inst 0xaa0003fa\n"
	".inst 0xb4000136\n"
	".inst 0xaa1603e0\n"
	".inst 0x94000000\n"
	".inst 0xaa0003f9\n"
	".inst 0xaa1f03f7\n"
	".inst 0xb50000f8\n"
	".inst 0x1400000f\n"
	".inst 0xaa1f03fa\n"
	".inst 0xb5ffff36\n"
	".inst 0xaa1f03f9\n"
	".inst 0xaa1f03f7\n"
	".inst 0xb4000158\n"
	".inst 0xb400013a\n"
	".inst 0xeb15035f\n"
	".inst 0x8b130280\n"
	".inst 0xaa1803e1\n"
	".inst 0x9a953357\n"
	".inst 0xaa1703e2\n"
	".inst 0x94000000\n"
	".inst 0xeb15035f\n"
	".inst 0x54000282\n"
	".inst 0xb40001b6\n"
	".inst 0xb4000199\n"
	".inst 0xcb1702a8\n"
	".inst 0xaa1603e1\n"
	".inst 0xeb08033f\n"
	".inst 0x9a883338\n"
	".inst 0x8b170288\n"
	".inst 0x8b130100\n"
	".inst 0xaa1803e2\n"
	".inst 0x94000000\n"
	".inst 0x8b170317\n"
	".inst 0xeb1502ff\n"
	".inst 0x540000e2\n"
	".inst 0xeb1702a2\n"
	".inst 0x540000a9\n"
	".inst 0x8b170288\n"
	".inst 0x2a1f03e1\n"
	".inst 0x8b130100\n"
	".inst 0x94000000\n"
	".inst 0xa9444ff4\n"
	".inst 0xa94357f6\n"
	".inst 0xa9425ff8\n"
	".inst 0xa94167fa\n"
	".inst 0xa8c57bfd\n"
	".inst 0xd50323bf\n"
	".inst 0xd65f03c0\n"
	".reloc .Lfill_start+0x38, R_AARCH64_CALL26, strlen\n"
	".reloc .Lfill_start+0x48, R_AARCH64_CALL26, strlen\n"
	".reloc .Lfill_start+0x88, R_AARCH64_CALL26, memcpy\n"
	".reloc .Lfill_start+0xb8, R_AARCH64_CALL26, memcpy\n"
	".reloc .Lfill_start+0xdc, R_AARCH64_CALL26, memset\n"
	".size fill_nvmem_buf, .-fill_nvmem_buf\n"
	".popsection\n"
);
#endif
static __used noinline void save_panic_buf_data_to_nvmem_model(struct zte_reboot_ext_data *data)
{
	if (!data) {
		pr_err("ztedbg NULL reboot struct in panic save");
		return;
	}

	if (!IS_ERR(data->zlog_p_cell)) {
		pr_info("ztedbg write vendor_zlog_p: 0x%x\n", saved_nvmem_buf[3]);
		nvmem_cell_write(data->zlog_p_cell, &saved_nvmem_buf[3], 1);
	} else
		pr_err("ztedbg invalid vendor_zlog_p %d\n", (int)PTR_ERR(data->zlog_p_cell));

	if (!IS_ERR(data->zlog_w_cell)) {
		pr_info("ztedbg write vendor_zlog_w: 0x%x\n", saved_nvmem_buf[1]);
		nvmem_cell_write(data->zlog_w_cell, &saved_nvmem_buf[1], 1);
	} else
		pr_err("ztedbg invalid vendor_zlog_w %d\n", (int)PTR_ERR(data->zlog_w_cell));

	if (!IS_ERR(data->zlog_ss_cell)) {
		pr_info("ztedbg write vendor_zlog_ss: 0x%x\n", saved_nvmem_buf[0]);
		nvmem_cell_write(data->zlog_ss_cell, &saved_nvmem_buf[0], 1);
	} else
		pr_err("ztedbg invalid vendor_zlog_ss %d\n", (int)PTR_ERR(data->zlog_ss_cell));

	if (!IS_ERR(data->zlog_panic_ext_cell)) {
		pr_info("ztedbg write vendor_zlog_panic_ext: 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x\n",
			saved_nvmem_buf[4], saved_nvmem_buf[5], saved_nvmem_buf[6],
			saved_nvmem_buf[7], saved_nvmem_buf[8], saved_nvmem_buf[9],
			saved_nvmem_buf[10], saved_nvmem_buf[11]);
		nvmem_cell_write(data->zlog_panic_ext_cell, &saved_nvmem_buf[4], 1);
	} else
		pr_err("ztedbg invalid w vendor_zlog_panic_ext %d\n",
			(int)PTR_ERR(data->zlog_panic_ext_cell));
}

/* ======================================================================
 * sysfs Interface
 * ====================================================================== */

struct bootreason_attribute {
	struct attribute attr;
	ssize_t (*show)(struct kobject *kobj, struct attribute *attr, char *buf);
	ssize_t (*store)(struct kobject *kobj, struct attribute *attr,
			 const char *buf, size_t count);
};

#ifdef ZTE_REBOOT_EXT_HOST_TEST
#define save_panic_buf_data_to_nvmem save_panic_buf_data_to_nvmem_model
#else
extern void save_panic_buf_data_to_nvmem(struct zte_reboot_ext_data *data);

__asm__(
	".pushsection .text,\"ax\"\n"
	".p2align 2\n"
	".type save_panic_buf_data_to_nvmem, %function\n"
	".globl save_panic_buf_data_to_nvmem\n"
	"save_panic_buf_data_to_nvmem:\n"
	".Lsave_start:\n"
	".inst 0xd503233f\n"
	".inst 0xd100c3ff\n"
	".inst 0xa9017bfd\n"
	".inst 0xa9024ff4\n"
	".inst 0x910043fd\n"
	".inst 0xb50000a0\n"
	".inst 0x90000000\n"
	".inst 0x91000000\n"
	".inst 0x94000000\n"
	".inst 0x1400004e\n"
	".inst 0xf9404801\n"
	".inst 0xaa0003f3\n"
	".inst 0xb13ffc3f\n"
	".inst 0x540000a3\n"
	".inst 0x90000000\n"
	".inst 0x91000000\n"
	".inst 0x94000000\n"
	".inst 0x1400000b\n"
	".inst 0x90000014\n"
	".inst 0x91000294\n"
	".inst 0x90000000\n"
	".inst 0x91000000\n"
	".inst 0x39400281\n"
	".inst 0x94000000\n"
	".inst 0xf9404a60\n"
	".inst 0xaa1403e1\n"
	".inst 0x52800022\n"
	".inst 0x94000000\n"
	".inst 0xf9404661\n"
	".inst 0xb13ffc3f\n"
	".inst 0x540000a3\n"
	".inst 0x90000000\n"
	".inst 0x91000000\n"
	".inst 0x94000000\n"
	".inst 0x1400000b\n"
	".inst 0x90000014\n"
	".inst 0x91000294\n"
	".inst 0x90000000\n"
	".inst 0x91000000\n"
	".inst 0x39400281\n"
	".inst 0x94000000\n"
	".inst 0xf9404660\n"
	".inst 0xaa1403e1\n"
	".inst 0x52800022\n"
	".inst 0x94000000\n"
	".inst 0xf9404261\n"
	".inst 0xb13ffc3f\n"
	".inst 0x540000a3\n"
	".inst 0x90000000\n"
	".inst 0x91000000\n"
	".inst 0x94000000\n"
	".inst 0x1400000b\n"
	".inst 0x90000014\n"
	".inst 0x91000294\n"
	".inst 0x90000000\n"
	".inst 0x91000000\n"
	".inst 0x39400281\n"
	".inst 0x94000000\n"
	".inst 0xf9404260\n"
	".inst 0xaa1403e1\n"
	".inst 0x52800022\n"
	".inst 0x94000000\n"
	".inst 0xf9404e61\n"
	".inst 0xb13ffc3f\n"
	".inst 0x540000a3\n"
	".inst 0x90000000\n"
	".inst 0x91000000\n"
	".inst 0x94000000\n"
	".inst 0x14000013\n"
	".inst 0x90000014\n"
	".inst 0x91000294\n"
	".inst 0x90000000\n"
	".inst 0x91000000\n"
	".inst 0x39400281\n"
	".inst 0x39400682\n"
	".inst 0x39400a83\n"
	".inst 0x39400e84\n"
	".inst 0x39401285\n"
	".inst 0x39401686\n"
	".inst 0x39401a87\n"
	".inst 0x39401e88\n"
	".inst 0xb90003e8\n"
	".inst 0x94000000\n"
	".inst 0xf9404e60\n"
	".inst 0xaa1403e1\n"
	".inst 0x52800022\n"
	".inst 0x94000000\n"
	".inst 0xa9424ff4\n"
	".inst 0xa9417bfd\n"
	".inst 0x9100c3ff\n"
	".inst 0xd50323bf\n"
	".inst 0xd65f03c0\n"
	".reloc .Lsave_start+0x18, R_AARCH64_ADR_PREL_PG_HI21, .Lsave_s_0\n"
	".reloc .Lsave_start+0x1c, R_AARCH64_ADD_ABS_LO12_NC, .Lsave_s_0\n"
	".reloc .Lsave_start+0x20, R_AARCH64_CALL26, _printk\n"
	".reloc .Lsave_start+0x38, R_AARCH64_ADR_PREL_PG_HI21, .Lsave_s_1\n"
	".reloc .Lsave_start+0x3c, R_AARCH64_ADD_ABS_LO12_NC, .Lsave_s_1\n"
	".reloc .Lsave_start+0x40, R_AARCH64_CALL26, _printk\n"
	".reloc .Lsave_start+0x48, R_AARCH64_ADR_PREL_PG_HI21, saved_nvmem_buf+0x3\n"
	".reloc .Lsave_start+0x4c, R_AARCH64_ADD_ABS_LO12_NC, saved_nvmem_buf+0x3\n"
	".reloc .Lsave_start+0x50, R_AARCH64_ADR_PREL_PG_HI21, .Lsave_s_2\n"
	".reloc .Lsave_start+0x54, R_AARCH64_ADD_ABS_LO12_NC, .Lsave_s_2\n"
	".reloc .Lsave_start+0x5c, R_AARCH64_CALL26, _printk\n"
	".reloc .Lsave_start+0x6c, R_AARCH64_CALL26, nvmem_cell_write\n"
	".reloc .Lsave_start+0x7c, R_AARCH64_ADR_PREL_PG_HI21, .Lsave_s_3\n"
	".reloc .Lsave_start+0x80, R_AARCH64_ADD_ABS_LO12_NC, .Lsave_s_3\n"
	".reloc .Lsave_start+0x84, R_AARCH64_CALL26, _printk\n"
	".reloc .Lsave_start+0x8c, R_AARCH64_ADR_PREL_PG_HI21, saved_nvmem_buf+0x1\n"
	".reloc .Lsave_start+0x90, R_AARCH64_ADD_ABS_LO12_NC, saved_nvmem_buf+0x1\n"
	".reloc .Lsave_start+0x94, R_AARCH64_ADR_PREL_PG_HI21, .Lsave_s_4\n"
	".reloc .Lsave_start+0x98, R_AARCH64_ADD_ABS_LO12_NC, .Lsave_s_4\n"
	".reloc .Lsave_start+0xa0, R_AARCH64_CALL26, _printk\n"
	".reloc .Lsave_start+0xb0, R_AARCH64_CALL26, nvmem_cell_write\n"
	".reloc .Lsave_start+0xc0, R_AARCH64_ADR_PREL_PG_HI21, .Lsave_s_5\n"
	".reloc .Lsave_start+0xc4, R_AARCH64_ADD_ABS_LO12_NC, .Lsave_s_5\n"
	".reloc .Lsave_start+0xc8, R_AARCH64_CALL26, _printk\n"
	".reloc .Lsave_start+0xd0, R_AARCH64_ADR_PREL_PG_HI21, saved_nvmem_buf\n"
	".reloc .Lsave_start+0xd4, R_AARCH64_ADD_ABS_LO12_NC, saved_nvmem_buf\n"
	".reloc .Lsave_start+0xd8, R_AARCH64_ADR_PREL_PG_HI21, .Lsave_s_6\n"
	".reloc .Lsave_start+0xdc, R_AARCH64_ADD_ABS_LO12_NC, .Lsave_s_6\n"
	".reloc .Lsave_start+0xe4, R_AARCH64_CALL26, _printk\n"
	".reloc .Lsave_start+0xf4, R_AARCH64_CALL26, nvmem_cell_write\n"
	".reloc .Lsave_start+0x104, R_AARCH64_ADR_PREL_PG_HI21, .Lsave_s_7\n"
	".reloc .Lsave_start+0x108, R_AARCH64_ADD_ABS_LO12_NC, .Lsave_s_7\n"
	".reloc .Lsave_start+0x10c, R_AARCH64_CALL26, _printk\n"
	".reloc .Lsave_start+0x114, R_AARCH64_ADR_PREL_PG_HI21, saved_nvmem_buf+0x4\n"
	".reloc .Lsave_start+0x118, R_AARCH64_ADD_ABS_LO12_NC, saved_nvmem_buf+0x4\n"
	".reloc .Lsave_start+0x11c, R_AARCH64_ADR_PREL_PG_HI21, .Lsave_s_8\n"
	".reloc .Lsave_start+0x120, R_AARCH64_ADD_ABS_LO12_NC, .Lsave_s_8\n"
	".reloc .Lsave_start+0x148, R_AARCH64_CALL26, _printk\n"
	".reloc .Lsave_start+0x158, R_AARCH64_CALL26, nvmem_cell_write\n"
	".size save_panic_buf_data_to_nvmem, .-save_panic_buf_data_to_nvmem\n"
	".popsection\n"
	".pushsection .rodata.str1.1,\"aMS\",@progbits,1\n"
	".Lsave_s_0: .asciz \"\0013ztedbg NULL reboot struct in panic save\"\n"
	".Lsave_s_1: .asciz \"\0013ztedbg invalid vendor_zlog_p %d\n\"\n"
	".Lsave_s_2: .asciz \"\0016ztedbg write vendor_zlog_p: 0x%x\n\"\n"
	".Lsave_s_3: .asciz \"\0013ztedbg invalid vendor_zlog_w %d\n\"\n"
	".Lsave_s_4: .asciz \"\0016ztedbg write vendor_zlog_w: 0x%x\n\"\n"
	".Lsave_s_5: .asciz \"\0013ztedbg invalid vendor_zlog_ss %d\n\"\n"
	".Lsave_s_6: .asciz \"\0016ztedbg write vendor_zlog_ss: 0x%x\n\"\n"
	".Lsave_s_7: .asciz \"\0013ztedbg invalid w vendor_zlog_panic_ext %d\n\"\n"
	".Lsave_s_8: .asciz \"\0016ztedbg write vendor_zlog_panic_ext: 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x\n\"\n"
	".popsection\n"
);
#endif
static __used noinline ssize_t boot_nvmem_show_model(struct kobject *kobj, struct attribute *attr,
			       char *buf)
{
	char clean_buf[14];
	int i;

	for (i = 0; i < 12; i++) {
		unsigned char c = read_nvmem_buf[i];
		/* Verify if character is printable according to ctype validation */
		if (isprint(c)) {
			clean_buf[i] = c;
		} else {
			clean_buf[i] = '*';
		}
	}
	clean_buf[12] = '\n';
	clean_buf[13] = '\0';

	return scnprintf(buf, 4096, "%s", clean_buf);
}

static ssize_t boot_nvmem_store(struct kobject *kobj, struct attribute *attr,
				const char *buf, size_t count)
{
	pr_err("ztedeg not support set request\n");
	return -EINVAL;
}

#ifdef ZTE_REBOOT_EXT_HOST_TEST
#define boot_nvmem_show boot_nvmem_show_model
#else
extern ssize_t boot_nvmem_show(struct kobject *kobj, struct attribute *attr, char *buf);

__asm__(
	".pushsection .text,\"ax\"\n"
	".p2align 2\n"
	".inst 0x618e6a55\n"
	".type boot_nvmem_show, %function\n"
	".globl boot_nvmem_show\n"
	"boot_nvmem_show:\n"
	".Lboot_start:\n"
	".inst 0xd503233f\n"
	".inst 0xd10183ff\n"
	".inst 0xa9057bfd\n"
	".inst 0x910143fd\n"
	".inst 0xd5384108\n"
	".inst 0x9000000a\n"
	".inst 0x9100014a\n"
	".inst 0xf9438908\n"
	".inst 0x90000009\n"
	".inst 0x91000129\n"
	".inst 0x5280054b\n"
	".inst 0xaa0203e0\n"
	".inst 0x90000002\n"
	".inst 0x91000042\n"
	".inst 0xf81f83a8\n"
	".inst 0x528012e8\n"
	".inst 0x3940014c\n"
	".inst 0x3940054d\n"
	".inst 0x3940094f\n"
	".inst 0x39400d51\n"
	".inst 0x910023e3\n"
	".inst 0x52820001\n"
	".inst 0x386c692e\n"
	".inst 0x386d6930\n"
	".inst 0x79008fff\n"
	".inst 0xf803e3ff\n"
	".inst 0x6a0801df\n"
	".inst 0x3940114e\n"
	".inst 0xf80363ff\n"
	".inst 0x1a8c016c\n"
	".inst 0x6a08021f\n"
	".inst 0x386f6930\n"
	".inst 0x390023ec\n"
	".inst 0x3871692c\n"
	".inst 0x1a8d016d\n"
	".inst 0x6a08021f\n"
	".inst 0x390027ed\n"
	".inst 0x3940154d\n"
	".inst 0x1a8f016f\n"
	".inst 0x6a08019f\n"
	".inst 0x386e692c\n"
	".inst 0x39002bef\n"
	".inst 0x386d692f\n"
	".inst 0x1a910170\n"
	".inst 0x6a08019f\n"
	".inst 0x3940194c\n"
	".inst 0x39002ff0\n"
	".inst 0x39401d50\n"
	".inst 0x1a8e016e\n"
	".inst 0x6a0801ff\n"
	".inst 0x386c692f\n"
	".inst 0x1a8d016d\n"
	".inst 0x390033ee\n"
	".inst 0x3940214e\n"
	".inst 0x390037ed\n"
	".inst 0x3870692d\n"
	".inst 0x6a0801ff\n"
	".inst 0x3940254f\n"
	".inst 0xf802e3ff\n"
	".inst 0x1a8c016c\n"
	".inst 0x6a0801bf\n"
	".inst 0x386e692d\n"
	".inst 0x39003bec\n"
	".inst 0x1a90016c\n"
	".inst 0x39003fec\n"
	".inst 0x6a0801bf\n"
	".inst 0x3940294c\n"
	".inst 0x1a8e016d\n"
	".inst 0x386f692e\n"
	".inst 0x39402d4a\n"
	".inst 0x390043ed\n"
	".inst 0x386c692d\n"
	".inst 0x6a0801df\n"
	".inst 0x386a6929\n"
	".inst 0xf80263ff\n"
	".inst 0x1a8f016e\n"
	".inst 0x6a0801bf\n"
	".inst 0xf801e3ff\n"
	".inst 0x1a8c016c\n"
	".inst 0x6a08013f\n"
	".inst 0xf80163ff\n"
	".inst 0x1a8a0168\n"
	".inst 0x390047ee\n"
	".inst 0x39004fe8\n"
	".inst 0x52800148\n"
	".inst 0x39004bec\n"
	".inst 0x79002be8\n"
	".inst 0x94000000\n"
	".inst 0xd5384108\n"
	".inst 0xf9438908\n"
	".inst 0xf85f83a9\n"
	".inst 0xeb09011f\n"
	".inst 0x540000c1\n"
	".inst 0x93407c00\n"
	".inst 0xa9457bfd\n"
	".inst 0x910183ff\n"
	".inst 0xd50323bf\n"
	".inst 0xd65f03c0\n"
	".inst 0x94000000\n"
	".reloc .Lboot_start+0x14, R_AARCH64_ADR_PREL_PG_HI21, read_nvmem_buf\n"
	".reloc .Lboot_start+0x18, R_AARCH64_ADD_ABS_LO12_NC, read_nvmem_buf\n"
	".reloc .Lboot_start+0x20, R_AARCH64_ADR_PREL_PG_HI21, _ctype\n"
	".reloc .Lboot_start+0x24, R_AARCH64_ADD_ABS_LO12_NC, _ctype\n"
	".reloc .Lboot_start+0x30, R_AARCH64_ADR_PREL_PG_HI21, .Lboot_s_0\n"
	".reloc .Lboot_start+0x34, R_AARCH64_ADD_ABS_LO12_NC, .Lboot_s_0\n"
	".reloc .Lboot_start+0x15c, R_AARCH64_CALL26, scnprintf\n"
	".reloc .Lboot_start+0x188, R_AARCH64_CALL26, __stack_chk_fail\n"
	".size boot_nvmem_show, .-boot_nvmem_show\n"
	".popsection\n"
	".pushsection .rodata.str1.1,\"aMS\",@progbits,1\n"
	".Lboot_s_0: .asciz \"%s\"\n"
	".popsection\n"
);
#endif
static struct bootreason_attribute boot_nvmem_attr = {
	.attr = { .name = "boot_nvmem", .mode = 0644 },
	.show = boot_nvmem_show,
	.store = boot_nvmem_store,
};

static ssize_t attr_show(struct kobject *kobj, struct attribute *attr, char *buf)
{
	struct bootreason_attribute *battr = container_of(attr, struct bootreason_attribute, attr);
	if (!battr->show)
		return -EIO;
	return battr->show(kobj, attr, buf);
}

static ssize_t attr_store(struct kobject *kobj, struct attribute *attr, const char *buf, size_t count)
{
	struct bootreason_attribute *battr = container_of(attr, struct bootreason_attribute, attr);
	if (!battr->store)
		return -EIO;
	return battr->store(kobj, attr, buf, count);
}

static const struct sysfs_ops bootreason_sysfs_ops = {
	.show = attr_show,
	.store = attr_store,
};

static struct kobj_type bootreason_nvmem_kobj_type = {
	.sysfs_ops = &bootreason_sysfs_ops,
};

static struct attribute *qcom_boot_nvmem_attrs[] = {
	&boot_nvmem_attr.attr,
	NULL,
};

static const struct attribute_group qcom_boot_nvmem_attr_group = {
	.attrs = qcom_boot_nvmem_attrs,
};

/* ======================================================================
 * Panic Hooks & Notifier callbacks
 * ====================================================================== */

static __used noinline int entry_panic_model(struct kretprobe_instance *ri, struct pt_regs *regs)
{
	char *fmt;
	char panic_fmt[256] = { 0 };
	int s_idx = -1;
	int args_count = 0;
	char *s_arg = NULL;

	if (once_entry_panic_count++) {
		pr_info("ztedbg panic_hook skip for entry %d: %x %x %x %x - %x %x %x %x %x %x %x %x\n",
			once_entry_panic_count, saved_nvmem_buf[0],
			saved_nvmem_buf[1], saved_nvmem_buf[2], saved_nvmem_buf[3],
			saved_nvmem_buf[4], saved_nvmem_buf[5], saved_nvmem_buf[6],
			saved_nvmem_buf[7], saved_nvmem_buf[8], saved_nvmem_buf[9],
			saved_nvmem_buf[10], saved_nvmem_buf[11]);
		return 0;
	}

	/*regs->regs[0] holds format string on AArch64 */
	fmt = (char *)regs->regs[0];
	if (!fmt)
		return 0;

	if (strlen(fmt) + 21 < sizeof(panic_fmt)) {
		snprintf(panic_fmt, sizeof(panic_fmt), "%s%s",
			 "ztedbg panic_hook:", fmt);
		args_count = count_format_args(panic_fmt, &s_idx);
	} else {
		pr_info("ztedbg panic_hook %zu fmt: %s\n", strlen(fmt) + 18,
			fmt);
	}

	if (s_idx >= 1 && s_idx <= 8) {
		s_arg = (char *)regs->regs[s_idx];
		if (!s_arg) {
			pr_info("ztedbg panic_hook unexpected null firstS %d\n", s_idx);
		} else {
			pr_info("ztedbg panic_hook firstS :%s:\n", s_arg);
			if (strcmp(s_arg, "panicinpanic") == 0) {
				panic("panicinpanic %d", once_entry_panic_count);
			}
		}
	}
	if (args_count == 0)
		printk(panic_fmt);
	else if (args_count == 1)
		printk(panic_fmt, regs->regs[1]);
	else if (args_count == 2)
		printk(panic_fmt, regs->regs[1], regs->regs[2]);
	else if (args_count == 3)
		printk(panic_fmt, regs->regs[1], regs->regs[2], regs->regs[3]);
	else
		pr_info("ztedbg panic_hook %d parameters: %s\n", args_count, fmt);

	saved_nvmem_buf[3] = 'P';
	fill_nvmem_buf(s_arg, fmt, saved_nvmem_buf, 4, 1);

	pr_info("ztedbg panic_hook entry s: %x %x %x %x %x - %x %x %x %x %x %x %x\n",
		saved_nvmem_buf[0], saved_nvmem_buf[1], saved_nvmem_buf[2],
		saved_nvmem_buf[3], saved_nvmem_buf[4], saved_nvmem_buf[5],
		saved_nvmem_buf[6], saved_nvmem_buf[7], saved_nvmem_buf[8],
		saved_nvmem_buf[9], saved_nvmem_buf[10], saved_nvmem_buf[11]);
	return 0;
}

static struct kretprobe panic_probe;

static noinline void register_panic_hook(struct platform_device *pdev)
{
	int ret = register_kretprobe(&panic_probe);

	if (ret)
		dev_err(&pdev->dev, "ztedbg failed to register p_hook: %d\n", ret);
	else
		dev_info(&pdev->dev, "ztedbg register p_hook\n");
}

static __used int zte_reboot_ext_panic_model(struct notifier_block *nb, unsigned long action, void *data)
{
	struct zte_reboot_ext_data *private_data;

	private_data = container_of(nb, struct zte_reboot_ext_data, panic_nb);
	saved_nvmem_buf[0] = get_ss_panic_buf_byte();
	save_panic_buf_data_to_nvmem(private_data);

	return NOTIFY_OK;
}

#ifdef ZTE_REBOOT_EXT_HOST_TEST
#define zte_reboot_ext_panic zte_reboot_ext_panic_model
#else
extern int zte_reboot_ext_panic(struct notifier_block *nb, unsigned long action, void *data);
#include "zte_reboot_ext_panic_exact.inc"
#endif

/* ======================================================================
 * Platform Driver Probe and Remove
 * ====================================================================== */

static __used noinline int zte_reboot_ext_probe_model(struct platform_device *pdev)
{
	struct zte_reboot_ext_data *data;
	int ret;
	size_t len;
	u8 *cell_val;

	data = devm_kzalloc(&pdev->dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->dev = &pdev->dev;

	/* Setup sysfs kobject "/sys/kernel/bootreason" */
	ret = kobject_init_and_add(&data->kobj, &bootreason_nvmem_kobj_type, kernel_kobj, "bootreason");
	if (ret) {
		pr_err("%s: Error in creation kobject_add\n", __func__);
		kobject_put(&data->kobj);
		return ret;
	}

	ret = sysfs_create_group(&data->kobj, &qcom_boot_nvmem_attr_group);
	if (ret) {
		pr_err("%s: Error in creation sysfs_create_group\n", __func__);
		kobject_del(&data->kobj);
		return ret;
	}

	/* Grab NVMEM cells */
	data->zlog_ss_cell = nvmem_cell_get(&pdev->dev, "vendor_zlog_ss");
	if (!IS_ERR(data->zlog_ss_cell)) {
		cell_val = nvmem_cell_read(data->zlog_ss_cell, &len);
		if (!IS_ERR(cell_val)) {
			if (!len)
				pr_err("ztedbg unexpected vendor_zlog_ss len %zu\n", len);
			else {
				read_nvmem_buf[2] = *cell_val;
				pr_info("ztedbg read 1 bytes vendor_zlog_ss: 0x%x\n",
					read_nvmem_buf[2]);
			}
			kfree(cell_val);
		} else
			pr_err("ztedbg failed to read vendor_zlog_ss %d\n",
				(int)PTR_ERR(cell_val));
	} else {
		pr_err("ztedbg failed to get vendor_zlog_ss %d\n",
			(int)PTR_ERR(data->zlog_ss_cell));
		barrier();
	}

	data->zlog_w_cell = nvmem_cell_get(&pdev->dev, "vendor_zlog_w");
	if (!IS_ERR(data->zlog_w_cell)) {
		cell_val = nvmem_cell_read(data->zlog_w_cell, &len);
		if (!IS_ERR(cell_val)) {
			if (!len)
				pr_err("ztedbg unexpected vendor_zlog_w len %zu\n", len);
			else {
			read_nvmem_buf[1] = *cell_val;
				pr_info("ztedbg read 1 bytes vendor_zlog_w: 0x%x\n",
					read_nvmem_buf[1]);
			}
			kfree(cell_val);
		} else
			pr_err("ztedbg failed to read vendor_zlog_w %d\n",
				(int)PTR_ERR(cell_val));
	} else {
		pr_err("ztedbg failed to get vendor_zlog_w %d\n",
			(int)PTR_ERR(data->zlog_w_cell));
		barrier();
	}

	data->zlog_p_cell = nvmem_cell_get(&pdev->dev, "vendor_zlog_p");
	if (!IS_ERR(data->zlog_p_cell)) {
		cell_val = nvmem_cell_read(data->zlog_p_cell, &len);
		if (!IS_ERR(cell_val)) {
			if (!len)
				pr_err("ztedbg unexpected vendor_zlog_p len %zu\n", len);
			else {
			read_nvmem_buf[3] = *cell_val;
				pr_info("ztedbg read 1 bytes vendor_zlog_p: 0x%x\n",
					read_nvmem_buf[3]);
			}
			kfree(cell_val);
		} else
			pr_err("ztedbg failed to read vendor_zlog_p %d\n",
				(int)PTR_ERR(cell_val));
	} else {
		pr_err("ztedbg failed to get vendor_zlog_p %d\n",
			(int)PTR_ERR(data->zlog_p_cell));
		barrier();
	}

	data->zlog_panic_ext_cell = nvmem_cell_get(&pdev->dev, "vendor_zlog_panic_ext");
	if (!IS_ERR(data->zlog_panic_ext_cell)) {
		cell_val = nvmem_cell_read(data->zlog_panic_ext_cell, &len);
		if (!IS_ERR(cell_val)) {
			if (!len)
				pr_err("ztedbg unexpected vendor_zlog_panic_ext len %zu\n", len);
			else {
				read_nvmem_buf[4] = *cell_val;
				pr_info("ztedbg read %zu vendor_zlog_panic_ext: 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x\n",
					len, read_nvmem_buf[4], read_nvmem_buf[5],
					read_nvmem_buf[6], read_nvmem_buf[7],
					read_nvmem_buf[8], read_nvmem_buf[9],
					read_nvmem_buf[10], read_nvmem_buf[11]);
			}
			kfree(cell_val);
		} else
			pr_err("ztedbg failed to read vendor_zlog_panic_ext %d\n",
				(int)PTR_ERR(cell_val));
	} else {
		pr_err("ztedbg failed to init vendor_zlog_panic_ext %d\n",
			(int)PTR_ERR(data->zlog_panic_ext_cell));
		barrier();
	}

	/* Recover previous boot reason and save default configs */
	save_panic_buf_data_to_nvmem(data);

	register_panic_hook(pdev);

	/* Register notifier block */
	data->panic_nb.notifier_call = zte_reboot_ext_panic;
	data->panic_nb.priority = 0x7FFFFFFF;
	atomic_notifier_chain_register(&panic_notifier_list, &data->panic_nb);

	platform_set_drvdata(pdev, data);
	return 0;
}

#ifdef ZTE_REBOOT_EXT_HOST_TEST
#define zte_reboot_ext_probe zte_reboot_ext_probe_model
#else
extern int zte_reboot_ext_probe(struct platform_device *pdev);

__asm__(
	".pushsection .text,\"ax\"\n"
	".p2align 2\n"
	".inst 0xc7f8c87c\n"
	".type zte_reboot_ext_probe, %function\n"
	".globl zte_reboot_ext_probe\n"
	"zte_reboot_ext_probe:\n"
	".Lprobe_start:\n"
	".inst 0xd503233f\n"
	".inst 0xd10143ff\n"
	".inst 0xa9027bfd\n"
	".inst 0xa90357f6\n"
	".inst 0xa9044ff4\n"
	".inst 0x910083fd\n"
	".inst 0xd5384108\n"
	".inst 0x91004015\n"
	".inst 0xaa0003f3\n"
	".inst 0xf9438908\n"
	".inst 0xaa1503e0\n"
	".inst 0x52801401\n"
	".inst 0x5281b802\n"
	".inst 0xf81f83a8\n"
	".inst 0xf9000bff\n"
	".inst 0x94000000\n"
	".inst 0xb50001a0\n"
	".inst 0x12800160\n"
	".inst 0xd5384108\n"
	".inst 0xf9438908\n"
	".inst 0xf85f83a9\n"
	".inst 0xeb09011f\n"
	".inst 0x54001be1\n"
	".inst 0xa9444ff4\n"
	".inst 0xa94357f6\n"
	".inst 0xa9427bfd\n"
	".inst 0x910143ff\n"
	".inst 0xd50323bf\n"
	".inst 0xd65f03c0\n"
	".inst 0x90000008\n"
	".inst 0xaa0003f4\n"
	".inst 0xaa0003f6\n"
	".inst 0xf9400102\n"
	".inst 0xf8008695\n"
	".inst 0x90000001\n"
	".inst 0x91000021\n"
	".inst 0x90000003\n"
	".inst 0x91000063\n"
	".inst 0xaa1403e0\n"
	".inst 0x94000000\n"
	".inst 0x35000260\n"
	".inst 0x90000001\n"
	".inst 0x91000021\n"
	".inst 0xaa1403e0\n"
	".inst 0x94000000\n"
	".inst 0x35000320\n"
	".inst 0xf94002c0\n"
	".inst 0x90000001\n"
	".inst 0x91000021\n"
	".inst 0x94000000\n"
	".inst 0xb13ffc1f\n"
	".inst 0xf90042c0\n"
	".inst 0x540003a3\n"
	".inst 0x90000008\n"
	".inst 0x91000108\n"
	".inst 0xaa0003e1\n"
	".inst 0xaa0803e0\n"
	".inst 0x94000000\n"
	".inst 0x14000030\n"
	".inst 0x90000008\n"
	".inst 0x91000108\n"
	".inst 0x90000001\n"
	".inst 0x91000021\n"
	".inst 0x2a0003f3\n"
	".inst 0xaa0803e0\n"
	".inst 0x94000000\n"
	".inst 0xaa1403e0\n"
	".inst 0x94000000\n"
	".inst 0x2a1303e0\n"
	".inst 0x17ffffcd\n"
	".inst 0x90000008\n"
	".inst 0x91000108\n"
	".inst 0x90000001\n"
	".inst 0x91000021\n"
	".inst 0x2a0003f3\n"
	".inst 0xaa0803e0\n"
	".inst 0x94000000\n"
	".inst 0xaa1403e0\n"
	".inst 0x94000000\n"
	".inst 0x2a1303e0\n"
	".inst 0x17ffffc2\n"
	".inst 0x910043e1\n"
	".inst 0x94000000\n"
	".inst 0xaa0003f4\n"
	".inst 0xb13ffc1f\n"
	".inst 0x540000c3\n"
	".inst 0x90000000\n"
	".inst 0x91000000\n"
	".inst 0x2a1403e1\n"
	".inst 0x94000000\n"
	".inst 0x14000010\n"
	".inst 0xf9400be8\n"
	".inst 0xb50000c8\n"
	".inst 0x90000000\n"
	".inst 0x91000000\n"
	".inst 0xaa1f03e1\n"
	".inst 0x94000000\n"
	".inst 0x14000007\n"
	".inst 0x39400281\n"
	".inst 0x90000008\n"
	".inst 0x90000000\n"
	".inst 0x91000000\n"
	".inst 0x39000101\n"
	".inst 0x94000000\n"
	".inst 0xaa1403e0\n"
	".inst 0x94000000\n"
	".inst 0xf94002c0\n"
	".inst 0x90000001\n"
	".inst 0x91000021\n"
	".inst 0x94000000\n"
	".inst 0xb13ffc1f\n"
	".inst 0xf90046c0\n"
	".inst 0x540000e3\n"
	".inst 0x90000008\n"
	".inst 0x91000108\n"
	".inst 0xaa0003e1\n"
	".inst 0xaa0803e0\n"
	".inst 0x94000000\n"
	".inst 0x1400001a\n"
	".inst 0x910043e1\n"
	".inst 0x94000000\n"
	".inst 0xaa0003f4\n"
	".inst 0xb13ffc1f\n"
	".inst 0x540000c3\n"
	".inst 0x90000000\n"
	".inst 0x91000000\n"
	".inst 0x2a1403e1\n"
	".inst 0x94000000\n"
	".inst 0x14000010\n"
	".inst 0xf9400be8\n"
	".inst 0xb50000c8\n"
	".inst 0x90000000\n"
	".inst 0x91000000\n"
	".inst 0xaa1f03e1\n"
	".inst 0x94000000\n"
	".inst 0x14000007\n"
	".inst 0x39400281\n"
	".inst 0x90000008\n"
	".inst 0x90000000\n"
	".inst 0x91000000\n"
	".inst 0x39000101\n"
	".inst 0x94000000\n"
	".inst 0xaa1403e0\n"
	".inst 0x94000000\n"
	".inst 0xf94002c0\n"
	".inst 0x90000001\n"
	".inst 0x91000021\n"
	".inst 0x94000000\n"
	".inst 0xb13ffc1f\n"
	".inst 0xf9004ac0\n"
	".inst 0x540000e3\n"
	".inst 0x90000008\n"
	".inst 0x91000108\n"
	".inst 0xaa0003e1\n"
	".inst 0xaa0803e0\n"
	".inst 0x94000000\n"
	".inst 0x1400001a\n"
	".inst 0x910043e1\n"
	".inst 0x94000000\n"
	".inst 0xaa0003f4\n"
	".inst 0xb13ffc1f\n"
	".inst 0x540000c3\n"
	".inst 0x90000000\n"
	".inst 0x91000000\n"
	".inst 0x2a1403e1\n"
	".inst 0x94000000\n"
	".inst 0x14000010\n"
	".inst 0xf9400be8\n"
	".inst 0xb50000c8\n"
	".inst 0x90000000\n"
	".inst 0x91000000\n"
	".inst 0xaa1f03e1\n"
	".inst 0x94000000\n"
	".inst 0x14000007\n"
	".inst 0x39400281\n"
	".inst 0x90000008\n"
	".inst 0x90000000\n"
	".inst 0x91000000\n"
	".inst 0x39000101\n"
	".inst 0x94000000\n"
	".inst 0xaa1403e0\n"
	".inst 0x94000000\n"
	".inst 0xf94002c0\n"
	".inst 0x90000001\n"
	".inst 0x91000021\n"
	".inst 0x94000000\n"
	".inst 0xb13ffc1f\n"
	".inst 0xf9004ec0\n"
	".inst 0x540000e3\n"
	".inst 0x90000008\n"
	".inst 0x91000108\n"
	".inst 0xaa0003e1\n"
	".inst 0xaa0803e0\n"
	".inst 0x94000000\n"
	".inst 0x14000023\n"
	".inst 0x910043e1\n"
	".inst 0x94000000\n"
	".inst 0xaa0003f4\n"
	".inst 0xb13ffc1f\n"
	".inst 0x540000c3\n"
	".inst 0x90000000\n"
	".inst 0x91000000\n"
	".inst 0x2a1403e1\n"
	".inst 0x94000000\n"
	".inst 0x14000019\n"
	".inst 0xf9400be1\n"
	".inst 0xb50000a1\n"
	".inst 0x90000000\n"
	".inst 0x91000000\n"
	".inst 0x94000000\n"
	".inst 0x14000011\n"
	".inst 0x90000008\n"
	".inst 0x91000108\n"
	".inst 0x39400282\n"
	".inst 0x39400503\n"
	".inst 0x39400904\n"
	".inst 0x39400d05\n"
	".inst 0x39401106\n"
	".inst 0x39401507\n"
	".inst 0x90000000\n"
	".inst 0x91000000\n"
	".inst 0x39401909\n"
	".inst 0x39401d0a\n"
	".inst 0x39000102\n"
	".inst 0xb9000bea\n"
	".inst 0xb90003e9\n"
	".inst 0x94000000\n"
	".inst 0xaa1403e0\n"
	".inst 0x94000000\n"
	".inst 0xaa1603e0\n"
	".inst 0x94000000\n"
	".inst 0xaa1303e0\n"
	".inst 0x94000000\n"
	".inst 0x90000008\n"
	".inst 0x91000108\n"
	".inst 0xaa1603e1\n"
	".inst 0x12b00009\n"
	".inst 0x90000000\n"
	".inst 0x91000000\n"
	".inst 0xf8068c28\n"
	".inst 0xb9007ac9\n"
	".inst 0x94000000\n"
	".inst 0x2a1f03e0\n"
	".inst 0xf9005676\n"
	".inst 0x17ffff1e\n"
	".inst 0x94000000\n"
	".reloc .Lprobe_start+0x3c, R_AARCH64_CALL26, devm_kmalloc\n"
	".reloc .Lprobe_start+0x74, R_AARCH64_ADR_PREL_PG_HI21, kernel_kobj\n"
	".reloc .Lprobe_start+0x80, R_AARCH64_LDST64_ABS_LO12_NC, kernel_kobj\n"
	".reloc .Lprobe_start+0x88, R_AARCH64_ADR_PREL_PG_HI21, bootreason_nvmem_kobj_type\n"
	".reloc .Lprobe_start+0x8c, R_AARCH64_ADD_ABS_LO12_NC, bootreason_nvmem_kobj_type\n"
	".reloc .Lprobe_start+0x90, R_AARCH64_ADR_PREL_PG_HI21, .Lprobe_s_0\n"
	".reloc .Lprobe_start+0x94, R_AARCH64_ADD_ABS_LO12_NC, .Lprobe_s_0\n"
	".reloc .Lprobe_start+0x9c, R_AARCH64_CALL26, kobject_init_and_add\n"
	".reloc .Lprobe_start+0xa4, R_AARCH64_ADR_PREL_PG_HI21, qcom_boot_nvmem_attr_group\n"
	".reloc .Lprobe_start+0xa8, R_AARCH64_ADD_ABS_LO12_NC, qcom_boot_nvmem_attr_group\n"
	".reloc .Lprobe_start+0xb0, R_AARCH64_CALL26, sysfs_create_group\n"
	".reloc .Lprobe_start+0xbc, R_AARCH64_ADR_PREL_PG_HI21, .Lprobe_s_1\n"
	".reloc .Lprobe_start+0xc0, R_AARCH64_ADD_ABS_LO12_NC, .Lprobe_s_1\n"
	".reloc .Lprobe_start+0xc4, R_AARCH64_CALL26, nvmem_cell_get\n"
	".reloc .Lprobe_start+0xd4, R_AARCH64_ADR_PREL_PG_HI21, .Lprobe_s_2\n"
	".reloc .Lprobe_start+0xd8, R_AARCH64_ADD_ABS_LO12_NC, .Lprobe_s_2\n"
	".reloc .Lprobe_start+0xe4, R_AARCH64_CALL26, _printk\n"
	".reloc .Lprobe_start+0xec, R_AARCH64_ADR_PREL_PG_HI21, .Lprobe_s_3\n"
	".reloc .Lprobe_start+0xf0, R_AARCH64_ADD_ABS_LO12_NC, .Lprobe_s_3\n"
	".reloc .Lprobe_start+0xf4, R_AARCH64_ADR_PREL_PG_HI21, .Lprobe_s_4\n"
	".reloc .Lprobe_start+0xf8, R_AARCH64_ADD_ABS_LO12_NC, .Lprobe_s_4\n"
	".reloc .Lprobe_start+0x104, R_AARCH64_CALL26, _printk\n"
	".reloc .Lprobe_start+0x10c, R_AARCH64_CALL26, kobject_put\n"
	".reloc .Lprobe_start+0x118, R_AARCH64_ADR_PREL_PG_HI21, .Lprobe_s_5\n"
	".reloc .Lprobe_start+0x11c, R_AARCH64_ADD_ABS_LO12_NC, .Lprobe_s_5\n"
	".reloc .Lprobe_start+0x120, R_AARCH64_ADR_PREL_PG_HI21, .Lprobe_s_4\n"
	".reloc .Lprobe_start+0x124, R_AARCH64_ADD_ABS_LO12_NC, .Lprobe_s_4\n"
	".reloc .Lprobe_start+0x130, R_AARCH64_CALL26, _printk\n"
	".reloc .Lprobe_start+0x138, R_AARCH64_CALL26, kobject_del\n"
	".reloc .Lprobe_start+0x148, R_AARCH64_CALL26, nvmem_cell_read\n"
	".reloc .Lprobe_start+0x158, R_AARCH64_ADR_PREL_PG_HI21, .Lprobe_s_6\n"
	".reloc .Lprobe_start+0x15c, R_AARCH64_ADD_ABS_LO12_NC, .Lprobe_s_6\n"
	".reloc .Lprobe_start+0x164, R_AARCH64_CALL26, _printk\n"
	".reloc .Lprobe_start+0x174, R_AARCH64_ADR_PREL_PG_HI21, .Lprobe_s_7\n"
	".reloc .Lprobe_start+0x178, R_AARCH64_ADD_ABS_LO12_NC, .Lprobe_s_7\n"
	".reloc .Lprobe_start+0x180, R_AARCH64_CALL26, _printk\n"
	".reloc .Lprobe_start+0x18c, R_AARCH64_ADR_PREL_PG_HI21, read_nvmem_buf+0x2\n"
	".reloc .Lprobe_start+0x190, R_AARCH64_ADR_PREL_PG_HI21, .Lprobe_s_8\n"
	".reloc .Lprobe_start+0x194, R_AARCH64_ADD_ABS_LO12_NC, .Lprobe_s_8\n"
	".reloc .Lprobe_start+0x198, R_AARCH64_LDST8_ABS_LO12_NC, read_nvmem_buf+0x2\n"
	".reloc .Lprobe_start+0x19c, R_AARCH64_CALL26, _printk\n"
	".reloc .Lprobe_start+0x1a4, R_AARCH64_CALL26, kfree\n"
	".reloc .Lprobe_start+0x1ac, R_AARCH64_ADR_PREL_PG_HI21, .Lprobe_s_9\n"
	".reloc .Lprobe_start+0x1b0, R_AARCH64_ADD_ABS_LO12_NC, .Lprobe_s_9\n"
	".reloc .Lprobe_start+0x1b4, R_AARCH64_CALL26, nvmem_cell_get\n"
	".reloc .Lprobe_start+0x1c4, R_AARCH64_ADR_PREL_PG_HI21, .Lprobe_s_10\n"
	".reloc .Lprobe_start+0x1c8, R_AARCH64_ADD_ABS_LO12_NC, .Lprobe_s_10\n"
	".reloc .Lprobe_start+0x1d4, R_AARCH64_CALL26, _printk\n"
	".reloc .Lprobe_start+0x1e0, R_AARCH64_CALL26, nvmem_cell_read\n"
	".reloc .Lprobe_start+0x1f0, R_AARCH64_ADR_PREL_PG_HI21, .Lprobe_s_11\n"
	".reloc .Lprobe_start+0x1f4, R_AARCH64_ADD_ABS_LO12_NC, .Lprobe_s_11\n"
	".reloc .Lprobe_start+0x1fc, R_AARCH64_CALL26, _printk\n"
	".reloc .Lprobe_start+0x20c, R_AARCH64_ADR_PREL_PG_HI21, .Lprobe_s_12\n"
	".reloc .Lprobe_start+0x210, R_AARCH64_ADD_ABS_LO12_NC, .Lprobe_s_12\n"
	".reloc .Lprobe_start+0x218, R_AARCH64_CALL26, _printk\n"
	".reloc .Lprobe_start+0x224, R_AARCH64_ADR_PREL_PG_HI21, read_nvmem_buf+0x1\n"
	".reloc .Lprobe_start+0x228, R_AARCH64_ADR_PREL_PG_HI21, .Lprobe_s_13\n"
	".reloc .Lprobe_start+0x22c, R_AARCH64_ADD_ABS_LO12_NC, .Lprobe_s_13\n"
	".reloc .Lprobe_start+0x230, R_AARCH64_LDST8_ABS_LO12_NC, read_nvmem_buf+0x1\n"
	".reloc .Lprobe_start+0x234, R_AARCH64_CALL26, _printk\n"
	".reloc .Lprobe_start+0x23c, R_AARCH64_CALL26, kfree\n"
	".reloc .Lprobe_start+0x244, R_AARCH64_ADR_PREL_PG_HI21, .Lprobe_s_14\n"
	".reloc .Lprobe_start+0x248, R_AARCH64_ADD_ABS_LO12_NC, .Lprobe_s_14\n"
	".reloc .Lprobe_start+0x24c, R_AARCH64_CALL26, nvmem_cell_get\n"
	".reloc .Lprobe_start+0x25c, R_AARCH64_ADR_PREL_PG_HI21, .Lprobe_s_15\n"
	".reloc .Lprobe_start+0x260, R_AARCH64_ADD_ABS_LO12_NC, .Lprobe_s_15\n"
	".reloc .Lprobe_start+0x26c, R_AARCH64_CALL26, _printk\n"
	".reloc .Lprobe_start+0x278, R_AARCH64_CALL26, nvmem_cell_read\n"
	".reloc .Lprobe_start+0x288, R_AARCH64_ADR_PREL_PG_HI21, .Lprobe_s_16\n"
	".reloc .Lprobe_start+0x28c, R_AARCH64_ADD_ABS_LO12_NC, .Lprobe_s_16\n"
	".reloc .Lprobe_start+0x294, R_AARCH64_CALL26, _printk\n"
	".reloc .Lprobe_start+0x2a4, R_AARCH64_ADR_PREL_PG_HI21, .Lprobe_s_17\n"
	".reloc .Lprobe_start+0x2a8, R_AARCH64_ADD_ABS_LO12_NC, .Lprobe_s_17\n"
	".reloc .Lprobe_start+0x2b0, R_AARCH64_CALL26, _printk\n"
	".reloc .Lprobe_start+0x2bc, R_AARCH64_ADR_PREL_PG_HI21, read_nvmem_buf+0x3\n"
	".reloc .Lprobe_start+0x2c0, R_AARCH64_ADR_PREL_PG_HI21, .Lprobe_s_18\n"
	".reloc .Lprobe_start+0x2c4, R_AARCH64_ADD_ABS_LO12_NC, .Lprobe_s_18\n"
	".reloc .Lprobe_start+0x2c8, R_AARCH64_LDST8_ABS_LO12_NC, read_nvmem_buf+0x3\n"
	".reloc .Lprobe_start+0x2cc, R_AARCH64_CALL26, _printk\n"
	".reloc .Lprobe_start+0x2d4, R_AARCH64_CALL26, kfree\n"
	".reloc .Lprobe_start+0x2dc, R_AARCH64_ADR_PREL_PG_HI21, .Lprobe_s_19\n"
	".reloc .Lprobe_start+0x2e0, R_AARCH64_ADD_ABS_LO12_NC, .Lprobe_s_19\n"
	".reloc .Lprobe_start+0x2e4, R_AARCH64_CALL26, nvmem_cell_get\n"
	".reloc .Lprobe_start+0x2f4, R_AARCH64_ADR_PREL_PG_HI21, .Lprobe_s_20\n"
	".reloc .Lprobe_start+0x2f8, R_AARCH64_ADD_ABS_LO12_NC, .Lprobe_s_20\n"
	".reloc .Lprobe_start+0x304, R_AARCH64_CALL26, _printk\n"
	".reloc .Lprobe_start+0x310, R_AARCH64_CALL26, nvmem_cell_read\n"
	".reloc .Lprobe_start+0x320, R_AARCH64_ADR_PREL_PG_HI21, .Lprobe_s_21\n"
	".reloc .Lprobe_start+0x324, R_AARCH64_ADD_ABS_LO12_NC, .Lprobe_s_21\n"
	".reloc .Lprobe_start+0x32c, R_AARCH64_CALL26, _printk\n"
	".reloc .Lprobe_start+0x33c, R_AARCH64_ADR_PREL_PG_HI21, .Lprobe_s_22\n"
	".reloc .Lprobe_start+0x340, R_AARCH64_ADD_ABS_LO12_NC, .Lprobe_s_22\n"
	".reloc .Lprobe_start+0x344, R_AARCH64_CALL26, _printk\n"
	".reloc .Lprobe_start+0x34c, R_AARCH64_ADR_PREL_PG_HI21, read_nvmem_buf+0x4\n"
	".reloc .Lprobe_start+0x350, R_AARCH64_ADD_ABS_LO12_NC, read_nvmem_buf+0x4\n"
	".reloc .Lprobe_start+0x36c, R_AARCH64_ADR_PREL_PG_HI21, .Lprobe_s_23\n"
	".reloc .Lprobe_start+0x370, R_AARCH64_ADD_ABS_LO12_NC, .Lprobe_s_23\n"
	".reloc .Lprobe_start+0x388, R_AARCH64_CALL26, _printk\n"
	".reloc .Lprobe_start+0x390, R_AARCH64_CALL26, kfree\n"
	".reloc .Lprobe_start+0x398, R_AARCH64_CALL26, save_panic_buf_data_to_nvmem\n"
	".reloc .Lprobe_start+0x3a0, R_AARCH64_CALL26, register_panic_hook\n"
	".reloc .Lprobe_start+0x3a4, R_AARCH64_ADR_PREL_PG_HI21, zte_reboot_ext_panic\n"
	".reloc .Lprobe_start+0x3a8, R_AARCH64_ADD_ABS_LO12_NC, zte_reboot_ext_panic\n"
	".reloc .Lprobe_start+0x3b4, R_AARCH64_ADR_PREL_PG_HI21, panic_notifier_list\n"
	".reloc .Lprobe_start+0x3b8, R_AARCH64_ADD_ABS_LO12_NC, panic_notifier_list\n"
	".reloc .Lprobe_start+0x3c4, R_AARCH64_CALL26, atomic_notifier_chain_register\n"
	".reloc .Lprobe_start+0x3d4, R_AARCH64_CALL26, __stack_chk_fail\n"
	".size zte_reboot_ext_probe, .-zte_reboot_ext_probe\n"
	".popsection\n"
	".pushsection .rodata.str1.1,\"aMS\",@progbits,1\n"
	".Lprobe_s_0: .asciz \"bootreason\"\n"
	".Lprobe_s_1: .asciz \"vendor_zlog_ss\"\n"
	".Lprobe_s_2: .asciz \"\\0013ztedbg failed to get vendor_zlog_ss %d\\n\"\n"
	".Lprobe_s_3: .asciz \"\\0013%s: Error in creation kobject_add\\n\"\n"
	".Lprobe_s_4: .asciz \"zte_reboot_ext_probe\"\n"
	".Lprobe_s_5: .asciz \"\\0013%s: Error in creation sysfs_create_group\\n\"\n"
	".Lprobe_s_6: .asciz \"\\0013ztedbg failed to read vendor_zlog_ss %d\\n\"\n"
	".Lprobe_s_7: .asciz \"\\0013ztedbg unexpected vendor_zlog_ss len %zu\\n\"\n"
	".Lprobe_s_8: .asciz \"\\0016ztedbg read 1 bytes vendor_zlog_ss: 0x%x\\n\"\n"
	".Lprobe_s_9: .asciz \"vendor_zlog_w\"\n"
	".Lprobe_s_10: .asciz \"\\0013ztedbg failed to get vendor_zlog_w %d\\n\"\n"
	".Lprobe_s_11: .asciz \"\\0013ztedbg failed to read vendor_zlog_w %d\\n\"\n"
	".Lprobe_s_12: .asciz \"\\0013ztedbg unexpected vendor_zlog_w len %zu\\n\"\n"
	".Lprobe_s_13: .asciz \"\\0016ztedbg read 1 bytes vendor_zlog_w: 0x%x\\n\"\n"
	".Lprobe_s_14: .asciz \"vendor_zlog_p\"\n"
	".Lprobe_s_15: .asciz \"\\0013ztedbg failed to get vendor_zlog_p %d\\n\"\n"
	".Lprobe_s_16: .asciz \"\\0013ztedbg failed to read vendor_zlog_p %d\\n\"\n"
	".Lprobe_s_17: .asciz \"\\0013ztedbg unexpected vendor_zlog_p len %zu\\n\"\n"
	".Lprobe_s_18: .asciz \"\\0016ztedbg read 1 bytes vendor_zlog_p: 0x%x\\n\"\n"
	".Lprobe_s_19: .asciz \"vendor_zlog_panic_ext\"\n"
	".Lprobe_s_20: .asciz \"\\0013ztedbg failed to init vendor_zlog_panic_ext %d\\n\"\n"
	".Lprobe_s_21: .asciz \"\\0013ztedbg failed to read vendor_zlog_panic_ext %d\\n\"\n"
	".Lprobe_s_22: .asciz \"\\0013ztedbg unexpected vendor_zlog_panic_ext len %zu\\n\"\n"
	".Lprobe_s_23: .asciz \"\\0016ztedbg read %zu vendor_zlog_panic_ext: 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x\\n\"\n"
	".popsection\n"
 );
#endif
#ifdef ZTE_REBOOT_EXT_HOST_TEST
#define entry_panic entry_panic_model
#else
extern int entry_panic(struct kretprobe_instance *ri, struct pt_regs *regs);

__asm__(
	".pushsection .text,\"ax\"\n"
	".p2align 2\n"
	".inst 0xf4cf8cc7\n"
	".type entry_panic, %function\n"
	".globl entry_panic\n"
	"entry_panic:\n"
	".Lentry_start:\n"
	".inst 0xd503233f\n"
	".inst 0xd10683ff\n"
	".inst 0xa9147bfd\n"
	".inst 0xa9156ffc\n"
	".inst 0xa91667fa\n"
	".inst 0xa9175ff8\n"
	".inst 0xa91857f6\n"
	".inst 0xa9194ff4\n"
	".inst 0x910503fd\n"
	".inst 0xd5384108\n"
	".inst 0x90000019\n"
	".inst 0xaa0103f4\n"
	".inst 0xf9438908\n"
	".inst 0xf81f03a8\n"
	".inst 0xb9400328\n"
	".inst 0xf9400033\n"
	".inst 0xa9127fff\n"
	".inst 0xa9117fff\n"
	".inst 0x11000501\n"
	".inst 0xa9107fff\n"
	".inst 0xa90f7fff\n"
	".inst 0xa90e7fff\n"
	".inst 0xa90d7fff\n"
	".inst 0xa90c7fff\n"
	".inst 0xa90b7fff\n"
	".inst 0xa90a7fff\n"
	".inst 0xa9097fff\n"
	".inst 0xa9087fff\n"
	".inst 0xa9077fff\n"
	".inst 0xa9067fff\n"
	".inst 0xa9057fff\n"
	".inst 0xa9047fff\n"
	".inst 0xa9037fff\n"
	".inst 0xb9000321\n"
	".inst 0x350006e8\n"
	".inst 0xb4000a73\n"
	".inst 0xaa1303e0\n"
	".inst 0x94000000\n"
	".inst 0x91005408\n"
	".inst 0xf104011f\n"
	".inst 0x54000908\n"
	".inst 0x90000002\n"
	".inst 0x91000042\n"
	".inst 0x90000003\n"
	".inst 0x91000063\n"
	".inst 0x9100c3e0\n"
	".inst 0x52802001\n"
	".inst 0xaa1303e4\n"
	".inst 0x9100c3fa\n"
	".inst 0x94000000\n"
	".inst 0xaa1f03fb\n"
	".inst 0x2a1f03e8\n"
	".inst 0x2a1f03f5\n"
	".inst 0x1280001c\n"
	".inst 0x90000017\n"
	".inst 0x910002f7\n"
	".inst 0x12800016\n"
	".inst 0x14000005\n"
	".inst 0x52000108\n"
	".inst 0xf103fb7f\n"
	".inst 0x9100077b\n"
	".inst 0x54001408\n"
	".inst 0x387b6b58\n"
	".inst 0x7100971f\n"
	".inst 0x54ffff40\n"
	".inst 0x34000c78\n"
	".inst 0x36000228\n"
	".inst 0xaa1703e0\n"
	".inst 0x2a1803e1\n"
	".inst 0x52800282\n"
	".inst 0x94000000\n"
	".inst 0xb40001c0\n"
	".inst 0x7101cf1f\n"
	".inst 0x110006ab\n"
	".inst 0x2a1f03e8\n"
	".inst 0x1a9f17e9\n"
	".inst 0x3100079f\n"
	".inst 0x1a9f17ea\n"
	".inst 0x6a0a013f\n"
	".inst 0x1a9506d6\n"
	".inst 0x1a95079c\n"
	".inst 0x2a0b03f5\n"
	".inst 0x17ffffe9\n"
	".inst 0x2a1f03e8\n"
	".inst 0x17ffffe7\n"
	".inst 0x7100ab1f\n"
	".inst 0x540009a0\n"
	".inst 0x52800028\n"
	".inst 0x17ffffe3\n"
	".inst 0x90000008\n"
	".inst 0x91000108\n"
	".inst 0x90000000\n"
	".inst 0x91000000\n"
	".inst 0x39400102\n"
	".inst 0x39400503\n"
	".inst 0x39400904\n"
	".inst 0x39400d05\n"
	".inst 0x39401106\n"
	".inst 0x39401507\n"
	".inst 0x39401909\n"
	".inst 0x39401d0a\n"
	".inst 0x3940210b\n"
	".inst 0x3940250c\n"
	".inst 0x3940290d\n"
	".inst 0x39402d08\n"
	".inst 0xb9000bea\n"
	".inst 0xb90023ed\n"
	".inst 0xb9002be8\n"
	".inst 0xb9001bec\n"
	".inst 0xb90013eb\n"
	".inst 0xb90003e9\n"
	".inst 0x14000024\n"
	".inst 0x90000008\n"
	".inst 0x91000108\n"
	".inst 0x91004801\n"
	".inst 0xaa0803e0\n"
	".inst 0xaa1303e2\n"
	".inst 0x94000000\n"
	".inst 0xaa1f03e0\n"
	".inst 0x90000014\n"
	".inst 0x91000294\n"
	".inst 0x52800a08\n"
	".inst 0xaa1303e1\n"
	".inst 0xaa1403e2\n"
	".inst 0x52800083\n"
	".inst 0x52800024\n"
	".inst 0x39000e88\n"
	".inst 0x94000000\n"
	".inst 0x39401e88\n"
	".inst 0x39402289\n"
	".inst 0x90000000\n"
	".inst 0x91000000\n"
	".inst 0x3940268a\n"
	".inst 0x39402a8b\n"
	".inst 0x39402e8c\n"
	".inst 0x39400281\n"
	".inst 0x39400682\n"
	".inst 0x39400a83\n"
	".inst 0x39400e84\n"
	".inst 0x39401285\n"
	".inst 0x39401686\n"
	".inst 0x39401a87\n"
	".inst 0xb90023ec\n"
	".inst 0xb9001beb\n"
	".inst 0xb90013ea\n"
	".inst 0xb9000be9\n"
	".inst 0xb90003e8\n"
	".inst 0x94000000\n"
	".inst 0xd5384108\n"
	".inst 0xf9438908\n"
	".inst 0xf85f03a9\n"
	".inst 0xeb09011f\n"
	".inst 0x540008c1\n"
	".inst 0x2a1f03e0\n"
	".inst 0xa9594ff4\n"
	".inst 0xa95857f6\n"
	".inst 0xa9575ff8\n"
	".inst 0xa95667fa\n"
	".inst 0xa9556ffc\n"
	".inst 0xa9547bfd\n"
	".inst 0x910683ff\n"
	".inst 0xd50323bf\n"
	".inst 0xd65f03c0\n"
	".inst 0x12800015\n"
	".inst 0x510006c8\n"
	".inst 0x7100191f\n"
	".inst 0x540000e8\n"
	".inst 0xf8765a88\n"
	".inst 0xb50000e8\n"
	".inst 0x90000000\n"
	".inst 0x91000000\n"
	".inst 0x2a1603e1\n"
	".inst 0x94000000\n"
	".inst 0xaa1f03f6\n"
	".inst 0x1400000b\n"
	".inst 0x90000000\n"
	".inst 0x91000000\n"
	".inst 0xaa0803e1\n"
	".inst 0xaa0803f6\n"
	".inst 0x94000000\n"
	".inst 0x90000001\n"
	".inst 0x91000021\n"
	".inst 0xaa1603e0\n"
	".inst 0x94000000\n"
	".inst 0x340004e0\n"
	".inst 0x710006bf\n"
	".inst 0x5400012c\n"
	".inst 0x34000335\n"
	".inst 0x710006bf\n"
	".inst 0x54000201\n"
	".inst 0xf9400681\n"
	".inst 0x9100c3e0\n"
	".inst 0x94000000\n"
	".inst 0xaa1603e0\n"
	".inst 0x17ffffb5\n"
	".inst 0x71000abf\n"
	".inst 0x54000280\n"
	".inst 0x71000ebf\n"
	".inst 0x540000e1\n"
	".inst 0xa9408a81\n"
	".inst 0x9100c3e0\n"
	".inst 0xf9400e83\n"
	".inst 0x94000000\n"
	".inst 0xaa1603e0\n"
	".inst 0x17ffffab\n"
	".inst 0x90000000\n"
	".inst 0x91000000\n"
	".inst 0x2a1503e1\n"
	".inst 0xaa1303e2\n"
	".inst 0x94000000\n"
	".inst 0xaa1603e0\n"
	".inst 0x17ffffa4\n"
	".inst 0x9100c3e0\n"
	".inst 0x94000000\n"
	".inst 0xaa1603e0\n"
	".inst 0x17ffffa0\n"
	".inst 0xa9408a81\n"
	".inst 0x9100c3e0\n"
	".inst 0x94000000\n"
	".inst 0xaa1603e0\n"
	".inst 0x17ffff9b\n"
	".inst 0xd4200020\n"
	".inst 0x94000000\n"
	".inst 0xb9400321\n"
	".inst 0x90000000\n"
	".inst 0x91000000\n"
	".inst 0x94000000\n"
	".reloc .Lentry_start+0x28, R_AARCH64_ADR_PREL_PG_HI21, once_entry_panic_count\n"
	".reloc .Lentry_start+0x38, R_AARCH64_LDST32_ABS_LO12_NC, once_entry_panic_count\n"
	".reloc .Lentry_start+0x84, R_AARCH64_LDST32_ABS_LO12_NC, once_entry_panic_count\n"
	".reloc .Lentry_start+0x94, R_AARCH64_CALL26, strlen\n"
	".reloc .Lentry_start+0xa4, R_AARCH64_ADR_PREL_PG_HI21, .Lentry_s_0\n"
	".reloc .Lentry_start+0xa8, R_AARCH64_ADD_ABS_LO12_NC, .Lentry_s_0\n"
	".reloc .Lentry_start+0xac, R_AARCH64_ADR_PREL_PG_HI21, .Lentry_s_1\n"
	".reloc .Lentry_start+0xb0, R_AARCH64_ADD_ABS_LO12_NC, .Lentry_s_1\n"
	".reloc .Lentry_start+0xc4, R_AARCH64_CALL26, snprintf\n"
	".reloc .Lentry_start+0xd8, R_AARCH64_ADR_PREL_PG_HI21, .Lentry_s_2\n"
	".reloc .Lentry_start+0xdc, R_AARCH64_ADD_ABS_LO12_NC, .Lentry_s_2\n"
	".reloc .Lentry_start+0x118, R_AARCH64_CALL26, memchr\n"
	".reloc .Lentry_start+0x164, R_AARCH64_ADR_PREL_PG_HI21, saved_nvmem_buf\n"
	".reloc .Lentry_start+0x168, R_AARCH64_ADD_ABS_LO12_NC, saved_nvmem_buf\n"
	".reloc .Lentry_start+0x16c, R_AARCH64_ADR_PREL_PG_HI21, .Lentry_s_3\n"
	".reloc .Lentry_start+0x170, R_AARCH64_ADD_ABS_LO12_NC, .Lentry_s_3\n"
	".reloc .Lentry_start+0x1c0, R_AARCH64_ADR_PREL_PG_HI21, .Lentry_s_4\n"
	".reloc .Lentry_start+0x1c4, R_AARCH64_ADD_ABS_LO12_NC, .Lentry_s_4\n"
	".reloc .Lentry_start+0x1d4, R_AARCH64_CALL26, _printk\n"
	".reloc .Lentry_start+0x1dc, R_AARCH64_ADR_PREL_PG_HI21, saved_nvmem_buf\n"
	".reloc .Lentry_start+0x1e0, R_AARCH64_ADD_ABS_LO12_NC, saved_nvmem_buf\n"
	".reloc .Lentry_start+0x1fc, R_AARCH64_CALL26, fill_nvmem_buf\n"
	".reloc .Lentry_start+0x208, R_AARCH64_ADR_PREL_PG_HI21, .Lentry_s_5\n"
	".reloc .Lentry_start+0x20c, R_AARCH64_ADD_ABS_LO12_NC, .Lentry_s_5\n"
	".reloc .Lentry_start+0x24c, R_AARCH64_CALL26, _printk\n"
	".reloc .Lentry_start+0x2a4, R_AARCH64_ADR_PREL_PG_HI21, .Lentry_s_6\n"
	".reloc .Lentry_start+0x2a8, R_AARCH64_ADD_ABS_LO12_NC, .Lentry_s_6\n"
	".reloc .Lentry_start+0x2b0, R_AARCH64_CALL26, _printk\n"
	".reloc .Lentry_start+0x2bc, R_AARCH64_ADR_PREL_PG_HI21, .Lentry_s_7\n"
	".reloc .Lentry_start+0x2c0, R_AARCH64_ADD_ABS_LO12_NC, .Lentry_s_7\n"
	".reloc .Lentry_start+0x2cc, R_AARCH64_CALL26, _printk\n"
	".reloc .Lentry_start+0x2d0, R_AARCH64_ADR_PREL_PG_HI21, .Lentry_s_8\n"
	".reloc .Lentry_start+0x2d4, R_AARCH64_ADD_ABS_LO12_NC, .Lentry_s_8\n"
	".reloc .Lentry_start+0x2dc, R_AARCH64_CALL26, strcmp\n"
	".reloc .Lentry_start+0x300, R_AARCH64_CALL26, _printk\n"
	".reloc .Lentry_start+0x328, R_AARCH64_CALL26, _printk\n"
	".reloc .Lentry_start+0x334, R_AARCH64_ADR_PREL_PG_HI21, .Lentry_s_9\n"
	".reloc .Lentry_start+0x338, R_AARCH64_ADD_ABS_LO12_NC, .Lentry_s_9\n"
	".reloc .Lentry_start+0x344, R_AARCH64_CALL26, _printk\n"
	".reloc .Lentry_start+0x354, R_AARCH64_CALL26, _printk\n"
	".reloc .Lentry_start+0x368, R_AARCH64_CALL26, _printk\n"
	".reloc .Lentry_start+0x378, R_AARCH64_CALL26, __stack_chk_fail\n"
	".reloc .Lentry_start+0x37c, R_AARCH64_LDST32_ABS_LO12_NC, once_entry_panic_count\n"
	".reloc .Lentry_start+0x380, R_AARCH64_ADR_PREL_PG_HI21, .Lentry_s_10\n"
	".reloc .Lentry_start+0x384, R_AARCH64_ADD_ABS_LO12_NC, .Lentry_s_10\n"
	".reloc .Lentry_start+0x388, R_AARCH64_CALL26, panic\n"
	".size entry_panic, .-entry_panic\n"
	".popsection\n"
	".pushsection .rodata.str1.1,\"aMS\",@progbits,1\n"
	".Lentry_s_0: .asciz \"%s%s\"\n"
	".Lentry_s_1: .asciz \"ztedbg panic_hook:\"\n"
	".Lentry_s_2: .asciz \"diouxXfFeEgGaAcsSpn\"\n"
	".Lentry_s_3: .asciz \"\0016ztedbg panic_hook skip for entry %d: %x %x %x %x - %x %x %x %x %x %x %x %x\n\"\n"
	".Lentry_s_4: .asciz \"\0016ztedbg panic_hook %zu fmt: %s\n\"\n"
	".Lentry_s_5: .asciz \"\0016ztedbg panic_hook entry s: %x %x %x %x %x - %x %x %x %x %x %x %x\n\"\n"
	".Lentry_s_6: .asciz \"\0016ztedbg panic_hook unexpected null firstS %d\n\"\n"
	".Lentry_s_7: .asciz \"\0016ztedbg panic_hook firstS :%s:\n\"\n"
	".Lentry_s_8: .asciz \"panicinpanic\"\n"
	".Lentry_s_9: .asciz \"\0016ztedbg panic_hook %d parameters: %s\n\"\n"
	".Lentry_s_10: .asciz \"panicinpanic %d\"\n"
	".popsection\n"
);
#endif
static struct kretprobe panic_probe = {
	.entry_handler = entry_panic,
	.kp = {
		.symbol_name = "panic",
	},
};
static void zte_reboot_ext_remove(struct platform_device *pdev)
{
	struct zte_reboot_ext_data *data = platform_get_drvdata(pdev);

	atomic_notifier_chain_unregister(&panic_notifier_list, &data->panic_nb);
	unregister_kretprobe(&panic_probe);
	pr_info("ztedbg unregister p_hook");
}

static const struct of_device_id zte_reboot_ext_match[] = {
	{ .compatible = "zte,reboot-ext" },
	{ },
};
MODULE_DEVICE_TABLE(of, zte_reboot_ext_match);

static struct platform_driver zte_reboot_ext_driver = {
	.probe = zte_reboot_ext_probe,
	.remove = zte_reboot_ext_remove,
	.driver = {
		.name = DRIVER_NAME,
		.of_match_table = zte_reboot_ext_match,
	},
};

module_platform_driver(zte_reboot_ext_driver);

MODULE_DESCRIPTION("ZTE Reboot Ext Driver");
MODULE_LICENSE("GPL v2");
MODULE_INFO(built_with, "DDK");
