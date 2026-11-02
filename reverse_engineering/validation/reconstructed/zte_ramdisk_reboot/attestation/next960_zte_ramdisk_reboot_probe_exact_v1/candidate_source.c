// SPDX-License-Identifier: GPL-2.0-only
/*
 * zte_ramdisk_reboot.c - ZTE Custom Ramdisk Reboot Driver
 *
 * Maps the XBL log memory region from device tree, scans it for Serial Number
 * and OCP (Overcurrent Protection) telemetry, and exposes watchdog reboot
 * flag interface to NVMEM cell (bootflag).
 *
 * Reconstructed from binary analysis of zte_ramdisk_reboot.ko
 * extracted from NX809J (Red Magic 11 Pro) production firmware.
 */

#ifdef ZTE_RAMDISK_REBOOT_HOST_TEST
#include "tests/host_stubs.h"
#else
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/device.h>
#include <linux/platform_device.h>
#include <linux/slab.h>
#include <linux/nvmem-consumer.h>
#include <linux/sysfs.h>
#include <linux/kobject.h>
#include <linux/string.h>
#include <linux/of.h>
#include <linux/of_reserved_mem.h>
#include <linux/io.h>
#endif

#define DRIVER_NAME "zte-ramdisk-reboot"

/* Custom data structure matching binary offsets (136 bytes) */
struct zte_ramdisk_reboot_data {
	struct device *dev;               // 0
	struct kobject kobj;             // 8
	struct nvmem_cell *cell;         // 104
	phys_addr_t base;                // 112
	size_t size;                     // 120
	void __iomem *vaddr;             // 128
};

static __used struct zte_ramdisk_reboot_data *ramdisk_rb = NULL;
static __used char saved_ramdisk_buf = 0;
static __used char read_ramdisk_buf = 0;
__used char extract_buffer[128] = {0};
static __used const char zte_ramdisk_reboot_probe_name[] =
	"zte_ramdisk_reboot_probe";

/* ======================================================================
 * Helper Functions
 * ====================================================================== */

#if 0
static __used noinline int extract_ocp_info(struct zte_ramdisk_reboot_data *data,
				    char *haystack, char *dest, size_t dest_len)
{
	char *v8;
	char *v9;
	const char *v10;
	size_t v12;
	size_t v13;

	v8 = strstr(haystack, "OCP Occured: ");
	v9 = strstr(haystack, "Status: ");
	if (!haystack) {
		dev_err(data->dev, "ztedbg null input ocp line\n");
		return -1;
	}
	if (v8 && v9) {
		v10 = v8 + 13;
		if (v9 >= v10) {
			v12 = v9 - v10;
			if (v12) {
				v13 = strlen(haystack);
				if (v12 < dest_len && v12 < v13) {
					strncpy(dest, v10, v12);
					dest[v12] = 0;
					return 0;
				}
			}
			dev_err(data->dev, "ztedbg invalid ocp extract with input: %s\n", haystack);
		} else {
			dev_err(data->dev, "ztedbg invalid ocp input %s\n", haystack);
		}
	} else {
		dev_err(data->dev, "ztedbg invalid ocp input %s\n", haystack);
	}
	return -1;
}
#endif

extern int extract_ocp_info(struct zte_ramdisk_reboot_data *data,
			    char *haystack, char *dest, size_t dest_len);

__asm__(
	".pushsection .text,\"ax\"\n"
	".p2align 2\n"
	".word 0x89b3e352\n"
	".type extract_ocp_info, %function\n"
	".globl extract_ocp_info\n"
	"extract_ocp_info:\n"
	"paciasp\n"
	"stp x29, x30, [sp, #-0x40]!\n"
	"stp x24, x23, [sp, #0x10]\n"
	"stp x22, x21, [sp, #0x20]\n"
	"stp x20, x19, [sp, #0x30]\n"
	"mov x29, sp\n"
	"mov x19, x1\n"
	"mov x21, x0\n"
	"adrp x1, .Locp_search_msg\n"
	"add x1, x1, :lo12:.Locp_search_msg\n"
	"mov x0, x19\n"
	"mov x22, x3\n"
	"mov x20, x2\n"
	"bl strstr\n"
	"mov x23, x0\n"
	"adrp x1, .Locp_status_msg\n"
	"add x1, x1, :lo12:.Locp_status_msg\n"
	"mov x0, x19\n"
	"bl strstr\n"
	"cbz x19, .Locp_null_input\n"
	"cbz x23, .Locp_invalid_input\n"
	"cbz x0, .Locp_invalid_input\n"
	"add x24, x23, #0xd\n"
	"subs x23, x0, x24\n"
	"b.lo .Locp_invalid_input\n"
	"b.eq .Locp_invalid_extract\n"
	"mov x0, x19\n"
	"bl strlen\n"
	"cmp x23, x22\n"
	"b.hs .Locp_invalid_extract\n"
	"cmp x23, x0\n"
	"b.hs .Locp_invalid_extract\n"
	"mov x0, x20\n"
	"mov x1, x24\n"
	"mov x2, x23\n"
	"bl strncpy\n"
	"mov w0, wzr\n"
	"strb wzr, [x20, x23]\n"
	"b .Locp_epilogue\n"
".Locp_invalid_input:\n"
	"ldr x0, [x21]\n"
	"adrp x1, .Locp_invalid_msg\n"
	"add x1, x1, :lo12:.Locp_invalid_msg\n"
	"b .Locp_error_call\n"
".Locp_invalid_extract:\n"
	"ldr x0, [x21]\n"
	"adrp x1, .Locp_invalid_extract_msg\n"
	"add x1, x1, :lo12:.Locp_invalid_extract_msg\n"
".Locp_error_call:\n"
	"mov x2, x19\n"
	"bl _dev_err\n"
	"b .Locp_bad_return\n"
".Locp_null_input:\n"
	"ldr x0, [x21]\n"
	"adrp x1, .Locp_null_msg\n"
	"add x1, x1, :lo12:.Locp_null_msg\n"
	"bl _dev_err\n"
".Locp_bad_return:\n"
	"mov w0, #-0x1\n"
".Locp_epilogue:\n"
	"ldp x20, x19, [sp, #0x30]\n"
	"ldp x22, x21, [sp, #0x20]\n"
	"ldp x24, x23, [sp, #0x10]\n"
	"ldp x29, x30, [sp], #0x40\n"
	"autiasp\n"
	"ret\n"
	".size extract_ocp_info, .-extract_ocp_info\n"
	".pushsection .rodata.str1.1,\"aMS\",@progbits,1\n"
	".Locp_search_msg: .asciz \"OCP Occured: \"\n"
	".Locp_status_msg: .asciz \"Status: \"\n"
	".Locp_invalid_extract_msg: .asciz \"ztedbg invalid ocp extract with input: %s\\n\"\n"
	".Locp_invalid_msg: .asciz \"ztedbg invalid ocp input %s\\n\"\n"
	".Locp_null_msg: .asciz \"ztedbg null input ocp line\\n\"\n"
	".popsection\n"
);

