// SPDX-License-Identifier: GPL-2.0
#include <linux/delay.h>
#include <linux/kernel.h>
#include <linux/string.h>
#include <linux/types.h>
#include <asm/barrier.h>

#include "haptic_86938_internal.h"

struct aw_haptic;

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
};

struct aw_haptic {
	u8 reserved_000[0x5c8];
	struct aw_haptic_func *func;
	u8 reserved_5d0[0x38];
	u8 *rtp_data;
	struct richtap_fifo_node *rtp_fifo_head;
	u8 reserved_618[8];
	struct richtap_fifo_node * volatile rtp_ptr;
	u8 reserved_628[0x90];
	volatile s16 rtp_cnt;
	u8 reserved_6ba[2];
	u32 rtp_loop;
};

_Static_assert(__builtin_offsetof(struct aw_haptic, func) == 0x5c8,
	       "aw_haptic.func offset");
_Static_assert(__builtin_offsetof(struct aw_haptic, rtp_data) == 0x608,
	       "aw_haptic.rtp_data offset");
_Static_assert(__builtin_offsetof(struct aw_haptic, rtp_ptr) == 0x620,
	       "aw_haptic.rtp_ptr offset");
_Static_assert(__builtin_offsetof(struct aw_haptic, rtp_cnt) == 0x6b8,
	       "aw_haptic.rtp_cnt offset");
_Static_assert(__builtin_offsetof(struct aw_haptic, rtp_loop) == 0x6bc,
	       "aw_haptic.rtp_loop offset");
_Static_assert(__builtin_offsetof(struct richtap_fifo_node, next) == 0x8,
	       "Richtap FIFO next offset");
_Static_assert(__builtin_offsetof(struct richtap_fifo_node, payload) == 0x18,
	       "Richtap FIFO payload offset");
_Static_assert(__builtin_offsetof(struct aw_haptic_func, set_rtp_data) == 0xd0,
	       "Richtap callback offset");

bool richtap_update_fifo_data(struct aw_haptic *aw, u32 length)
{
	struct richtap_fifo_node *fifo;
	struct richtap_fifo_node *next_fifo = NULL;
	struct richtap_fifo_node *head;
	u32 copied = 0;
	u32 visited = 0;
	int retries = 3;

	if (!aw || length > HAPTIC_RICHTAP_RTP_BUFFER_BYTES || !aw->rtp_data)
		goto invalid_fifo;

	for (;;) {
		u8 state;

		head = READ_ONCE(aw->rtp_fifo_head);
		fifo = READ_ONCE(aw->rtp_ptr);
		if (!haptic_richtap_fifo_node_valid(head, fifo))
			goto invalid_fifo;
		state = smp_load_acquire(&fifo->state);
		if (state == (u8)'U') {
			s16 fifo_size = READ_ONCE(fifo->data_size);
			s16 fifo_count = READ_ONCE(aw->rtp_cnt);
			u32 remaining;
			u32 request_remaining;
			u32 take;

			if (fifo_size < 0 ||
			    (u32)fifo_size > HAPTIC_RICHTAP_FIFO_PAYLOAD_BYTES ||
			    fifo_count < 0 || fifo_count > fifo_size ||
			    copied > length)
				goto invalid_fifo;
			remaining = (u32)(fifo_size - fifo_count);
			request_remaining = length - copied;
			take = min(request_remaining, remaining);
			if (take < request_remaining) {
				next_fifo = READ_ONCE(fifo->next);
				if (!haptic_richtap_fifo_next_valid(head, fifo,
								    next_fifo))
					goto invalid_fifo;
			}
			if (take)
				memcpy(aw->rtp_data + copied,
				       &fifo->payload[fifo_count], take);
			copied += take;
			if (take == request_remaining) {
				WRITE_ONCE(aw->rtp_cnt,
					   (s16)(fifo_count + take));
				goto deliver;
			}

			WRITE_ONCE(fifo->data_size, 0);
			smp_store_release(&fifo->state, (u8)0xff);
			WRITE_ONCE(aw->rtp_cnt, 0);
			WRITE_ONCE(aw->rtp_ptr, next_fifo);
			if (++visited >= HAPTIC_RICHTAP_FIFO_NODE_COUNT)
				goto deliver;
		} else if (state == 0xaaU) {
			goto deliver;
		} else {
			if (retries < 1) {
				printk(KERN_INFO "invalid data\n");
				goto deliver;
			}
			retries--;
			usleep_range_state(1000, 1000, 2);
		}

		if ((copied >= length) || !READ_ONCE(aw->rtp_loop))
			goto deliver;
	}

deliver:
	aw->func->set_rtp_data(aw, aw->rtp_data, (u32)copied);
	return true;

invalid_fifo:
	haptic_lifetime_richtap_fifo_reset(aw);
	return false;
}
