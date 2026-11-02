/* SPDX-License-Identifier: GPL-2.0-only */
/* Contract fixture for the inline stock check-frame route 0x18. */

#include <stddef.h>
#include <stdint.h>

#define SYNA_CHECK_FRAME_OK 0
#define SYNA_CHECK_FRAME_EACCESS (-6)
#define SYNA_CHECK_FRAME_EINVAL (-22)
#define SYNA_CHECK_FRAME_ETIMEDOUT (-110)
#define SYNA_CHECK_FRAME_EFAULT (-52)

typedef int (*syna_check_frame_copy_from_user_fn)(uint32_t *timeout_ms,
						 const void *source);
typedef int (*syna_check_frame_wait_fn)(uint32_t timeout_ms);
typedef int (*syna_check_frame_copy_to_user_fn)(void *destination,
						 const uint32_t *pending_count);

struct syna_check_frame_190_18_context {
	uint8_t feature_flags;
	int32_t lifecycle_state;
	uint32_t pending_count;
	syna_check_frame_copy_from_user_fn copy_from_user;
	syna_check_frame_wait_fn wait_for_frame;
	syna_check_frame_copy_to_user_fn copy_to_user;
};

int32_t syna_cdev_ioctls_190_18_check_frame(
	struct syna_check_frame_190_18_context *context,
	void *user_count, const void *user_timeout, uint32_t request_length,
	uint32_t value_length)
{
	uint32_t timeout_ms = 0;
	int wait_result;

	if ((context->feature_flags & 1U) == 0U)
		return SYNA_CHECK_FRAME_EACCESS;
	if (context->lifecycle_state == 3)
		return SYNA_CHECK_FRAME_OK;
	if (request_length < 4U || value_length < 4U)
		return SYNA_CHECK_FRAME_EINVAL;
	if (context->copy_from_user(&timeout_ms, user_timeout) != 0)
		return SYNA_CHECK_FRAME_EFAULT;

	if (context->pending_count == 0U) {
		wait_result = context->wait_for_frame(timeout_ms);
		if (wait_result == 0)
			return SYNA_CHECK_FRAME_ETIMEDOUT;
	}
	if (context->pending_count == 0U)
		return SYNA_CHECK_FRAME_OK;
	if (context->copy_to_user(user_count, &context->pending_count) != 0)
		return SYNA_CHECK_FRAME_EFAULT;
	return SYNA_CHECK_FRAME_OK;
}
