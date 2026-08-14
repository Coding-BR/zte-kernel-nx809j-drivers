/* SPDX-License-Identifier: GPL-2.0-only */
/* Contract fixture for the inline stock get-config route 0x22. */

#include <stdint.h>

#define SYNA_GET_CONFIG_SIZE 20U
#define SYNA_GET_CONFIG_OK 20
#define SYNA_GET_CONFIG_EINVAL (-22)
#define SYNA_GET_CONFIG_ECOPY (-52)
#define SYNA_GET_CONFIG_EALLOC (-243)

typedef uint32_t (*syna_get_config_copy_fn)(uint8_t *destination,
						const uint8_t *source, uint32_t size);
typedef uint8_t *(*syna_get_config_alloc_fn)(uint32_t size);
typedef void (*syna_get_config_free_fn)(uint8_t *buffer);
typedef void (*syna_get_config_void_fn)(void);

struct syna_get_config_190_22_context {
	uint8_t *config_buffer;
	uint32_t buffer_size;
	uint8_t lock_depth;
	uint8_t managed_device_available;
	uint8_t feature_active;
	uint32_t state;
	uint16_t device_first;
	uint16_t device_second;
	uint8_t device_byte_one;
	uint8_t device_predict_enabled;
	uint32_t global_high_byte;
	uint32_t global_scaled_value;
	syna_get_config_copy_fn copy_to_user;
	syna_get_config_alloc_fn alloc;
	syna_get_config_free_fn free;
	syna_get_config_void_fn lock;
	syna_get_config_void_fn unlock;
};

static void syna_get_config_write_u16(uint8_t *buffer, uint32_t offset,
					      uint16_t value)
{
	buffer[offset] = (uint8_t)value;
	buffer[offset + 1U] = (uint8_t)(value >> 8);
}

int32_t syna_cdev_ioctls_190_22_get_config_params(
	struct syna_get_config_190_22_context *context, uint32_t output_size,
	uint8_t *user_buffer)
{
	uint32_t uncopied;
	uint16_t flags;

	if (output_size < SYNA_GET_CONFIG_SIZE)
		return SYNA_GET_CONFIG_EINVAL;

	context->lock();
	context->lock_depth++;
	if (context->buffer_size < SYNA_GET_CONFIG_SIZE) {
		if (context->config_buffer != NULL) {
			if (context->managed_device_available != 0U)
				context->free(context->config_buffer);
			context->config_buffer = NULL;
		}
		if (context->managed_device_available == 0U) {
			context->buffer_size = 0U;
			context->lock_depth--;
			context->unlock();
			return SYNA_GET_CONFIG_EALLOC;
		}
		context->config_buffer = context->alloc(SYNA_GET_CONFIG_SIZE);
		if (context->config_buffer == NULL) {
			context->buffer_size = 0U;
			context->lock_depth--;
			context->unlock();
			return SYNA_GET_CONFIG_EALLOC;
		}
		context->buffer_size = SYNA_GET_CONFIG_SIZE;
	}

	for (uint32_t index = 0; index < context->buffer_size; index++)
		context->config_buffer[index] = 0U;
	syna_get_config_write_u16(context->config_buffer, 2U,
					 context->device_first);
	syna_get_config_write_u16(context->config_buffer, 4U,
					 context->device_second);
	context->config_buffer[0] = context->feature_active;
	if (context->state == 3U)
		context->config_buffer[0] |= 8U;
	if (context->device_byte_one != 0U)
		context->config_buffer[1] = context->device_byte_one;
	flags = context->device_predict_enabled & 1U;
	flags |= (uint16_t)(context->global_high_byte << 8);
	syna_get_config_write_u16(context->config_buffer, 8U, flags);
	context->config_buffer[10] =
		(uint8_t)(context->global_scaled_value >> 2);

	uncopied = context->copy_to_user(user_buffer, context->config_buffer,
					 SYNA_GET_CONFIG_SIZE);
	context->lock_depth--;
	context->unlock();
	if (uncopied != 0U)
		return SYNA_GET_CONFIG_ECOPY;
	return SYNA_GET_CONFIG_OK;
}
