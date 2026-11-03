// SPDX-License-Identifier: GPL-2.0
#include <linux/delay.h>
#include <linux/string.h>
#include <linux/types.h>
#include <linux/workqueue.h>
#include <asm/barrier.h>

#include "haptic_86938_internal.h"

struct aw_haptic;
struct work_struct;

struct richtap_fifo_node {
	u8 state;
	u8 reserved_01;
	s16 data_size;
	u32 reserved_04;
	struct richtap_fifo_node *next;
	u8 reserved_10[8];
	u8 payload[];
};

struct aw_haptic_func {
	u8 reserved_00[0xd0];
	void (*set_rtp_data)(struct aw_haptic *aw, u8 *data, u32 length);
	u8 reserved_d8[0x18];
	void (*irq_clear)(struct aw_haptic *aw);
	u8 reserved_f8[0x18];
	void (*set_rtp_aei)(struct aw_haptic *aw, u8 enable);
	u8 reserved_118[0x48];
	u8 (*get_glb_state)(struct aw_haptic *aw);
	u8 reserved_168[8];
	u8 (*rtp_get_fifo_afs)(struct aw_haptic *aw);
};

struct aw_haptic {
	u8 reserved_000[0x11];
	u8 field_11;
	u8 reserved_012[5];
	u8 field_17;
	u8 reserved_018[0x440];
	u32 rtp_len;
	u8 reserved_45c[0x16c];
	struct aw_haptic_func *func;
	u8 reserved_5d0[0x38];
	u8 *rtp_data;
	struct richtap_fifo_node *rtp_fifo_head;
	u8 reserved_618[8];
	struct richtap_fifo_node *rtp_ptr;
	u8 reserved_628[0x20];
	u8 rtp_work_storage[0x70];
	volatile s16 rtp_cnt;
	u16 reserved_6ba;
	volatile u32 rtp_loop;
	volatile u32 rtp_work_state;
};

_Static_assert(__builtin_offsetof(struct richtap_fifo_node, data_size) == 0x2,
	       "Richtap FIFO size offset");
_Static_assert(__builtin_offsetof(struct richtap_fifo_node, next) == 0x8,
	       "Richtap FIFO next offset");
_Static_assert(__builtin_offsetof(struct richtap_fifo_node, payload) == 0x18,
	       "Richtap FIFO payload offset");
_Static_assert(__builtin_offsetof(struct aw_haptic_func, set_rtp_data) == 0xd0,
	       "set_rtp_data callback offset");
_Static_assert(__builtin_offsetof(struct aw_haptic_func, irq_clear) == 0xf0,
	       "irq_clear callback offset");
_Static_assert(__builtin_offsetof(struct aw_haptic_func, set_rtp_aei) == 0x110,
	       "set_rtp_aei callback offset");
_Static_assert(__builtin_offsetof(struct aw_haptic_func, get_glb_state) == 0x160,
	       "get_glb_state callback offset");
_Static_assert(__builtin_offsetof(struct aw_haptic_func, rtp_get_fifo_afs) == 0x170,
	       "rtp_get_fifo_afs callback offset");
_Static_assert(__builtin_offsetof(struct aw_haptic, field_11) == 0x11,
	       "Richtap state flag offset");
_Static_assert(__builtin_offsetof(struct aw_haptic, field_17) == 0x17,
	       "Richtap mode offset");
_Static_assert(__builtin_offsetof(struct aw_haptic, rtp_len) == 0x458,
	       "RTP length offset");
_Static_assert(__builtin_offsetof(struct aw_haptic, func) == 0x5c8,
	       "function table offset");
_Static_assert(__builtin_offsetof(struct aw_haptic, rtp_data) == 0x608,
	       "RTP buffer offset");
_Static_assert(__builtin_offsetof(struct aw_haptic, rtp_fifo_head) == 0x610,
	       "RTP FIFO head offset");
_Static_assert(__builtin_offsetof(struct aw_haptic, rtp_ptr) == 0x620,
	       "RTP FIFO cursor offset");
_Static_assert(__builtin_offsetof(struct aw_haptic, rtp_work_storage) == 0x648,
	       "RTP work item offset");
