/* SPDX-License-Identifier: GPL-2.0-only */
/* Contract fixture for the inline stock hardware-reset route 0x1b. */

#include <stdint.h>

#define SYNA_HW_RESET_OK 0
#define SYNA_HW_RESET_ENXIO (-6)
#define SYNA_HW_RESET_ENODEV (-19)
#define SYNA_HW_RESET_EINVAL (-22)
#define SYNA_HW_RESET_ECOPY (-52)

struct syna_hw_reset_190_1b_request {
	uint8_t post_reset_reinit;
	uint16_t override_first;
	uint16_t override_second;
};

typedef uint32_t (*syna_hw_reset_copy_fn)(
	struct syna_hw_reset_190_1b_request *destination,
	const struct syna_hw_reset_190_1b_request *source, uint32_t size);
typedef void (*syna_hw_reset_void_fn)(void);
typedef int32_t (*syna_hw_reset_reinit_fn)(void);

struct syna_hw_reset_190_1b_context {
	uint8_t feature_enabled;
	uint32_t state;
	uint8_t reset_available;
	uint32_t first_timing;
	uint32_t second_timing;
	uint8_t event_data_suppressed;
	uint8_t device_ready;
	syna_hw_reset_copy_fn copy_from_user;
	syna_hw_reset_void_fn reset;
	syna_hw_reset_void_fn get_event_data;
	syna_hw_reset_reinit_fn reinit;
};

int32_t syna_cdev_ioctls_190_1b_do_hw_reset(
	struct syna_hw_reset_190_1b_context *context, uint32_t input_length,
	uint32_t input_capacity,
	const struct syna_hw_reset_190_1b_request *user_request)
{
	struct syna_hw_reset_190_1b_request request = { 0U, 0U, 0U };
	uint32_t old_first;
	uint32_t old_second;
	uint32_t uncopied;
	int32_t result = SYNA_HW_RESET_OK;

	if (context->feature_enabled == 0U && context->state != 3U)
		return SYNA_HW_RESET_ENXIO;
	if (input_length < 5U || input_capacity < 5U)
		return SYNA_HW_RESET_EINVAL;
	if (context->reset_available == 0U || context->reset == NULL)
		return SYNA_HW_RESET_ENODEV;

	uncopied = context->copy_from_user(&request, user_request, 5U);
	if (uncopied != 0U)
		return SYNA_HW_RESET_ECOPY;

	old_first = context->first_timing;
	old_second = context->second_timing;
	if (request.override_first != 0U)
		context->second_timing = request.override_first;
	if (request.override_second != 0U)
		context->first_timing = request.override_second;
	context->reset();
	context->second_timing = old_second;
	context->first_timing = old_first;

	if (request.post_reset_reinit == 1U)
		return SYNA_HW_RESET_OK;
	if (context->event_data_suppressed == 0U && context->get_event_data != NULL)
		context->get_event_data();
	if (context->device_ready != 0U && context->reinit != NULL)
		result = context->reinit();
	return result;
}