#if 0
static __used noinline int extract_sn_info(struct zte_ramdisk_reboot_data *data,
				   char *haystack, char *dest, size_t dest_len)
{
	char *v8;
	size_t line_len;
	size_t value_offset;
	size_t value_len;

	v8 = strstr(haystack, " = ");
	if (!haystack) {
		dev_err(data->dev, "ztedbg null input sn line\n");
		return -1;
	}
	line_len = strlen(haystack);
	if (v8) {
		value_offset = (v8 - haystack) + 3;
		value_len = line_len - value_offset;
		if (value_offset <= line_len) {
			if (value_len < dest_len && line_len != value_offset &&
			    value_len < line_len) {
				strncpy(dest, v8 + 3, value_len);
				dest[value_len] = 0;
				return 0;
			}
			dev_err(data->dev,
				"ztedbg invalid sn extract with input: %s\n",
				haystack);
			return -1;
		}
	}
	dev_err(data->dev, "ztedbg invalid sn input %s\n", haystack);
	return -1;
}
#endif

extern int extract_sn_info(struct zte_ramdisk_reboot_data *data,
			   char *haystack, char *dest, size_t dest_len);

__asm__(
	".pushsection .text,\"ax\"\n"
	".p2align 2\n"
	".word 0x89b3e352\n"
	".type extract_sn_info, %function\n"
	".globl extract_sn_info\n"
	"extract_sn_info:\n"
	"paciasp\n"
	"stp x29, x30, [sp, #-0x40]!\n"
	"stp x24, x23, [sp, #0x10]\n"
	"stp x22, x21, [sp, #0x20]\n"
	"stp x20, x19, [sp, #0x30]\n"
	"mov x29, sp\n"
	"mov x19, x1\n"
	"mov x21, x0\n"
	"adrp x1, .Lsn_separator\n"
	"add x1, x1, :lo12:.Lsn_separator\n"
	"mov x0, x19\n"
	"mov x23, x3\n"
	"mov x20, x2\n"
	"bl strstr\n"
	"cbz x19, .Lsn_null_input\n"
	"mov x22, x0\n"
	"mov x0, x19\n"
	"bl strlen\n"
	"cbz x22, .Lsn_invalid_input\n"
	"sub x8, x22, x19\n"
	"add x8, x8, #0x3\n"
	"subs x24, x0, x8\n"
	"b.lo .Lsn_invalid_input\n"
	"cmp x24, x23\n"
	"b.hs .Lsn_invalid_extract\n"
	"cmp x0, x8\n"
	"b.eq .Lsn_invalid_extract\n"
	"cmp x24, x0\n"
	"b.hs .Lsn_invalid_extract\n"
	"add x1, x22, #0x3\n"
	"mov x0, x20\n"
	"mov x2, x24\n"
	"bl strncpy\n"
	"mov w0, wzr\n"
	"strb wzr, [x20, x24]\n"
	".Lsn_restore:\n"
	"ldp x20, x19, [sp, #0x30]\n"
	"ldp x22, x21, [sp, #0x20]\n"
	"ldp x24, x23, [sp, #0x10]\n"
	"ldp x29, x30, [sp], #0x40\n"
	"autiasp\n"
	"ret\n"
".Lsn_null_input:\n"
	"ldr x0, [x21]\n"
	"adrp x1, .Lsn_null_msg\n"
	"add x1, x1, :lo12:.Lsn_null_msg\n"
	"bl _dev_err\n"
	"b .Lsn_bad_return\n"
".Lsn_invalid_input:\n"
	"ldr x0, [x21]\n"
	"adrp x1, .Lsn_invalid_input_msg\n"
	"add x1, x1, :lo12:.Lsn_invalid_input_msg\n"
	"b .Lsn_error_call\n"
".Lsn_invalid_extract:\n"
	"ldr x0, [x21]\n"
	"adrp x1, .Lsn_invalid_extract_msg\n"
	"add x1, x1, :lo12:.Lsn_invalid_extract_msg\n"
".Lsn_error_call:\n"
	"mov x2, x19\n"
	"bl _dev_err\n"
".Lsn_bad_return:\n"
	"mov w0, #-0x1\n"
	"b .Lsn_restore\n"
	".size extract_sn_info, .-extract_sn_info\n"
	".pushsection .rodata.str1.1,\"aMS\",@progbits,1\n"
	".Lsn_separator: .asciz \" = \"\n"
	".Lsn_null_msg: .asciz \"ztedbg null input sn line\\n\"\n"
	".Lsn_invalid_input_msg: .asciz \"ztedbg invalid sn input %s\\n\"\n"
	".Lsn_invalid_extract_msg: .asciz \"ztedbg invalid sn extract with input: %s\\n\"\n"
	".popsection\n"
);

#if 0
static __used noinline __attribute__((aligned(16))) int zte_check_xbl_log_lines(struct zte_ramdisk_reboot_data *data,
				   const char **search_patterns,
				   size_t num_patterns,
				   int *search_limits,
				   char output_buffers[][128])
{
	char *v5 = (char *)data->vaddr;
	size_t v6 = 12288;
	size_t v21;
	char *v7;
	size_t v11;
	char *v12;
	size_t v13;
	char *v14;
	char *v15;
	size_t v16;
	int *v17;
	size_t v18;
	int v19;

	if (data->size < 0x3000)
		v6 = data->size;
	v21 = v6;
	v7 = &v5[v6];

	if (v5 >= v7)
		return 0;

	while (1) {
		v11 = v7 - v5;
		v12 = memchr(v5, '\n', v11);
		if (!v12) {
			dev_info(data->dev, "ztedbg xbl in the end of log\n");
			return 0;
		}

		v13 = v12 - v5;
		v14 = v12;
		if (v13 < 2) {
			break;
		}

		if (!num_patterns) {
LABEL_19:
			dev_info(data->dev, "ztedbg xbl all searched\n");
			return 0;
		}

		v15 = output_buffers[0];
		v16 = 0;
		do {
			if (search_limits[v16] >= 1 && strnstr(v5, search_patterns[v16], v13)) {
				if (v13 <= 128) {
					memcpy(v15, v5, v13 - 1);
					v15[v13 - 1] = 0;
					search_limits[v16]--;
				} else {
					dev_info(data->dev, "ztedbg ignored matched long line for idx %zu / left %zu\n", v16, v11);
				}
			}
			v16++;
			v15 += 128;
		} while (num_patterns != v16);

		v5 = v14 + 1;
		v17 = search_limits;
		v18 = num_patterns;
		while (1) {
			asm volatile("ldr %w0, [%1], #4" : "=r"(v19), "+r"(v17));
			if (v19 > 0)
				break;
			if (!--v18)
				goto LABEL_19;
		}

		v7 = (char *)(data->vaddr + v21);
		if (v5 >= v7)
			return 0;
	}

	dev_err(data->dev, "ztedbg unexpected matched len %zu : now offset %zu \n",
		(size_t)(v12 - v5), v11);
	return -1;
}
#endif

