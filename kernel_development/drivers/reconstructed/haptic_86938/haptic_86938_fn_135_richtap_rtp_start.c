// SPDX-License-Identifier: GPL-2.0
/* Readable C semantic reference for richtap_rtp_start; Kbuild uses its verified exact assembly island. */
#include <linux/kernel.h>
#include <linux/mutex.h>
#include <linux/types.h>

struct aw_haptic;

typedef void (*aw_haptic_u8_op_fn)(struct aw_haptic *haptic, u8 value);
typedef void (*aw_haptic_op_fn)(struct aw_haptic *haptic);
typedef u8 (*aw_haptic_get_state_fn)(struct aw_haptic *haptic);

extern void usleep_range_state(unsigned long minimum, unsigned long maximum,
			       u32 state);

#define HAPTIC_OP(haptic, offset, type) \
	(*(type *)((char *)*(void **)((char *)(haptic) + 0x5c8) + (offset)))

bool richtap_rtp_start(struct aw_haptic *haptic)
{
	register struct aw_haptic *saved_haptic asm("x19") = haptic;
	register u32 global_state asm("w20");
	struct mutex *lock = (struct mutex *)((char *)saved_haptic + 0x2f0);

	mutex_lock(lock);
	HAPTIC_OP(saved_haptic, 0x98, aw_haptic_u8_op_fn)(saved_haptic, 2);
	HAPTIC_OP(saved_haptic, 0x60, aw_haptic_u8_op_fn)(saved_haptic, 1);
	usleep_range_state(2000, 2000, 2);

	{
		register int timeout asm("w21") = -200;

	poll_state:
		global_state = HAPTIC_OP(saved_haptic, 0x160,
					 aw_haptic_get_state_fn)(saved_haptic) & 0xf;
		if (global_state == 8)
			goto rtp_go;
		usleep_range_state(2000, 2500, 2);
		asm goto volatile("adds %w[count], %w[count], #1\n\t"
				  "b.lo %l[poll_state]"
				  : [count] "+r"(timeout) : : "cc"
				  : poll_state);
		printk(KERN_ERR
		       "[%s][%04d]%s: no RTP_GO! glb_state=0x08\n\n",
		       "haptic_hv", 0x509, __func__);
		HAPTIC_OP(saved_haptic, 0x38, aw_haptic_op_fn)(saved_haptic);
		goto unlock;

	rtp_go:
		printk(KERN_INFO "[%s][%04d]%s: RTP_GO! glb_state=0x08\n\n",
		       "haptic_hv", 0x4fd, __func__);
		usleep_range_state(2000, 2500, 2);
	}

	unlock:
	mutex_unlock(lock);
	return (global_state & 0xf) == 8;
}
