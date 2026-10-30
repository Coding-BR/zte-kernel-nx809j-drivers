/* SPDX-License-Identifier: GPL-2.0-only */
/* Contract fixture for the inline stock get-frame route 0x15. */

#include <stddef.h>
#include <stdint.h>

#define SYNA_GET_FRAME_EACCESS (-6)
#define SYNA_GET_FRAME_OK 0
#define SYNA_GET_FRAME_EINVAL (-22)
#define SYNA_GET_FRAME_ETIMEDOUT (-110)
#define SYNA_GET_FRAME_ENODATA (-61)
#define SYNA_GET_FRAME_EOVERFLOW (-75)
#define SYNA_GET_FRAME_EFAULT (-52)

struct syna_get_frame_190_15_frame {
	const void *payload;
	uint32_t length;
};

typedef int (*syna_get_frame_copy_from_user_fn)(uint32_t *timeout_ms,
						const void *user_timeout);
typedef int (*syna_get_frame_wait_fn)(uint32_t timeout_ms);
typedef int (*syna_get_frame_copy_to_user_fn)(void *user_buffer,
						const void *payload, uint32_t length);
typedef void (*syna_get_frame_lock_fn)(void);
typedef void (*syna_get_frame_unlock_fn)(void);
typedef void (*syna_get_frame_release_fn)(struct syna_get_frame_190_15_frame *frame);

struct syna_get_frame_190_15_context {
	uint8_t feature_flags;
	int32_t lifecycle_state;
	uint32_t user_capacity;
	struct syna_get_frame_190_15_frame *frame;
	syna_get_frame_copy_from_user_fn copy_from_user;
	syna_get_frame_wait_fn wait_for_frame;
	syna_get_frame_copy_to_user_fn copy_to_user;
	syna_get_frame_lock_fn lock;
	syna_get_frame_unlock_fn unlock;
	syna_get_frame_release_fn release;
};

int32_t syna_cdev_ioctls_190_15_get_frame(
	struct syna_get_frame_190_15_context *context,
	void *user_buffer, const void *user_timeout, uint32_t request_length)
{
	uint32_t timeout_ms = 0;
	uint32_t frame_length;
	struct syna_get_frame_190_15_frame *frame;
	int wait_result;

	if ((context->feature_flags & 1U) == 0U)
		return SYNA_GET_FRAME_EACCESS;
	if (context->lifecycle_state == 3)
		return SYNA_GET_FRAME_OK;
	if (request_length < 4U)
		return SYNA_GET_FRAME_EINVAL;
	if (context->copy_from_user(&timeout_ms, user_timeout) != 0)
		return SYNA_GET_FRAME_EFAULT;

	if (context->frame == NULL) {
		wait_result = context->wait_for_frame(timeout_ms);
		if (wait_result == 0)
			return SYNA_GET_FRAME_ETIMEDOUT;
	}

	frame = context->frame;
	if (frame == NULL)
		return SYNA_GET_FRAME_ENODATA;
	frame_length = frame->length;
	if (frame_length > context->user_capacity)
		return SYNA_GET_FRAME_EOVERFLOW;

	context->lock();
	if (context->copy_to_user(user_buffer, frame->payload, frame_length) != 0) {
		context->unlock();
		context->release(frame);
		return SYNA_GET_FRAME_EFAULT;
	}
	context->unlock();
	context->release(frame);
	return (int32_t)frame_length;
}
