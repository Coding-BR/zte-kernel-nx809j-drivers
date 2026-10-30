// SPDX-License-Identifier: GPL-2.0-only
#include <linux/err.h>
#include <linux/errno.h>
#include <linux/kernel.h>
#include <linux/of.h>
#include <linux/of_device.h>
#include <linux/of_irq.h>
#include <linux/platform_device.h>
#include <linux/slab.h>
#include <linux/soc/qcom/smem_state.h>
#include <linux/string.h>

#include "rdbg_reconstruction_layout.h"

static const char rdbg_probe_format_out[] __used
	__attribute__((section(".rodata.str1.1"))) = "%s%d-out";
static const char rdbg_probe_format_in[] __used
	__attribute__((section(".rodata.str1.1"))) = "%s%d-in";

int rdbg_probe(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	register void *count_page asm("x26");
	register long current_count asm("x8");
	register int initial_count asm("w8");
	register unsigned long minor asm("x21");
	register long proc_info_offset asm("x27");
	register long data_offset asm("x22");
	register int err asm("w28");
	register void *gpio_ptr asm("x24");
	register const char *compatible_prefix asm("x23") =
		"qcom,smp2p-interrupt-rdbg-";
	register const char *proc_name asm("x25") = NULL;
	int max_len = strlen(compatible_prefix) + strlen("xx-out");
	register char *node_name asm("x19") =
		kcalloc(max_len, sizeof(char), GFP_KERNEL);

	if (!node_name) {
		goto set_enomem;
	}
	asm volatile("adrp %0, g_rdbg_instance+0x94"
		     : "=r"(count_page));
	asm volatile("ldr %w0, [%1, :lo12:g_rdbg_instance+0x94]"
		     : "=r"(initial_count) : "r"(count_page));
	if (initial_count > 0) {
		proc_info_offset = 0;
		minor = 0;
		data_offset = 0x50;
		asm volatile("" : "+r"(proc_info_offset), "+r"(minor),
			     "+r"(data_offset));
		asm volatile("" : "+r"(compatible_prefix));
		do {
		asm volatile("cmp %x0, #0x180\n\t"
			     "b.eq .Lrdbg_probe_trap_5512\n\t"
			     "b.eq .Lrdbg_probe_trap_1"
			     : : "r"(proc_info_offset) : "cc");
		asm volatile("adrp x8, proc_info\n\t"
			     "add x8, x8, :lo12:proc_info\n\t"
			     "ldr %0, [x8, %1]"
			     : "=&r"(proc_name)
			     : "r"(proc_info_offset)
			     : "x8", "memory");
		if (!proc_name)
			goto loop_continue;

		asm goto volatile("mov x0, %x[buffer]\n\t"
				  "mov w1, #0x20\n\t"
				  "adrp x2, %c[format]\n\t"
				  "add x2, x2, :lo12:%c[format]\n\t"
				  "mov x3, %x[prefix]\n\t"
				  "mov w4, %w[index]\n\t"
				  "bl snprintf\n\t"
				  "cmp w0, #0\n\t"
				  "b.le %l[snprintf_error]"
				  : : [buffer] "r"(node_name),
				      [prefix] "r"(compatible_prefix),
				      [index] "r"(minor),
				      [format] "i"(rdbg_probe_format_out)
				  : "x0", "x1", "x2", "x3", "x4", "x5", "x6",
				    "x7", "x8", "x9", "x10", "x11", "x12",
				    "x13", "x14", "x15", "x16", "x17",
				    "x30", "cc", "memory"
				  : snprintf_error);
		if (of_device_is_compatible(dev->of_node, node_name)) {
			asm volatile("adrp x8, g_rdbg_instance+0x98\n\t"
				     "ldr x28, [x8, :lo12:g_rdbg_instance+0x98]"
				     : : : "x8", "x28", "memory");
			asm goto("add x8, x28, x22\n\t"
				 "cmp x8, #0x10\n\t"
				 "b.eq %l[output_error]"
				 : : : "x8", "cc" : output_error);
			if (of_find_property(dev->of_node, "qcom,smem-states",
					     NULL)) {
				asm volatile("add %0, x28, x22"
					     : "=r"(gpio_ptr));
				asm volatile("" : "+r"(gpio_ptr));
				void *state = qcom_smem_state_get(
					dev, "rdbg-smp2p-out",
					(unsigned int *)((char *)gpio_ptr - 8));

				*(void **)gpio_ptr = state;
				if (IS_ERR_OR_NULL(state)) {
					pr_err("rdbg: failed get smem state\n");
					asm volatile("ldr %w0, [x28, x22]"
						     : "=r"(err) : : "memory");
					asm goto("cbz %w0, %l[input_name_stage]\n\t"
						 "b %l[output_error_log]"
						 : : "r"(err) : "cc"
						 : input_name_stage, output_error_log);
					__builtin_unreachable();
				}
			}
		}

input_name_stage:
		;
		asm goto volatile("mov x0, %x[buffer]\n\t"
				  "mov w1, #0x20\n\t"
				  "adrp x2, %c[format]\n\t"
				  "add x2, x2, :lo12:%c[format]\n\t"
				  "mov x3, %x[prefix]\n\t"
				  "mov w4, %w[index]\n\t"
				  "bl snprintf\n\t"
				  "cmp w0, #0\n\t"
				  "b.le %l[snprintf_error]"
				  : : [buffer] "r"(node_name),
				      [prefix] "r"(compatible_prefix),
				      [index] "r"(minor),
				      [format] "i"(rdbg_probe_format_in)
				  : "x0", "x1", "x2", "x3", "x4", "x5", "x6",
				    "x7", "x8", "x9", "x10", "x11", "x12",
				    "x13", "x14", "x15", "x16", "x17",
				    "x30", "cc", "memory"
				  : snprintf_error);
		if (of_device_is_compatible(dev->of_node, node_name)) {
			asm volatile("adrp x8, g_rdbg_instance+0x98\n\t"
				     "ldr x8, [x8, :lo12:g_rdbg_instance+0x98]\n\t"
				     "add x28, x8, x22"
				     : : : "x8", "x28", "memory");
			asm goto("subs %0, x28, #0x28\n\t"
				 "b.eq %l[input_error]"
				 : "=r"(gpio_ptr) : : "cc"
				 : input_error);
			int id = of_irq_get_byname(dev->of_node, "rdbg-smp2p-in");
			*(int *)gpio_ptr = id;
			asm volatile("" ::: "memory");
			asm volatile("stur %w0, [x28, #-0x24]"
				     : : "r"(id) : "memory");
		}
		goto loop_continue;

input_error:
		pr_err("register_smp2p_in failed for %s\n", proc_name);
loop_continue:
		asm volatile("ldrsw %0, [%4, :lo12:g_rdbg_instance+0x94]\n\t"
			     "add %1, %1, #1\n\t"
			     "add %2, %2, #0x18\n\t"
			     "add %3, %3, #0x1c8"
			     : "=r"(current_count), "+r"(minor),
			       "+r"(proc_info_offset), "+r"(data_offset)
			     : "r"(count_page));
		} while ((long)minor < current_count);
	}

	asm volatile("mov %w0, wzr" : "=r"(err));
	goto cleanup;
snprintf_error:
	pr_err("Error in snprintf\n");
	// The stock failure edge shares this errno assignment with allocation failure.
set_enomem:
	asm volatile("mov %w0, #-12" : "=r"(err));
cleanup:
	kfree(node_name);
	return err;
output_error:
	asm volatile("mov %w0, #-22" : "=r"(err) : : "memory");
output_error_log:
	pr_err("%s: register_smp2p_out failed for %s\n", __func__,
	       proc_name);
	asm goto("b %l[cleanup]\n\t"
		 ".Lrdbg_probe_trap_5512:\n\t"
		 "brk #0x5512\n\t"
		 ".Lrdbg_probe_trap_1:\n\t"
		 "brk #1"
		 : : : : cleanup);
	__builtin_unreachable();
}
