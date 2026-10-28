// SPDX-License-Identifier: GPL-2.0-only
#include <linux/compiler.h>
#include "rdbg_reconstruction_layout.h"

extern irqreturn_t on_interrupt_from(int irq, void *dev_id);

/*
 * Temporary reconstruction data island. The stock symbols occupy these
 * offsets in .data; the callback pointer is test-only and keeps KCFI emitted
 * until rdbg_open is reconstructed. This layout is guarded by static_asserts.
 */
struct rdbg_module_storage g_rdbg_instance __used __attribute__((section(".data"))) = {
	.callback_test_anchor = on_interrupt_from,
};
