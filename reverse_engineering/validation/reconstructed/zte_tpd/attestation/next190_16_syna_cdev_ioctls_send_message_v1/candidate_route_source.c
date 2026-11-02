/* SPDX-License-Identifier: GPL-2.0-only */
/* Contract fixture for the inline stock send-message route 0x16. */

#include <stddef.h>
#include <stdint.h>

#define SYNA_SEND_MESSAGE_EACCESS (-6)
#define SYNA_SEND_MESSAGE_OK 0
#define SYNA_SEND_MESSAGE_EINVAL (-22)
#define SYNA_SEND_MESSAGE_EFAULT (-52)
#define SYNA_SEND_MESSAGE_EOVERFLOW (-75)
#define SYNA_SEND_MESSAGE_ENOMEM (-243)

struct syna_send_message_190_16_response {
	int32_t status;
	const void *data;
	uint32_t length;
};

typedef void *(*syna_send_message_alloc_fn)(size_t size);
typedef void (*syna_send_message_free_fn)(void *buffer);
typedef int (*syna_send_message_copy_from_user_fn)(void *destination,
							const void *source, size_t length);
typedef int (*syna_send_message_copy_to_user_fn)(void *destination,
							const void *source, size_t length);
typedef int (*syna_send_message_send_fn)(uint8_t command, const void *payload,
							uint16_t length,
							struct syna_send_message_190_16_response *response);
typedef void (*syna_send_message_lock_fn)(void);
typedef void (*syna_send_message_unlock_fn)(void);

struct syna_send_message_190_16_context {
	uint8_t feature_flags;
	int32_t lifecycle_state;
	uint32_t request_length;
	uint32_t user_capacity;
	uint32_t response_header_size;
	uint32_t buffer_capacity;
	syna_send_message_alloc_fn alloc;
	syna_send_message_free_fn free;
	syna_send_message_copy_from_user_fn copy_from_user;
	syna_send_message_copy_to_user_fn copy_to_user;
	syna_send_message_send_fn send;
	syna_send_message_lock_fn lock;
	syna_send_message_unlock_fn unlock;
};

int32_t syna_cdev_ioctls_190_16_send_message(
	struct syna_send_message_190_16_context *context,
	void *user_output, const void *user_input, uint32_t input_length)
{
	uint8_t *buffer = NULL;
	struct syna_send_message_190_16_response response = {0};
	uint32_t output_length;
	uint16_t payload_length;
	int32_t result = SYNA_SEND_MESSAGE_OK;

	if ((context->feature_flags & 1U) == 0U)
		return SYNA_SEND_MESSAGE_EACCESS;
	if (context->lifecycle_state == 3)
		return SYNA_SEND_MESSAGE_OK;
	if (input_length < 3U || input_length > context->request_length)
		return SYNA_SEND_MESSAGE_EINVAL;
	if (context->request_length < context->response_header_size + 3U)
		return SYNA_SEND_MESSAGE_EINVAL;
	if (input_length > context->buffer_capacity)
		return SYNA_SEND_MESSAGE_EINVAL;

	context->lock();
	buffer = context->alloc(context->buffer_capacity);
	if (buffer == NULL) {
		result = SYNA_SEND_MESSAGE_ENOMEM;
		goto out_unlock;
	}
	if (context->copy_from_user(buffer, user_input, input_length) != 0) {
		result = SYNA_SEND_MESSAGE_EFAULT;
		goto out_free;
	}

	payload_length = (uint16_t)buffer[1] | ((uint16_t)buffer[2] << 8);
	if ((uint32_t)payload_length + 3U > input_length) {
		result = SYNA_SEND_MESSAGE_EFAULT;
		goto out_free;
	}

	(void)context->send(buffer[0], buffer + 3, payload_length, &response);
	if (response.length > context->buffer_capacity ||
	    response.length > context->user_capacity) {
		result = SYNA_SEND_MESSAGE_EOVERFLOW;
		goto out_response_free;
	}

	output_length = context->response_header_size + response.length;
	if (output_length > context->user_capacity) {
		result = SYNA_SEND_MESSAGE_EOVERFLOW;
		goto out_response_free;
	}
	if (context->copy_to_user(user_output, response.data, response.length) != 0) {
		result = SYNA_SEND_MESSAGE_EFAULT;
		goto out_response_free;
	}
	result = (int32_t)output_length;

out_response_free:
	if (response.data != NULL)
		context->free((void *)response.data);
out_free:
	context->free(buffer);
out_unlock:
	context->unlock();
	return result;
}
