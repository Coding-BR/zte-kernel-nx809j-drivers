/* SPDX-License-Identifier: GPL-2.0-only */
/* Isolated contract fixture for the stock syna_cdev_ioctls route 0x12. */

#include <stddef.h>
#include <stdint.h>

#define SYNA_ENABLE_IRQ_OK 0
#define SYNA_ENABLE_IRQ_EINVAL (-22)
#define SYNA_ENABLE_IRQ_EFAULT (-52)

typedef int (*syna_irq_callback_fn)(void *callback_context, int enable);
typedef size_t (*syna_copy_from_user_fn)(uint32_t *destination,
                                         const void *source,
                                         size_t length,
                                         void *cookie);
typedef void (*syna_irq_log_fn)(const char *route_name, void *cookie);

struct syna_cdev_ioctls_190_12_context {
	uint8_t feature_flags;
	int32_t lifecycle_state;
	uint8_t irq_state;
	uint32_t max_irq_value;
	uint32_t last_irq_value;
	void *callback_context;
	syna_irq_callback_fn callback;
	syna_copy_from_user_fn copy_from_user;
	syna_irq_log_fn log;
	void *copy_cookie;
	void *log_cookie;
};

struct syna_cdev_ioctls_190_12_request {
	uint32_t request_word;
	uint32_t copy_length;
};

int32_t syna_cdev_ioctls_190_12_enable_irq(
	struct syna_cdev_ioctls_190_12_context *context,
	const struct syna_cdev_ioctls_190_12_request *request,
	const void *user_payload)
{
	uint32_t control = 0;
	int callback_result;

	context->log("syna_cdev_ioctl_enable_irq", context->log_cookie);

	if ((context->feature_flags & 1U) == 0U ||
	    context->lifecycle_state == 3)
		return SYNA_ENABLE_IRQ_EINVAL;

	if (request->request_word < 4U || request->copy_length < 4U)
		return SYNA_ENABLE_IRQ_EINVAL;

	if (context->callback == NULL)
		return SYNA_ENABLE_IRQ_EINVAL;

	if (request->copy_length > sizeof(control))
		return SYNA_ENABLE_IRQ_EFAULT;

	if (context->copy_from_user(&control, user_payload, sizeof(control),
					    context->copy_cookie) != 0U)
		return SYNA_ENABLE_IRQ_EFAULT;

	if (control == 1U) {
		if ((context->irq_state & 1U) != 0U)
			return SYNA_ENABLE_IRQ_OK;

		callback_result = context->callback(context->callback_context, 1);
		if (callback_result >= 0)
			context->last_irq_value = 0;
		return callback_result < 0 ? callback_result : SYNA_ENABLE_IRQ_OK;
	}

	if (control == 0U) {
		if (context->irq_state != 1U)
			return SYNA_ENABLE_IRQ_OK;

		callback_result = context->callback(context->callback_context, 0);
		if (callback_result >= 0)
			context->last_irq_value = context->max_irq_value;
		return callback_result < 0 ? callback_result : SYNA_ENABLE_IRQ_OK;
	}

	callback_result = context->callback(context->callback_context, 1);
	if (callback_result < 0)
		return callback_result;

	context->last_irq_value = control;
	if (context->last_irq_value < context->max_irq_value)
		context->last_irq_value = context->max_irq_value;
	return SYNA_ENABLE_IRQ_OK;
}
