/* SPDX-License-Identifier: GPL-2.0-only */
/* Contract fixture for the inline stock set-queued-types route 0x17. */

#include <stddef.h>
#include <stdint.h>

#define SYNA_SET_QUEUED_TYPES_OK 0
#define SYNA_SET_QUEUED_TYPES_EINVAL (-22)
#define SYNA_SET_QUEUED_TYPES_EFAULT (-52)
#define SYNA_SET_QUEUED_TYPES_BITMAP_SIZE 256U

typedef int (*syna_set_queued_types_copy_fn)(uint8_t *destination,
						const void *source, size_t length);
typedef int (*syna_set_queued_types_register_fn)(uint32_t report_type);

struct syna_set_queued_types_190_17_context {
	int32_t lifecycle_state;
	uint32_t declared_capacity;
	uint8_t report_types[SYNA_SET_QUEUED_TYPES_BITMAP_SIZE];
	syna_set_queued_types_copy_fn copy_from_user;
	syna_set_queued_types_register_fn register_type;
};

int32_t syna_cdev_ioctls_190_17_set_queued_types(
	struct syna_set_queued_types_190_17_context *context,
	const void *user_bitmap, uint32_t bitmap_length)
{
	uint32_t report_type;

	if (context->lifecycle_state == 3)
		return SYNA_SET_QUEUED_TYPES_OK;
	if (context->declared_capacity <= 0xffU || bitmap_length == 0U ||
	    bitmap_length > SYNA_SET_QUEUED_TYPES_BITMAP_SIZE)
		return SYNA_SET_QUEUED_TYPES_EINVAL;

	for (report_type = 0; report_type < SYNA_SET_QUEUED_TYPES_BITMAP_SIZE;
	     report_type++)
		context->report_types[report_type] = 0;
	if (context->copy_from_user(context->report_types, user_bitmap,
					bitmap_length) != 0) {
		for (report_type = 0; report_type < SYNA_SET_QUEUED_TYPES_BITMAP_SIZE;
		     report_type++)
			context->report_types[report_type] = 0;
		return SYNA_SET_QUEUED_TYPES_EFAULT;
	}

	for (report_type = 0; report_type < SYNA_SET_QUEUED_TYPES_BITMAP_SIZE;
	     report_type++) {
		int result;

		if (context->report_types[report_type] != 1U)
			continue;
		result = context->register_type(report_type);
		if (result < 0)
			return result;
	}
	return SYNA_SET_QUEUED_TYPES_OK;
}
