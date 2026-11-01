// SPDX-License-Identifier: GPL-2.0-only
#include <linux/completion.h>
#include <linux/interrupt.h>

/*
 * The stock IRQ callback completes the completion object at byte offset 0x08
 * in its dev_id record, then returns IRQ_HANDLED. The offset is corroborated
 * by the stock wait/request paths; see the function P-Code and assembly in
 * reverse_engineering/validation/reconstructed/rdbg/offline_static/.
 */
irqreturn_t on_interrupt_from(int irq, void *dev_id)
{
	complete((struct completion *)((char *)dev_id + 0x08));
	return IRQ_HANDLED;
}
