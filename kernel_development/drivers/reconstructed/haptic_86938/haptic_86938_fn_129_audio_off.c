// SPDX-License-Identifier: GPL-2.0
#include <linux/list.h>
#include <linux/mutex.h>
#include <linux/printk.h>
#include <linux/slab.h>
#include <linux/types.h>

struct aw_haptic;

typedef void (*aw_haptic_u8_op_fn)(struct aw_haptic *haptic, u8 value);
typedef void (*aw_haptic_op_fn)(struct aw_haptic *haptic);

struct aw_haptic_audio_cmd {
	u64 opaque;
	struct list_head list;
};

void audio_off(struct aw_haptic *haptic)
{
	u8 *haptic_bytes = (u8 *)haptic;
	void *operations;
	struct mutex *lock = (struct mutex *)(haptic_bytes + 0x2f0);
	struct list_head *audio_list;
	struct aw_haptic_audio_cmd *command;
	struct aw_haptic_audio_cmd *next;
	aw_haptic_u8_op_fn set_mode;
	aw_haptic_op_fn stop;

	printk("\0016[%s][%04d]%s: enter\n", "haptic_hv", 0x765, __func__);
	mutex_lock(lock);

	operations = *(void **)(haptic_bytes + 0x5c8);
	set_mode = *(aw_haptic_u8_op_fn *)((u8 *)operations + 0x88);
	set_mode(haptic, 0x80);

	operations = *(void **)(haptic_bytes + 0x5c8);
	stop = *(aw_haptic_op_fn *)((u8 *)operations + 0x38);
	stop(haptic);

	audio_list = (struct list_head *)(haptic_bytes + 0x590);
	list_for_each_entry_safe_reverse(command, next, audio_list, list) {
		list_del(&command->list);
		kfree(command);
	}

	mutex_unlock(lock);
}