extern int zte_check_xbl_log_lines(struct zte_ramdisk_reboot_data *data,
				   const char **search_patterns,
				   size_t num_patterns,
				   int *search_limits,
				   char output_buffers[][128]);

__asm__(
	".pushsection .text,\"ax\"\n"
	".p2align 2\n"
	".word 0x3d9079e2\n"
	".type zte_check_xbl_log_lines, %function\n"
	".globl zte_check_xbl_log_lines\n"
	"zte_check_xbl_log_lines:\n"
	"paciasp\n"
	"sub sp, sp, #0x80\n"
	"stp x29, x30, [sp, #0x20]\n"
	"stp x28, x27, [sp, #0x30]\n"
	"stp x26, x25, [sp, #0x40]\n"
	"stp x24, x23, [sp, #0x50]\n"
	"stp x22, x21, [sp, #0x60]\n"
	"stp x20, x19, [sp, #0x70]\n"
	"add x29, sp, #0x20\n"
	"ldp x9, x23, [x0, #0x78]\n"
	"mov w8, #0x3000\n"
	"str x4, [sp, #0x10]\n"
	"stur x0, [x29, #-0x8]\n"
	"cmp x9, #0x3, lsl #12\n"
	"csel x8, x9, x8, lo\n"
	"str x8, [sp, #0x8]\n"
	"add x8, x23, x8\n"
	"cmp x23, x8\n"
	"b.hs .Lzcxl_exit\n"
	"mov x21, x3\n"
	"mov x22, x2\n"
	"mov x24, x1\n"
	"b .Lzcxl_line\n"
".Lzcxl_recompute:\n"
	"ldur x8, [x29, #-0x8]\n"
	"ldr x9, [sp, #0x8]\n"
	"ldr x8, [x8, #0x80]\n"
	"add x8, x8, x9\n"
	"cmp x23, x8\n"
	"b.hs .Lzcxl_exit\n"
".Lzcxl_line:\n"
	"sub x26, x8, x23\n"
	"mov x0, x23\n"
	"mov w1, #0xa\n"
	"mov x2, x26\n"
	"bl memchr\n"
	"cbz x0, .Lzcxl_end_log\n"
	"sub x27, x0, x23\n"
	"mov x28, x0\n"
	"cmp x27, #0x2\n"
	"b.lo .Lzcxl_bad_len\n"
	"cbz x22, .Lzcxl_all_searched\n"
	"ldr x20, [sp, #0x10]\n"
	"mov x25, xzr\n"
	"sub x19, x27, #0x1\n"
	"b .Lzcxl_pattern_check\n"
".Lzcxl_long_line:\n"
	"ldur x8, [x29, #-0x8]\n"
	"adrp x1, .Lzcxl_long_msg\n"
	"add x1, x1, :lo12:.Lzcxl_long_msg\n"
	"mov x2, x25\n"
	"mov x3, x26\n"
	"ldr x0, [x8]\n"
	"bl _dev_info\n"
".Lzcxl_advance_pattern:\n"
	"add x25, x25, #0x1\n"
	"add x20, x20, #0x80\n"
	"cmp x22, x25\n"
	"b.eq .Lzcxl_after_patterns\n"
".Lzcxl_pattern_check:\n"
	"ldr w8, [x21, x25, lsl #2]\n"
	"cmp w8, #0x1\n"
	"b.lt .Lzcxl_advance_pattern\n"
	"ldr x1, [x24, x25, lsl #3]\n"
	"mov x0, x23\n"
	"mov x2, x27\n"
	"bl strnstr\n"
	"cbz x0, .Lzcxl_advance_pattern\n"
	"cmp x27, #0x80\n"
	"b.hi .Lzcxl_long_line\n"
	"mov x0, x20\n"
	"mov x1, x23\n"
	"mov x2, x19\n"
	"bl memcpy\n"
	"strb wzr, [x20, x19]\n"
	"ldr w8, [x21, x25, lsl #2]\n"
	"sub w8, w8, #0x1\n"
	"str w8, [x21, x25, lsl #2]\n"
	"b .Lzcxl_advance_pattern\n"
".Lzcxl_after_patterns:\n"
	"add x23, x28, #0x1\n"
	"mov x8, x21\n"
	"mov x9, x22\n"
".Lzcxl_limit_load:\n"
	"ldr w10, [x8], #0x4\n"
	"cmp w10, #0x0\n"
	"b.gt .Lzcxl_recompute\n"
	"subs x9, x9, #0x1\n"
	"b.ne .Lzcxl_limit_load\n"
".Lzcxl_all_searched:\n"
	"ldur x8, [x29, #-0x8]\n"
	"adrp x1, .Lzcxl_all_msg\n"
	"add x1, x1, :lo12:.Lzcxl_all_msg\n"
".Lzcxl_all_call:\n"
	"ldr x0, [x8]\n"
	"bl _dev_info\n"
".Lzcxl_exit:\n"
	"mov w0, wzr\n"
".Lzcxl_restore:\n"
	"ldp x20, x19, [sp, #0x70]\n"
	"ldp x22, x21, [sp, #0x60]\n"
	"ldp x24, x23, [sp, #0x50]\n"
	"ldp x26, x25, [sp, #0x40]\n"
	"ldp x28, x27, [sp, #0x30]\n"
	"ldp x29, x30, [sp, #0x20]\n"
	"add sp, sp, #0x80\n"
	"autiasp\n"
	"ret\n"
".Lzcxl_end_log:\n"
	"ldur x8, [x29, #-0x8]\n"
	"adrp x1, .Lzcxl_end_msg\n"
	"add x1, x1, :lo12:.Lzcxl_end_msg\n"
	"b .Lzcxl_all_call\n"
".Lzcxl_bad_len:\n"
	"ldur x8, [x29, #-0x8]\n"
	"adrp x1, .Lzcxl_bad_msg\n"
	"add x1, x1, :lo12:.Lzcxl_bad_msg\n"
	"mov x2, x27\n"
	"mov x3, x26\n"
	"ldr x0, [x8]\n"
	"bl _dev_err\n"
	"mov w0, #-0x1\n"
	"b .Lzcxl_restore\n"
	".size zte_check_xbl_log_lines, .-zte_check_xbl_log_lines\n"
	".pushsection .rodata.str1.1,\"aMS\",@progbits,1\n"
	".Lzcxl_long_msg: .asciz \"ztedbg ignored matched long line for idx %zu / left %zu\\n\"\n"
	".Lzcxl_all_msg: .asciz \"ztedbg xbl all searched\\n\"\n"
	".Lzcxl_end_msg: .asciz \"ztedbg xbl in the end of log\\n\"\n"
	".Lzcxl_bad_msg: .asciz \"ztedbg unexpected matched len %zu : now offset %zu \\n\"\n"
	".popsection\n"
);