_Static_assert(__builtin_offsetof(struct aw_haptic, rtp_loop) == 0x6bc,
	       "RTP loop flag offset");
_Static_assert(__builtin_offsetof(struct aw_haptic, rtp_work_state) == 0x6c0,
	       "RTP work state offset");

extern u32 richtap_rtp_start(struct aw_haptic *aw);
extern bool richtap_update_fifo_data(struct aw_haptic *aw, u32 length);

#define WORK_FIELD(type, offset) \
	(*(type *)(work_base + (offset)))
#define RTP_LENGTH (*rtp_len_ptr)
#define RTP_DATA WORK_FIELD(u8 *, -0x40)
#define RTP_HEAD WORK_FIELD(struct richtap_fifo_node *, -0x38)
#define RTP_CURSOR WORK_FIELD(struct richtap_fifo_node *, -0x28)
#define RTP_COUNT WORK_FIELD(volatile s16, 0x70)
#define RTP_LOOP WORK_FIELD(volatile u32, 0x74)
#define RICHTAP_FIELD_11 WORK_FIELD(u8, -0x637)
#define RICHTAP_FIELD_17 WORK_FIELD(u8, -0x631)
#define RICHTAP_FUNC(member) \
	(WORK_FIELD(struct aw_haptic_func *, -0x80)->member)

