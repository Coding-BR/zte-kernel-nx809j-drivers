// SPDX-License-Identifier: GPL-2.0
#include <linux/delay.h>
#include <linux/kernel.h>
#include <linux/string.h>
#include <linux/types.h>

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
	u8 reserved_610[0x10];
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

void richtap_update_fifo_data(struct aw_haptic *aw, u32 length)
{
	struct richtap_fifo_node *fifo;
	struct richtap_fifo_node *next_fifo;
	size_t remaining;
	u32 remaining_u32;
	int copied = 0;
	int retries = 3;

	for (;;) {
		fifo = aw->rtp_ptr;
		if (fifo->state == (u8)'U') {
			s16 fifo_size = fifo->data_size;
			s16 fifo_count = aw->rtp_cnt;
			remaining = (long)fifo_size - (long)fifo_count;
			remaining_u32 = (u32)remaining;
#if defined(__aarch64__)
			register unsigned long count_register asm("x9") =
				(unsigned long)(long)fifo_count;
			register long destination_offset asm("x8");
			asm volatile("sxtw %0, %w2\n\t"
				      "and %w1, %w1, #0xffff // %x3"
				      : "=r"(destination_offset), "+r"(count_register)
				      : "r"(copied), "r"(remaining)
				      : "cc");
			unsigned long fifo_offset = count_register;
#else
			long destination_offset = (long)copied;
			unsigned long fifo_offset = (u16)fifo_count;
#endif

			if (length <= remaining_u32) {
				if ((u32)fifo_offset > 1000U)
					goto bounds_failure;
				u16 copy_offset = (u16)aw->rtp_cnt;
				if (copy_offset > 1000U)
					goto bounds_failure;
				fifo = aw->rtp_ptr;
				memcpy(aw->rtp_data + destination_offset,
				       &fifo->payload[copy_offset], length);
				copied += length;
				aw->rtp_cnt = (s16)(aw->rtp_cnt + (s16)length);
				goto deliver;
			}

#if defined(__aarch64__)
			asm goto("cmp %w0, #1001\n\t"
				 "b.hs %l[bounds_failure]"
				 : : "r"(fifo_offset) : "cc" : bounds_failure);
#else
			if (fifo_offset >= 1001UL)
				goto bounds_failure;
#endif
			u16 copy_offset = (u16)aw->rtp_cnt;
			if (copy_offset > 1000U)
				goto bounds_failure;
			fifo = aw->rtp_ptr;
			memcpy(aw->rtp_data + destination_offset,
			       &fifo->payload[copy_offset], remaining);
			copied += remaining_u32;
			length -= remaining_u32;
			aw->rtp_ptr->state = 0xffU;
			aw->rtp_ptr->data_size = 0;
			next_fifo = aw->rtp_ptr->next;
			aw->rtp_cnt = 0;
			aw->rtp_ptr = next_fifo;
		} else if (fifo->state == 0xaaU) {
			goto deliver;
		} else {
			if (retries < 1) {
				printk(KERN_INFO "invalid data\n");
				goto deliver;
			}
			retries--;
			usleep_range_state(1000, 1000, 2);
		}

		if ((length == 0U) || (aw->rtp_loop == 0U))
			goto deliver;
	}

deliver:
	aw->func->set_rtp_data(aw, aw->rtp_data, (u32)copied);
	return;

bounds_failure:
#if defined(__aarch64__)
	asm volatile("brk #0x5512");
	__builtin_unreachable();
#else
	__builtin_trap();
#endif
}