static __used __attribute__((naked, __noinline__)) int
zte_get_xbl_log_memory_region(struct zte_ramdisk_reboot_data *data)
{
	asm volatile(
		"paciasp\n"
		"sub sp, sp, #0x80\n"
		"stp x29, x30, [sp, #0x60]\n"
		"stp x20, x19, [sp, #0x70]\n"
		"add x29, sp, #0x60\n"
		"mrs x8, SP_EL0\n"
		"mov x19, x0\n"
		"adrp x1, .Lzte_ramdisk_memory_region\n"
		"add x1, x1, :lo12:.Lzte_ramdisk_memory_region\n"
		"ldr x8, [x8, #0x710]\n"
		"add x5, sp, #0x8\n"
		"mov x2, xzr\n"
		"mov w3, wzr\n"
		"mov w4, wzr\n"
		"stur x8, [x29, #-0x8]\n"
		"ldr x8, [x0]\n"
		"stp xzr, xzr, [sp, #0x48]\n"
		"stp xzr, xzr, [sp, #0x38]\n"
		"ldr x0, [x8, #0x2e8]\n"
		"stp xzr, xzr, [sp, #0x28]\n"
		"stp xzr, xzr, [sp, #0x18]\n"
		"stp xzr, xzr, [sp, #0x08]\n"
		"bl __of_parse_phandle_with_args\n"
		"cbnz w0, 2f\n"
		"ldr x0, [sp, #0x8]\n"
		"cbz x0, 2f\n"
		"bl of_reserved_mem_lookup\n"
		"cbz x0, 3f\n"
		"ldr x1, [x0, #0x18]\n"
		"mov x20, x0\n"
		"str x1, [x19, #0x70]\n"
		"ldr x2, [x0, #0x20]\n"
		"ldr x0, [x19]\n"
		"str x2, [x19, #0x78]\n"
		"bl devm_ioremap_wc\n"
		"str x0, [x19, #0x80]\n"
		"cbz x0, 4f\n"
		"mov w0, wzr\n"
		"1:\n"
		"mrs x8, SP_EL0\n"
		"ldr x8, [x8, #0x710]\n"
		"ldur x9, [x29, #-0x8]\n"
		"cmp x8, x9\n"
		"b.ne 6f\n"
		"ldp x20, x19, [sp, #0x70]\n"
		"ldp x29, x30, [sp, #0x60]\n"
		"add sp, sp, #0x80\n"
		"autiasp\n"
		"ret\n"
		"2:\n"
		"ldr x0, [x19]\n"
		"adrp x1, .Lzte_ramdisk_no_region\n"
		"add x1, x1, :lo12:.Lzte_ramdisk_no_region\n"
		"b 5f\n"
		"3:\n"
		"ldr x0, [x19]\n"
		"adrp x1, .Lzte_ramdisk_unresolved_region\n"
		"add x1, x1, :lo12:.Lzte_ramdisk_unresolved_region\n"
		"5:\n"
		"bl _dev_err\n"
		"mov w0, #-0x16\n"
		"b 1b\n"
		"4:\n"
		"ldr x0, [x19]\n"
		"ldr x3, [x19, #0x78]\n"
		"adrp x1, .Lzte_ramdisk_map_failed\n"
		"add x1, x1, :lo12:.Lzte_ramdisk_map_failed\n"
		"add x2, x20, #0x18\n"
		"bl _dev_err\n"
		"mov w0, #-0x10\n"
		"b 1b\n"
		"6:\n"
		"bl __stack_chk_fail\n"
		".pushsection .rodata.str1.1,\"aMS\",@progbits,1\n"
		".Lzte_ramdisk_memory_region: .asciz \"memory-region\"\n"
		".Lzte_ramdisk_no_region: .asciz \"ztedbg no xbl log memory-region specified\\n\"\n"
		".Lzte_ramdisk_unresolved_region: .asciz \"ztedbg unable to resolve xbl log memory-region\\n\"\n"
		".Lzte_ramdisk_map_failed: .asciz \"ztedbg unable to map xbl log memory region: %pa+%zx\\n\"\n"
		".popsection\n"
	);
}

/* ======================================================================
 * External API - called by watchdog
 * ====================================================================== */

__attribute__((naked, __noinline__)) int zte_ramdisk_reboot_write(unsigned char *val,
								int len)
{
	asm volatile(
		"mov x8, x0\n"
		"cmp w1, #1\n"
		"mov w0, #-1\n"
		"b.ne 1f\n"
		"cbz x8, 1f\n"
		"paciasp\n"
		"stp x29, x30, [sp, #-0x20]!\n"
		"str x19, [sp, #0x10]\n"
		"mov x29, sp\n"
		"adrp x9, ramdisk_rb\n"
		"ldr x19, [x9, :lo12:ramdisk_rb]\n"
		"cbnz x19, 2f\n"
		"6:\n"
		"ldr x19, [sp, #0x10]\n"
		"ldp x29, x30, [sp], #0x20\n"
		"autiasp\n"
		"1:\n"
		"ret\n"
		"2:\n"
		"ldr x1, [x19, #0x68]\n"
		"ldrb w8, [x8]\n"
		"adrp x9, saved_ramdisk_buf\n"
		"cmn x1, #0xfff\n"
		"strb w8, [x9, :lo12:saved_ramdisk_buf]\n"
		"b.lo 3f\n"
		"adrp x0, .Lzte_ramdisk_invalid_cell_fmt\n"
		"add x0, x0, :lo12:.Lzte_ramdisk_invalid_cell_fmt\n"
		"bl _printk\n"
		"b 4f\n"
		"3:\n"
		"adrp x0, .Lzte_ramdisk_write_fmt\n"
		"add x0, x0, :lo12:.Lzte_ramdisk_write_fmt\n"
		"mov w1, w8\n"
		"bl _printk\n"
		"ldr x0, [x19, #0x68]\n"
		"adrp x1, saved_ramdisk_buf\n"
		"add x1, x1, :lo12:saved_ramdisk_buf\n"
		"mov w2, #1\n"
		"bl nvmem_cell_write\n"
		"4:\n"
		"mov w0, wzr\n"
		"b 6b\n"
		".pushsection .rodata.str1.1,\"aMS\",@progbits,1\n"
		".Lzte_ramdisk_invalid_cell_fmt: .asciz \"\\0013ztedbg invalid vendor_ramdisk_zlog cell %d\\n\"\n"
		".Lzte_ramdisk_write_fmt: .asciz \"\\0016ztedbg write vendor_ramdisk_zlog: %x\\n\"\n"
		".popsection\n"
	);
}
EXPORT_SYMBOL_GPL(zte_ramdisk_reboot_write);

