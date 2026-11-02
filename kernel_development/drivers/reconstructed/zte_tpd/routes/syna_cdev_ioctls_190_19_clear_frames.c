/* SPDX-License-Identifier: GPL-2.0-only */
/* Contract fixture for the inline stock clear-frames route 0x19. */

#include <stddef.h>
#include <stdint.h>

struct syna_clear_frames_190_19_frame {
	void *payload;
};

typedef void (*syna_clear_frames_free_fn)(void *object);
typedef void (*syna_clear_frames_lock_fn)(void);
typedef void (*syna_clear_frames_restore_fn)(int enable);

struct syna_clear_frames_190_19_context {
	struct syna_clear_frames_190_19_frame **frames;
	uint32_t frame_count;
	uint32_t frame_capacity;
	uint32_t restore_threshold;
	uint8_t restore_blocked;
	syna_clear_frames_lock_fn lock;
	syna_clear_frames_lock_fn unlock;
	syna_clear_frames_free_fn free_object;
	syna_clear_frames_restore_fn restore;
};

int32_t syna_cdev_ioctls_190_19_clear_frames(
	struct syna_clear_frames_190_19_context *context)
{
	uint32_t index;
	uint32_t original_count = context->frame_count;

	context->lock();
	for (index = 0; index < original_count && index < context->frame_capacity;
	     index++) {
		struct syna_clear_frames_190_19_frame *frame = context->frames[index];

		context->frames[index] = NULL;
		if (frame == NULL)
			continue;
		if (frame->payload != NULL)
			context->free_object(frame->payload);
		context->free_object(frame);
		if (context->frame_count != 0U)
			context->frame_count--;
	}
	context->unlock();

	if (context->frame_count < context->restore_threshold &&
	    context->restore_blocked == 0U)
		context->restore(1);
	return 0;
}
