/* SPDX-License-Identifier: GPL-2.0-only */
/* Contract fixture for the inline stock set-config route 0x21. */

#include <stdint.h>

#define SYNA_SET_CONFIG_SIZE 20U
#define SYNA_SET_CONFIG_OK 0
#define SYNA_SET_CONFIG_EINVAL (-22)
#define SYNA_SET_CONFIG_ECOPY (-52)
#define SYNA_SET_CONFIG_EALLOC (-243)

typedef uint32_t (*syna_set_config_copy_fn)(uint8_t *destination,
						const uint8_t *source, uint32_t size);
typedef uint8_t *(*syna_set_config_alloc_fn)(uint32_t size);
typedef void (*syna_set_config_free_fn)(uint8_t *buffer);
typedef void (*syna_set_config_void_fn)(void);
typedef void (*syna_set_config_predict_fn)(uint8_t enabled);

struct syna_set_config_190_21_context {
	uint8_t *config_buffer;
	uint32_t buffer_size;
	uint8_t lock_depth;
	uint8_t managed_device_available;
	uint8_t feature_active;
	uint32_t device_first;
	uint32_t device_second;
	uint8_t device_predict_enabled;
	uint32_t global_high_byte;
	uint32_t global_scaled_value;
	syna_set_config_copy_fn copy_from_user;
	syna_set_config_alloc_fn alloc;
	syna_set_config_free_fn free;
	syna_set_config_void_fn lock;
	syna_set_config_void_fn unlock;
	syna_set_config_void_fn reset;
	syna_set_config_predict_fn enable_predict;
};

static uint16_t syna_set_config_read_u16(const uint8_t *buffer, uint32_t offset)
{
	return (uint16_t)buffer[offset] | (uint16_t)buffer[offset + 1U] << 8;
}

int32_t syna_cdev_ioctls_190_21_set_config(
	struct syna_set_config_190_21_context *context, uint32_t input_size,
	const uint8_t *user_buffer)
{
	uint32_t uncopied;
	uint16_t first;
	uint16_t second;
	uint16_t flags;
	uint8_t desired_predict;

	if (input_size < SYNA_SET_CONFIG_SIZE)
		return SYNA_SET_CONFIG_EINVAL;

	context->lock();
	context->lock_depth++;
	if (context->buffer_size < SYNA_SET_CONFIG_SIZE) {
		if (context->config_buffer != NULL) {
			if (context->managed_device_available != 0U)
				context->free(context->config_buffer);
			context->config_buffer = NULL;
		}
		if (context->managed_device_available == 0U) {
			context->buffer_size = 0U;
			context->lock_depth--;
			context->unlock();
			return SYNA_SET_CONFIG_EALLOC;
		}
		context->config_buffer = context->alloc(SYNA_SET_CONFIG_SIZE);
		if (context->config_buffer == NULL) {
			context->buffer_size = 0U;
			context->lock_depth--;
			context->unlock();
			return SYNA_SET_CONFIG_EALLOC;
		}
		context->buffer_size = SYNA_SET_CONFIG_SIZE;
	}

	for (uint32_t index = 0; index < context->buffer_size; index++)
		context->config_buffer[index] = 0U;
	uncopied = context->copy_from_user(context->config_buffer, user_buffer,
					   SYNA_SET_CONFIG_SIZE);
	if (uncopied != 0U) {
		uint32_t zero_start = uncopied <= SYNA_SET_CONFIG_SIZE ?
			SYNA_SET_CONFIG_SIZE - uncopied : 0U;

		for (uint32_t index = zero_start; index < SYNA_SET_CONFIG_SIZE; index++)
			context->config_buffer[index] = 0U;
		context->lock_depth--;
		context->unlock();
		return SYNA_SET_CONFIG_ECOPY;
	}

	if (context->feature_active != 0U) {
		first = syna_set_config_read_u16(context->config_buffer, 2U);
		second = syna_set_config_read_u16(context->config_buffer, 4U);
		if ((first != 0U && context->device_first != first) ||
		    (second != 0U && context->device_second != second))
			context->reset();

		flags = syna_set_config_read_u16(context->config_buffer, 8U);
		desired_predict = (uint8_t)(flags & 1U);
		if (desired_predict != context->device_predict_enabled)
			context->enable_predict(desired_predict);
		context->global_high_byte = flags >> 8;
		context->global_scaled_value =
			(uint32_t)context->config_buffer[10] * 4U;
	}

	context->lock_depth--;
	context->unlock();
	return SYNA_SET_CONFIG_OK;
}