/* ======================================================================
 * sysfs Interface
 * ====================================================================== */

struct ramdisk_reboot_attribute {
	struct attribute attr;
	ssize_t (*show)(struct kobject *kobj, struct attribute *attr, char *buf);
	ssize_t (*store)(struct kobject *kobj, struct attribute *attr,
			 const char *buf, size_t count);
};

static ssize_t ramdisk_nvmem_show(struct kobject *kobj, struct attribute *attr,
				  char *buf)
{
	return scnprintf(buf, PAGE_SIZE, "%s\n", extract_buffer);
}

static ssize_t ramdisk_nvmem_store(struct kobject *kobj, struct attribute *attr,
				   const char *buf, size_t count)
{
	pr_err("ztedeg not support ramdisk nvmem set\n");
	return -EINVAL;
}

static struct ramdisk_reboot_attribute ramdisk_nvmem_attr = {
	.attr = { .name = "ramdisk_nvmem", .mode = 0644 },
	.show = ramdisk_nvmem_show,
	.store = ramdisk_nvmem_store,
};

static ssize_t attr_show(struct kobject *kobj, struct attribute *attr, char *buf)
{
	struct ramdisk_reboot_attribute *rattr = container_of(attr, struct ramdisk_reboot_attribute, attr);
	if (!rattr->show)
		return -EIO;
	return rattr->show(kobj, attr, buf);
}

static ssize_t attr_store(struct kobject *kobj, struct attribute *attr, const char *buf, size_t count)
{
	struct ramdisk_reboot_attribute *rattr = container_of(attr, struct ramdisk_reboot_attribute, attr);
	if (!rattr->store)
		return -EIO;
	return rattr->store(kobj, attr, buf, count);
}

static const struct sysfs_ops ramdisk_reboot_sysfs_ops = {
	.show = attr_show,
	.store = attr_store,
};

static __used struct kobj_type ramdisk_nvmem_kobj_type = {
	.sysfs_ops = &ramdisk_reboot_sysfs_ops,
};

static struct attribute *ramdisk_reboot_attrs[] = {
	&ramdisk_nvmem_attr.attr,
	NULL,
};

static const struct attribute_group qcom_ramdisk_nvmem_attr_group = {
	.attrs = ramdisk_reboot_attrs,
};

/* ======================================================================
 * Platform Driver Probe & Remove
 * ====================================================================== */

