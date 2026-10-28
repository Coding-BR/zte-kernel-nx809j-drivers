// SPDX-License-Identifier: GPL-2.0-only
#include <linux/interrupt.h>

/* Test-only reference: the completed rdbg_open() implementation will take
 * this callback's address. This temporary anchor keeps KCFI emission enabled
 * while validating the IRQ microtask in isolation.
 */
extern irqreturn_t on_interrupt_from(int irq, void *dev_id);
irq_handler_t __used rdbg_irq_microtask_anchor = on_interrupt_from;
