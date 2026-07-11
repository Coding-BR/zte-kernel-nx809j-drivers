/* SPDX-License-Identifier: GPL-2.0-only */
#ifndef _ZTE_IR_RECOVERED_LAYOUT_H
#define _ZTE_IR_RECOVERED_LAYOUT_H

#include <linux/build_bug.h>
#include <linux/list.h>
#include <linux/mutex.h>
#include <linux/spi/spi.h>
#include <linux/spinlock.h>
#include <linux/stddef.h>
#include <linux/types.h>

#define ZTE_IR_TX_WORD_CAPACITY        40000U
#define ZTE_IR_TX_BUFFER_BYTES         0x13880U
#define ZTE_IR_PRIVATE_DATA_SIZE       0x138e8U

/*
 * Recovered from zte_ir.ko SHA-256
 * b7a70d47bbdad67e184f968808b2c448172fc1ff16bb22e80b9beaa08d9641a1.
 *
 * Locking contract:
 * - buf_lock serializes construction and submission of tx_buf.
 * - spi_lock protects publication/invalidation of spi during remove.
 * - spi is not an RCU pointer in the stock binary; do not add __rcu unless the
 *   implementation also introduces a complete RCU lifetime protocol.
 * - reserved_13898 is intentionally unnamed because no stock instruction
 *   accesses it. Do not assign semantics without new evidence.
 */
struct zte_ir_recovered_device {
	dev_t devt;                              /* 0x00000, size 0x4 */
	u16 tx_buf[ZTE_IR_TX_WORD_CAPACITY];     /* 0x00004, size 0x13880 */
	u16 pattern_high;                        /* 0x13884, size 0x2 */
	u16 pattern_low;                         /* 0x13886, size 0x2 */
	u32 speed_hz;                            /* 0x13888, size 0x4 */
	u8 reserved_1388c[0x4];                 /* 0x1388c, pointer alignment */
	struct spi_device *spi;                  /* 0x13890, protected by spi_lock */
	u8 reserved_13898[0x8];                 /* 0x13898, semantics unknown */
	spinlock_t spi_lock;                     /* 0x138a0, size 0x4 */
	u8 reserved_138a4[0x4];                 /* 0x138a4, mutex alignment */
	struct mutex buf_lock;                   /* 0x138a8, size 0x30 */
	struct list_head device_entry;           /* 0x138d8, size 0x10 */
} __aligned(8);

static_assert(sizeof(dev_t) == 0x4);
static_assert(sizeof(spinlock_t) == 0x4);
static_assert(sizeof(struct mutex) == 0x30);
static_assert(sizeof(struct list_head) == 0x10);

static_assert(offsetof(struct zte_ir_recovered_device, devt) == 0x00000);
static_assert(offsetof(struct zte_ir_recovered_device, tx_buf) == 0x00004);
static_assert(offsetof(struct zte_ir_recovered_device, pattern_high) == 0x13884);
static_assert(offsetof(struct zte_ir_recovered_device, pattern_low) == 0x13886);
static_assert(offsetof(struct zte_ir_recovered_device, speed_hz) == 0x13888);
static_assert(offsetof(struct zte_ir_recovered_device, spi) == 0x13890);
static_assert(offsetof(struct zte_ir_recovered_device, reserved_13898) == 0x13898);
static_assert(offsetof(struct zte_ir_recovered_device, spi_lock) == 0x138a0);
static_assert(offsetof(struct zte_ir_recovered_device, buf_lock) == 0x138a8);
static_assert(offsetof(struct zte_ir_recovered_device, device_entry) == 0x138d8);
static_assert(sizeof(struct zte_ir_recovered_device) == ZTE_IR_PRIVATE_DATA_SIZE);

#endif /* _ZTE_IR_RECOVERED_LAYOUT_H */