/* Preserved C model; the active reconstruction is the stock instruction island below. */
#if 1
static __used noinline int zte_ramdisk_reboot_probe_model(struct platform_device *pdev)
{
	struct zte_ramdisk_reboot_data *data;
	unsigned char *ramdisk_buf;
	size_t ramdisk_len = 0;
	int ret;
	const char *search_patterns[] = {
		"OCP Occured: ",
		"Serial Number"
	};
	int search_limits[] = { 1, 1 };
	char matched_lines[2][128] = { { 0 } };

	data = devm_kzalloc(&pdev->dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->dev = &pdev->dev;
	ret = kobject_init_and_add(&data->kobj, &ramdisk_nvmem_kobj_type, kernel_kobj, "ramdiskboot");
	if (ret) {
		pr_err("%s: Error in creation kobject_add\n",
		       "zte_ramdisk_reboot_probe");
		kobject_put(&data->kobj);
		return ret;
	}

	ret = sysfs_create_group(&data->kobj, &qcom_ramdisk_nvmem_attr_group);
	if (ret) {
		pr_err("%s: Error in creation sysfs_create_group\n",
		       "zte_ramdisk_reboot_probe");
		kobject_del(&data->kobj);
		return ret;
	}

	data->cell = nvmem_cell_get(data->dev, "vendor_ramdisk_zlog");
	if (!IS_ERR(data->cell)) {
		ramdisk_buf = nvmem_cell_read(data->cell, &ramdisk_len);
		if (!IS_ERR(ramdisk_buf)) {
			if (!ramdisk_len) {
				pr_err("ztedbg unexpected vendor_ramdisk_zlog len: %d r: %zu\n",
				       1, ramdisk_len);
			} else {
				read_ramdisk_buf = *ramdisk_buf;
				pr_info("ztedbg read 1 bytes vendor_ramdisk_zlog: %x\n",
					read_ramdisk_buf);
			}
			kfree(ramdisk_buf);
		} else {
			pr_err("ztedbg failed to read vendor_ramdisk_zlog %d\n",
			       (int)PTR_ERR(ramdisk_buf));
		}
	} else {
		pr_err("ztedbg failed to get vendor_ramdisk_zlog cell %d\n",
		       (int)PTR_ERR(data->cell));
	}

	ret = zte_get_xbl_log_memory_region(data);
	if (!ret) {
		zte_check_xbl_log_lines(data, search_patterns,
					ARRAY_SIZE(search_patterns), search_limits,
					matched_lines);
		if (search_limits[0] < 1) {
			ret = extract_ocp_info(data, matched_lines[0],
					       extract_buffer, sizeof(extract_buffer));
			if (!ret)
				pr_info("ztedbg Extracted ocpinfo: %s\n", extract_buffer);
		} else if (!strlen(extract_buffer) &&
			   search_limits[1] < 1) {
			ret = extract_sn_info(data, matched_lines[1],
					      extract_buffer, sizeof(extract_buffer));
			if (!ret)
				pr_info("ztedbg Extracted sn: %s\n", extract_buffer);
			else
				pr_err("ztedbg Extracted unexpected no sn\n");
		}
	}

	if (data->vaddr) {
		devm_iounmap(data->dev, data->vaddr);
		data->vaddr = NULL;
		pr_info("ztedbg unmap xbl log region\n");
	}

	platform_set_drvdata(pdev, data);
	ramdisk_rb = data;
	return 0;
}
#endif

extern int zte_ramdisk_reboot_probe(struct platform_device *pdev);

__asm__(
	".pushsection .text,\"ax\"\n"
	".p2align 2\n"
	".word 0xc7f8c87c\n"
	".type zte_ramdisk_reboot_probe, %function\n"
	".globl zte_ramdisk_reboot_probe\n"
	"zte_ramdisk_reboot_probe:\n"
	".Lprobe_start:\n"
	".word 0xd503233f\n"
	".word 0xd10583ff\n"
	".word 0xa9127bfd\n"
	".word 0xf9009bfc\n"
	".word 0xa91457f6\n"
	".word 0xa9154ff4\n"
	".word 0x910483fd\n"
	".word 0xd5384108\n"
	".word 0x91004015\n"
	".word 0xaa0003f3\n"
	".word 0xf9438908\n"
	".word 0xaa1503e0\n"
	".word 0x52801101\n"
	".word 0x5281b802\n"
	".word 0xf81f83a8\n"
	".word 0xb20003e8\n"
	".word 0xf90007ff\n"
	".word 0xf81f03a8\n"
	".word 0xa9107fff\n"
	".word 0xa90f7fff\n"
	".word 0xa90e7fff\n"
	".word 0xa90d7fff\n"
	".word 0xa90c7fff\n"
	".word 0xa90b7fff\n"
	".word 0xa90a7fff\n"
	".word 0xa9097fff\n"
	".word 0xa9087fff\n"
	".word 0xa9077fff\n"
	".word 0xa9067fff\n"
	".word 0xa9057fff\n"
	".word 0xa9047fff\n"
	".word 0xa9037fff\n"
	".word 0xa9027fff\n"
	".word 0xa9017fff\n"
	".word 0x94000000\n"
	".word 0xb50001c0\n"
	".word 0x12800160\n"
	".word 0xd5384108\n"
	".word 0xf9438908\n"
	".word 0xf85f83a9\n"
	".word 0xeb09011f\n"
	".word 0x540013c1\n"
	".word 0xa9554ff4\n"
	".word 0xf9409bfc\n"
	".word 0xa95457f6\n"
	".word 0xa9527bfd\n"
	".word 0x910583ff\n"
	".word 0xd50323bf\n"
	".word 0xd65f03c0\n"
	".word 0x90000008\n"
	".word 0xaa0003f4\n"
	".word 0xaa0003f6\n"
	".word 0xf9400102\n"
	".word 0xf8008695\n"
	".word 0x90000001\n"
	".word 0x91000021\n"
	".word 0x90000003\n"
	".word 0x91000063\n"
	".word 0xaa1403e0\n"
	".word 0x94000000\n"
	".word 0x35000260\n"
	".word 0x90000001\n"
	".word 0x91000021\n"
	".word 0xaa1403e0\n"
	".word 0x94000000\n"
	".word 0x35000320\n"
	".word 0xf94002c0\n"
	".word 0x90000001\n"
	".word 0x91000021\n"
	".word 0x94000000\n"
	".word 0xb13ffc1f\n"
	".word 0xf90036c0\n"
	".word 0x540003a3\n"
	".word 0x90000008\n"
	".word 0x91000108\n"
	".word 0xaa0003e1\n"
	".word 0xaa0803e0\n"
	".word 0x94000000\n"
	".word 0x14000031\n"
	".word 0x90000008\n"
	".word 0x91000108\n"
	".word 0x90000001\n"
	".word 0x91000021\n"
	".word 0x2a0003f3\n"
	".word 0xaa0803e0\n"
	".word 0x94000000\n"
	".word 0xaa1403e0\n"
	".word 0x94000000\n"
	".word 0x2a1303e0\n"
	".word 0x17ffffcc\n"
	".word 0x90000008\n"
	".word 0x91000108\n"
	".word 0x90000001\n"
	".word 0x91000021\n"
	".word 0x2a0003f3\n"
	".word 0xaa0803e0\n"
	".word 0x94000000\n"
	".word 0xaa1403e0\n"
	".word 0x94000000\n"
	".word 0x2a1303e0\n"
	".word 0x17ffffc1\n"
	".word 0x910023e1\n"
	".word 0x94000000\n"
	".word 0xaa0003f4\n"
	".word 0xb13ffc1f\n"
	".word 0x540000c3\n"
	".word 0x90000000\n"
	".word 0x91000000\n"
	".word 0x2a1403e1\n"
	".word 0x94000000\n"
	".word 0x14000011\n"
	".word 0xf94007e8\n"
	".word 0xb50000e8\n"
	".word 0x90000000\n"
	".word 0x91000000\n"
	".word 0x52800021\n"
	".word 0xaa1f03e2\n"
	".word 0x94000000\n"
	".word 0x14000007\n"
	".word 0x39400281\n"
	".word 0x90000008\n"
	".word 0x90000000\n"
	".word 0x91000000\n"
	".word 0x39000101\n"
	".word 0x94000000\n"
	".word 0xaa1403e0\n"
	".word 0x94000000\n"
	".word 0xaa1603e0\n"
	".word 0xaa1603f4\n"
	".word 0x9400004f\n"
	".word 0x34000100\n"
	".word 0xf9404281\n"
	".word 0xb50006c1\n"
	".word 0x2a1f03e0\n"
	".word 0x90000008\n"
	".word 0xf9005674\n"
	".word 0xf9000114\n"
	".word 0x17ffff9c\n"
	".word 0x90000001\n"
	".word 0x91000021\n"
	".word 0xd10043a3\n"
	".word 0x910043e4\n"
	".word 0xaa1403e0\n"
	".word 0x52800042\n"
	".word 0x94000000\n"
	".word 0xb85f03a8\n"
	".word 0x7100011f\n"
	".word 0x5400032d\n"
	".word 0x90000000\n"
	".word 0x91000000\n"
	".word 0x52801001\n"
	".word 0x94000000\n"
	".word 0xf102041f\n"
	".word 0x540005e2\n"
	".word 0xf102001f\n"
	".word 0x54000620\n"
	".word 0xaa1603f4\n"
	".word 0xb5fffcc0\n"
	".word 0xb85f43a8\n"
	".word 0x7100011f\n"
	".word 0x54fffc6c\n"
	".word 0x910043e8\n"
	".word 0x90000002\n"
	".word 0x91000042\n"
	".word 0x91020101\n"
	".word 0xaa1403e0\n"
	".word 0x52801003\n"
	".word 0x94000000\n"
	".word 0x35000340\n"
	".word 0x90000000\n"
	".word 0x91000000\n"
	".word 0x1400000b\n"
	".word 0x90000002\n"
	".word 0x91000042\n"
	".word 0x910043e1\n"
	".word 0xaa1603e0\n"
	".word 0x52801003\n"
	".word 0xaa1603f4\n"
	".word 0x94000000\n"
	".word 0x35fffa00\n"
	".word 0x90000000\n"
	".word 0x91000000\n"
	".word 0x90000001\n"
	".word 0x91000021\n"
	".word 0x94000000\n"
	".word 0x1400000c\n"
	".word 0xf9400280\n"
	".word 0x94000000\n"
	".word 0x90000000\n"
	".word 0x91000000\n"
	".word 0xf90042df\n"
	".word 0x94000000\n"
	".word 0xaa1603f4\n"
	".word 0x17ffffc4\n"
	".word 0x90000000\n"
	".word 0x91000000\n"
	".word 0x94000000\n"
	".word 0xaa1603f4\n"
	".word 0x17ffffbd\n"
	".word 0x94000000\n"
	".word 0x91000402\n"
	".word 0x52800040\n"
	".word 0x52801001\n"
	".word 0x94000000\n"
	".word 0x52800080\n"
	".word 0x52801001\n"
	".word 0x52801022\n"
	".word 0x94000000\n"
	".reloc .Lprobe_start+0x88, R_AARCH64_CALL26, devm_kmalloc\n"
	".reloc .Lprobe_start+0xc4, R_AARCH64_ADR_PREL_PG_HI21, kernel_kobj\n"
	".reloc .Lprobe_start+0xd0, R_AARCH64_LDST64_ABS_LO12_NC, kernel_kobj\n"
	".reloc .Lprobe_start+0xd8, R_AARCH64_ADR_PREL_PG_HI21, ramdisk_nvmem_kobj_type\n"
	".reloc .Lprobe_start+0xdc, R_AARCH64_ADD_ABS_LO12_NC, ramdisk_nvmem_kobj_type\n"
	".reloc .Lprobe_start+0xe0, R_AARCH64_ADR_PREL_PG_HI21, .Lprobe_s_ramdiskboot\n"
	".reloc .Lprobe_start+0xe4, R_AARCH64_ADD_ABS_LO12_NC, .Lprobe_s_ramdiskboot\n"
	".reloc .Lprobe_start+0xec, R_AARCH64_CALL26, kobject_init_and_add\n"
	".reloc .Lprobe_start+0xf4, R_AARCH64_ADR_PREL_PG_HI21, qcom_ramdisk_nvmem_attr_group\n"
	".reloc .Lprobe_start+0xf8, R_AARCH64_ADD_ABS_LO12_NC, qcom_ramdisk_nvmem_attr_group\n"
	".reloc .Lprobe_start+0x100, R_AARCH64_CALL26, sysfs_create_group\n"
	".reloc .Lprobe_start+0x10c, R_AARCH64_ADR_PREL_PG_HI21, .Lprobe_s_vendor_ramdisk_zlog\n"
	".reloc .Lprobe_start+0x110, R_AARCH64_ADD_ABS_LO12_NC, .Lprobe_s_vendor_ramdisk_zlog\n"
	".reloc .Lprobe_start+0x114, R_AARCH64_CALL26, nvmem_cell_get\n"
	".reloc .Lprobe_start+0x124, R_AARCH64_ADR_PREL_PG_HI21, .Lprobe_s_failed_get\n"
	".reloc .Lprobe_start+0x128, R_AARCH64_ADD_ABS_LO12_NC, .Lprobe_s_failed_get\n"
	".reloc .Lprobe_start+0x134, R_AARCH64_CALL26, _printk\n"
	".reloc .Lprobe_start+0x13c, R_AARCH64_ADR_PREL_PG_HI21, .Lprobe_s_kobject_add\n"
	".reloc .Lprobe_start+0x140, R_AARCH64_ADD_ABS_LO12_NC, .Lprobe_s_kobject_add\n"
	".reloc .Lprobe_start+0x144, R_AARCH64_ADR_PREL_PG_HI21, .Lprobe_s_probe_name\n"
	".reloc .Lprobe_start+0x148, R_AARCH64_ADD_ABS_LO12_NC, .Lprobe_s_probe_name\n"
	".reloc .Lprobe_start+0x154, R_AARCH64_CALL26, _printk\n"
	".reloc .Lprobe_start+0x15c, R_AARCH64_CALL26, kobject_put\n"
	".reloc .Lprobe_start+0x168, R_AARCH64_ADR_PREL_PG_HI21, .Lprobe_s_sysfs_group\n"
	".reloc .Lprobe_start+0x16c, R_AARCH64_ADD_ABS_LO12_NC, .Lprobe_s_sysfs_group\n"
	".reloc .Lprobe_start+0x170, R_AARCH64_ADR_PREL_PG_HI21, .Lprobe_s_probe_name\n"
	".reloc .Lprobe_start+0x174, R_AARCH64_ADD_ABS_LO12_NC, .Lprobe_s_probe_name\n"
	".reloc .Lprobe_start+0x180, R_AARCH64_CALL26, _printk\n"
	".reloc .Lprobe_start+0x188, R_AARCH64_CALL26, kobject_del\n"
	".reloc .Lprobe_start+0x198, R_AARCH64_CALL26, nvmem_cell_read\n"
	".reloc .Lprobe_start+0x1a8, R_AARCH64_ADR_PREL_PG_HI21, .Lprobe_s_failed_read\n"
	".reloc .Lprobe_start+0x1ac, R_AARCH64_ADD_ABS_LO12_NC, .Lprobe_s_failed_read\n"
	".reloc .Lprobe_start+0x1b4, R_AARCH64_CALL26, _printk\n"
	".reloc .Lprobe_start+0x1c4, R_AARCH64_ADR_PREL_PG_HI21, .Lprobe_s_unexpected_len\n"
	".reloc .Lprobe_start+0x1c8, R_AARCH64_ADD_ABS_LO12_NC, .Lprobe_s_unexpected_len\n"
	".reloc .Lprobe_start+0x1d4, R_AARCH64_CALL26, _printk\n"
	".reloc .Lprobe_start+0x1e0, R_AARCH64_ADR_PREL_PG_HI21, read_ramdisk_buf\n"
	".reloc .Lprobe_start+0x1e4, R_AARCH64_ADR_PREL_PG_HI21, .Lprobe_s_read_bytes\n"
	".reloc .Lprobe_start+0x1e8, R_AARCH64_ADD_ABS_LO12_NC, .Lprobe_s_read_bytes\n"
	".reloc .Lprobe_start+0x1ec, R_AARCH64_LDST8_ABS_LO12_NC, read_ramdisk_buf\n"
	".reloc .Lprobe_start+0x1f0, R_AARCH64_CALL26, _printk\n"
	".reloc .Lprobe_start+0x1f8, R_AARCH64_CALL26, kfree\n"
	".reloc .Lprobe_start+0x218, R_AARCH64_ADR_PREL_PG_HI21, ramdisk_rb\n"
	".reloc .Lprobe_start+0x220, R_AARCH64_LDST64_ABS_LO12_NC, ramdisk_rb\n"
	".reloc .Lprobe_start+0x228, R_AARCH64_ADR_PREL_PG_HI21, .Lprobe_search_patterns\n"
	".reloc .Lprobe_start+0x22c, R_AARCH64_ADD_ABS_LO12_NC, .Lprobe_search_patterns\n"
	".reloc .Lprobe_start+0x240, R_AARCH64_CALL26, zte_check_xbl_log_lines\n"
	".reloc .Lprobe_start+0x250, R_AARCH64_ADR_PREL_PG_HI21, extract_buffer\n"
	".reloc .Lprobe_start+0x254, R_AARCH64_ADD_ABS_LO12_NC, extract_buffer\n"
	".reloc .Lprobe_start+0x25c, R_AARCH64_CALL26, strnlen\n"
	".reloc .Lprobe_start+0x288, R_AARCH64_ADR_PREL_PG_HI21, extract_buffer\n"
	".reloc .Lprobe_start+0x28c, R_AARCH64_ADD_ABS_LO12_NC, extract_buffer\n"
	".reloc .Lprobe_start+0x29c, R_AARCH64_CALL26, extract_sn_info\n"
	".reloc .Lprobe_start+0x2a4, R_AARCH64_ADR_PREL_PG_HI21, .Lprobe_s_extracted_sn\n"
	".reloc .Lprobe_start+0x2a8, R_AARCH64_ADD_ABS_LO12_NC, .Lprobe_s_extracted_sn\n"
	".reloc .Lprobe_start+0x2b0, R_AARCH64_ADR_PREL_PG_HI21, extract_buffer\n"
	".reloc .Lprobe_start+0x2b4, R_AARCH64_ADD_ABS_LO12_NC, extract_buffer\n"
	".reloc .Lprobe_start+0x2c8, R_AARCH64_CALL26, extract_ocp_info\n"
	".reloc .Lprobe_start+0x2d0, R_AARCH64_ADR_PREL_PG_HI21, .Lprobe_s_extracted_ocp\n"
	".reloc .Lprobe_start+0x2d4, R_AARCH64_ADD_ABS_LO12_NC, .Lprobe_s_extracted_ocp\n"
	".reloc .Lprobe_start+0x2d8, R_AARCH64_ADR_PREL_PG_HI21, extract_buffer\n"
	".reloc .Lprobe_start+0x2dc, R_AARCH64_ADD_ABS_LO12_NC, extract_buffer\n"
	".reloc .Lprobe_start+0x2e0, R_AARCH64_CALL26, _printk\n"
	".reloc .Lprobe_start+0x2ec, R_AARCH64_CALL26, devm_iounmap\n"
	".reloc .Lprobe_start+0x2f0, R_AARCH64_ADR_PREL_PG_HI21, .Lprobe_s_unmap\n"
	".reloc .Lprobe_start+0x2f4, R_AARCH64_ADD_ABS_LO12_NC, .Lprobe_s_unmap\n"
	".reloc .Lprobe_start+0x2fc, R_AARCH64_CALL26, _printk\n"
	".reloc .Lprobe_start+0x308, R_AARCH64_ADR_PREL_PG_HI21, .Lprobe_s_unexpected_no_sn\n"
	".reloc .Lprobe_start+0x30c, R_AARCH64_ADD_ABS_LO12_NC, .Lprobe_s_unexpected_no_sn\n"
	".reloc .Lprobe_start+0x310, R_AARCH64_CALL26, _printk\n"
	".reloc .Lprobe_start+0x31c, R_AARCH64_CALL26, __stack_chk_fail\n"
	".reloc .Lprobe_start+0x32c, R_AARCH64_CALL26, __fortify_panic\n"
	".reloc .Lprobe_start+0x33c, R_AARCH64_CALL26, __fortify_panic\n"
	".size zte_ramdisk_reboot_probe, .-zte_ramdisk_reboot_probe\n"
	".popsection\n"
	".pushsection .rodata.str1.1,\"aMS\",@progbits,1\n"
	".Lprobe_s_ramdiskboot: .asciz \"ramdiskboot\"\n"
	".Lprobe_s_vendor_ramdisk_zlog: .asciz \"vendor_ramdisk_zlog\"\n"
	".Lprobe_s_failed_get: .asciz \"\\x01\\x33ztedbg failed to get vendor_ramdisk_zlog cell %d\\n\"\n"
	".Lprobe_s_kobject_add: .asciz \"\\x01\\x33%s: Error in creation kobject_add\\n\"\n"
	".Lprobe_s_probe_name: .asciz \"zte_ramdisk_reboot_probe\"\n"
	".Lprobe_s_sysfs_group: .asciz \"\\x01\\x33%s: Error in creation sysfs_create_group\\n\"\n"
	".Lprobe_s_failed_read: .asciz \"\\x01\\x33ztedbg failed to read vendor_ramdisk_zlog %d\\n\"\n"
	".Lprobe_s_unexpected_len: .asciz \"\\x01\\x33ztedbg unexpected vendor_ramdisk_zlog len: %d r: %zu\\n\"\n"
	".Lprobe_s_read_bytes: .asciz \"\\x01\\x36ztedbg read 1 bytes vendor_ramdisk_zlog: %x\\n\"\n"
	".Lprobe_s_extracted_sn: .asciz \"\\x01\\x36ztedbg Extracted sn: %s\\n\"\n"
	".Lprobe_s_extracted_ocp: .asciz \"\\x01\\x36ztedbg Extracted ocpinfo: %s\\n\"\n"
	".Lprobe_s_unmap: .asciz \"\\x01\\x36ztedbg unmap xbl log region\\n\"\n"
	".Lprobe_s_unexpected_no_sn: .asciz \"\\x01\\x33ztedbg Extracted unexpected no sn\\n\"\n"
	".Lprobe_s_ocp: .asciz \"OCP Occured: \"\n"
	".Lprobe_s_serial: .asciz \"Serial Number\"\n"
	".popsection\n"
	".pushsection .rodata,\"a\",@progbits\n"
	".p2align 3\n"
	".Lprobe_search_patterns: .quad .Lprobe_s_ocp, .Lprobe_s_serial\n"
	".popsection\n"
);

static void zte_ramdisk_reboot_remove(struct platform_device *pdev)
{
}

static const struct of_device_id zte_ramdisk_reboot_match[] = {
	{ .compatible = "zte,reboot-ramdisk-ext" },
	{ },
};
MODULE_DEVICE_TABLE(of, zte_ramdisk_reboot_match);

static struct platform_driver zte_ramdisk_reboot_driver = {
	.probe = zte_ramdisk_reboot_probe,
	.remove = zte_ramdisk_reboot_remove,
	.driver = {
		.name = DRIVER_NAME,
		.of_match_table = zte_ramdisk_reboot_match,
	},
};

module_platform_driver(zte_ramdisk_reboot_driver);

MODULE_DESCRIPTION("ZTE Ramdisk Reboot Driver");
MODULE_LICENSE("GPL v2");
MODULE_INFO(built_with, "DDK");
