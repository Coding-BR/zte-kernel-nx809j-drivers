// SPDX-License-Identifier: GPL-2.0-only
#include <linux/module.h>
#include <linux/types.h>

#include "rdbg_reconstruction_layout.h"

struct rdbg_module_storage g_rdbg_instance __used
	__attribute__((section(".data"))) = { };

static const u8 rdbg_proc_info_padding[0x4f0] __used
	__attribute__((section(".rodata")));

const struct rdbg_proc_info_layout proc_info[16] __used
	__attribute__((section(".rodata"))) = {
	[1] = { .name = "rdbg_modem" },
	[2] = {
		.name = "rdbg_adsp",
		.smem_buffer_addr = 470,
		.smem_buffer_size = 16384,
	},
	[4] = { .name = "rdbg_wcnss" },
	[5] = {
		.name = "rdbg_cdsp",
		.smem_buffer_addr = 470,
		.smem_buffer_size = 16384,
	},
};

MODULE_DESCRIPTION("rdbg module reconstruction in progress");
MODULE_LICENSE("GPL");
