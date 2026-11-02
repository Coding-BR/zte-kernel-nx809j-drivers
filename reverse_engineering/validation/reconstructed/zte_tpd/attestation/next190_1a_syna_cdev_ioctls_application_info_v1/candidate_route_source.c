/* SPDX-License-Identifier: GPL-2.0-only */
/* Contract fixture for the inline stock application-info route 0x1a. */

#include <stddef.h>
#include <stdint.h>

#define SYNA_APPLICATION_INFO_OK 0
#define SYNA_APPLICATION_INFO_ENXIO (-6)
#define SYNA_APPLICATION_INFO_ENOMEM (-12)
#define SYNA_APPLICATION_INFO_EINVAL (-22)
#define SYNA_APPLICATION_INFO_ECOPY (-52)

struct syna_application_info_190_1a_request {
	uint32_t requested_size;
	uint32_t capacity;
	const uint8_t *user_buffer;
};

typedef uint8_t *(*syna_application_info_alloc_fn)(uint32_t size);
typedef void (*syna_application_info_free_fn)(uint8_t *buffer);
typedef uint32_t (*syna_application_info_copy_from_user_fn)(
	uint8_t *destination, const uint8_t *source, uint32_t size);

struct syna_application_info_190_1a_context {
	uint8_t *application_info;
	uint8_t feature_enabled;
	uint32_t state;
	uint8_t managed_device_available;
	syna_application_info_alloc_fn alloc;
	syna_application_info_free_fn free;
	syna_application_info_copy_from_user_fn copy_from_user;
};

int32_t syna_cdev_ioctls_190_1a_application_info(
	struct syna_application_info_190_1a_context *context,
	const struct syna_application_info_190_1a_request *request)
{
	uint32_t uncopied;
	uint8_t *buffer;

	if (context->feature_enabled == 0U && context->state != 3U)
		return SYNA_APPLICATION_INFO_ENXIO;
	if (request->capacity == 0U ||
	    request->requested_size > request->capacity)
		return SYNA_APPLICATION_INFO_EINVAL;

	if (context->application_info != NULL) {
		if (context->managed_device_available != 0U)
			context->free(context->application_info);
		context->application_info = NULL;
	}
	if (context->managed_device_available == 0U)
		return SYNA_APPLICATION_INFO_ENOMEM;

	buffer = context->alloc(request->requested_size);
	context->application_info = buffer;
	if (buffer == NULL)
		return SYNA_APPLICATION_INFO_ENOMEM;
	for (uint32_t index = 0; index < request->requested_size; index++)
		buffer[index] = 0U;

	uncopied = context->copy_from_user(buffer, request->user_buffer,
					  request->requested_size);
	if (uncopied == 0U)
		return SYNA_APPLICATION_INFO_OK;
	if (uncopied <= request->requested_size) {
		uint32_t zero_start = request->requested_size - uncopied;

		for (uint32_t index = zero_start;
		     index < request->requested_size; index++)
			buffer[index] = 0U;
		return SYNA_APPLICATION_INFO_ECOPY;
	}
	return SYNA_APPLICATION_INFO_ECOPY;
}
