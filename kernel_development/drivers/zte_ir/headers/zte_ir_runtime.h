/* SPDX-License-Identifier: GPL-2.0-only */
#ifndef _ZTE_IR_HARDENED_RUNTIME_H
#define _ZTE_IR_HARDENED_RUNTIME_H

#include "zte_ir_layout.h"

/*
 * Hardened-only lifetime extension. The recovered stock prefix remains at
 * offset zero and byte-for-byte unchanged. users is protected by the global
 * zte_ir_device_list_lock. Removal takes that lock and stock.buf_lock before
 * setting removed; open reads it under the global lock, while write/ioctl read
 * it under stock.buf_lock. This follows the upstream spidev lifetime model
 * while preserving the stock private-layout prefix.
 */
struct zte_ir_runtime {
	struct zte_ir_recovered_device stock;     /* 0x00000 .. 0x138e7 */
	unsigned int users;                       /* 0x138e8 */
	bool removed;                             /* 0x138ec */
	u8 reserved_138ed[0x3];                  /* 0x138ed, alignment */
} __aligned(8);

static_assert(offsetof(struct zte_ir_runtime, stock) == 0x00000);
static_assert(offsetof(struct zte_ir_runtime, users) == 0x138e8);
static_assert(offsetof(struct zte_ir_runtime, removed) == 0x138ec);
static_assert(sizeof(struct zte_ir_runtime) == 0x138f0);

#endif /* _ZTE_IR_HARDENED_RUNTIME_H */