void richtap_rtp_work(struct work_struct *work)
{
    if (haptic_lifetime_is_shutting_down())
        return;

    /* AEI masking does not drain an IRQ thread already updating the FIFO. */
    haptic_lifetime_irq_stop_lock();
    if (haptic_lifetime_is_shutting_down()) {
        haptic_lifetime_irq_stop_unlock();
        return;
    }

#if defined(__aarch64__)
	register char *work_base asm("x19");
	register struct aw_haptic *aw asm("x20");
	register u32 copied asm("w21");
	register u32 *rtp_len_ptr asm("x22");
	register u32 retries asm("w23");
	register u32 drained_state asm("w24");

	asm volatile("str wzr, [x0, #0x78]\n\t"
		     "mov x19, x0\n\t"
		     "mov w21, wzr\n\t"
		     "ldur x8, [x0, #-0x38]\n\t"
		     "mov w23, wzr\n\t"
		     "sub x20, x0, #0x648\n\t"
		     "sub x22, x0, #0x1f0\n\t"
		     "mov w24, #0xff\n\t"
		     "stur x8, [x0, #-0x28]"
		     : [work_base] "=r"(work_base), [aw] "=r"(aw),
		       [copied] "=r"(copied), [rtp_len_ptr] "=r"(rtp_len_ptr),
		       [retries] "=r"(retries),
		       [drained_state] "=r"(drained_state)
		     :
		     : "x8", "cc", "memory");

#else
	char *work_base = (char *)work;
	struct aw_haptic *aw =
		(struct aw_haptic *)((char *)work - 0x648);
	u32 copied = 0;
	u32 *rtp_len_ptr = (u32 *)(work_base - 0x1f0);
	u32 retries = 0;
	u32 drained_state = 0xff;

	*(u32 *)(work_base + 0x78) = 0;
	*(struct richtap_fifo_node **)(work_base - 0x28) =
		*(struct richtap_fifo_node **)(work_base - 0x38);
#endif
	haptic_lifetime_irq_stop_unlock();
	u8 state;

	/* IRQ and worker share the FIFO cursor; release the lock before polling. */
	for (;;) {
		haptic_lifetime_irq_stop_lock();
		if (haptic_lifetime_is_shutting_down()) {
			haptic_lifetime_irq_stop_unlock();
			return;
		}
		if (!haptic_richtap_fifo_node_valid(RTP_HEAD, RTP_CURSOR) ||
		    RTP_LENGTH > HAPTIC_RICHTAP_RTP_BUFFER_BYTES ||
		    !RTP_DATA) {
			haptic_lifetime_richtap_fifo_reset(aw);
			haptic_lifetime_irq_stop_unlock();
			return;
		}
		state = READ_ONCE(RTP_CURSOR->state);
		if (state == (u8)'U') {
			struct richtap_fifo_node *fifo = RTP_CURSOR;
			s32 node_size = READ_ONCE(fifo->data_size);
			u32 remaining;

			if (node_size < 0 ||
			    node_size > HAPTIC_RICHTAP_FIFO_PAYLOAD_BYTES ||
			    copied > RTP_LENGTH) {
				haptic_lifetime_richtap_fifo_reset(aw);
				haptic_lifetime_irq_stop_unlock();
				return;
			}
			remaining = RTP_LENGTH - copied;

			if ((u32)node_size <= remaining) {
				struct richtap_fifo_node *next_fifo =
					READ_ONCE(fifo->next);

				if (!haptic_richtap_fifo_next_valid(RTP_HEAD, fifo,
								    next_fifo)) {
					haptic_lifetime_richtap_fifo_reset(aw);
					haptic_lifetime_irq_stop_unlock();
					return;
				}
				if (node_size)
					memcpy(RTP_DATA + copied, fifo->payload,
					       (size_t)node_size);
				WRITE_ONCE(fifo->data_size, 0);
				smp_store_release(&fifo->state, (u8)drained_state);
				copied += (u32)node_size;
				WRITE_ONCE(RTP_COUNT, 0);
				WRITE_ONCE(RTP_CURSOR, next_fifo);
			} else {
				if (remaining)
					memcpy(RTP_DATA + copied, fifo->payload,
					       (size_t)remaining);
				WRITE_ONCE(RTP_COUNT, (s16)remaining);
				copied = RTP_LENGTH;
			}
		} else if (state == 0xaaU) {
			haptic_lifetime_irq_stop_unlock();
			break;
		} else {
			haptic_lifetime_irq_stop_unlock();
			msleep(1);
			if (copied >= RTP_LENGTH)
				break;
			if (retries++ >= 30U)
				break;
			continue;
		}

		if (copied >= RTP_LENGTH) {
			haptic_lifetime_irq_stop_unlock();
			break;
		}
		if (retries++ >= 30U) {
			haptic_lifetime_irq_stop_unlock();
			break;
		}
		haptic_lifetime_irq_stop_unlock();
	}

	haptic_lifetime_irq_stop_lock();
	if (haptic_lifetime_is_shutting_down()) {
		haptic_lifetime_irq_stop_unlock();
		return;
	}
	if ((richtap_rtp_start(aw) & 1U) == 0U) {
		haptic_lifetime_irq_stop_unlock();
		return;
	}

	RICHTAP_FUNC(set_rtp_data)(aw, RTP_DATA, copied);
	if (RICHTAP_FIELD_11 == 1U) {
		WRITE_ONCE(RTP_LOOP, 1U);
		for (;;) {
			if (!haptic_richtap_fifo_node_valid(RTP_HEAD, RTP_CURSOR)) {
				haptic_lifetime_richtap_fifo_reset(aw);
				RICHTAP_FUNC(set_rtp_aei)(aw, 0U);
				RICHTAP_FUNC(irq_clear)(aw);
				haptic_lifetime_irq_stop_unlock();
				return;
			}
			if (RICHTAP_FUNC(rtp_get_fifo_afs)(aw) != 0U ||
			    RICHTAP_FIELD_17 != 2U ||
			    READ_ONCE(RTP_CURSOR->state) != (u8)'U')
				break;

			if (!richtap_update_fifo_data(aw, RTP_LENGTH >> 2)) {
				RICHTAP_FUNC(set_rtp_aei)(aw, 0U);
				RICHTAP_FUNC(irq_clear)(aw);
				haptic_lifetime_irq_stop_unlock();
				return;
			}
			if ((RICHTAP_FUNC(get_glb_state)(aw) & 0xfU) == 0U)
				break;
		}
		RICHTAP_FUNC(irq_clear)(aw);
		RICHTAP_FUNC(set_rtp_aei)(aw, 1U);
	} else {
		RICHTAP_FUNC(set_rtp_aei)(aw, 1U);
		RICHTAP_FUNC(irq_clear)(aw);
		WRITE_ONCE(RTP_LOOP, 1U);
	}
	haptic_lifetime_irq_stop_unlock();
}
