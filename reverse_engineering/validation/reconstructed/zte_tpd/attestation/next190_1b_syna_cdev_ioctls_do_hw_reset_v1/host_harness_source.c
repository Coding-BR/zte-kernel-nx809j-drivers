#include <stdint.h>
#include <stdio.h>
#include <string.h>

static unsigned int copy_calls;
static unsigned int reset_calls;
static unsigned int event_calls;
static unsigned int reinit_calls;
static uint32_t copy_residual;
static int32_t reinit_result;
static uint32_t observed_first;
static uint32_t observed_second;

#include "../../../reconstructed/zte_tpd/routes/syna_cdev_ioctls_190_1b_do_hw_reset.c"

static struct syna_hw_reset_190_1b_request source_request;
static struct syna_hw_reset_190_1b_context context;

static uint32_t copy_spy(struct syna_hw_reset_190_1b_request *destination,
				const struct syna_hw_reset_190_1b_request *source,
				uint32_t size)
{
	uint32_t copied;

	copy_calls++;
	copied = size - (copy_residual <= size ? copy_residual : size);
	if (source != NULL && copied != 0U)
		*((uint8_t *)destination) = *((const uint8_t *)source);
	if (source != NULL && copied > 1U)
		memcpy((uint8_t *)destination + 1U,
		       (const uint8_t *)source + 1U,
		       copied > 3U ? 2U : copied - 1U);
	if (source != NULL && copied > 3U)
		memcpy((uint8_t *)destination + 3U,
		       (const uint8_t *)source + 3U,
		       copied - 3U > 2U ? 2U : copied - 3U);
	return copy_residual;
}

static void reset_spy(void)
{
	reset_calls++;
	observed_first = context.first_timing;
	observed_second = context.second_timing;
}

static void event_spy(void) { event_calls++; }
static int32_t reinit_spy(void) { reinit_calls++; return reinit_result; }

static void reset_environment(void)
{
	copy_calls = 0U;
	reset_calls = 0U;
	event_calls = 0U;
	reinit_calls = 0U;
	copy_residual = 0U;
	reinit_result = 0;
	observed_first = 0U;
	observed_second = 0U;
	source_request.post_reset_reinit = 1U;
	source_request.override_first = 0U;
	source_request.override_second = 0U;
	context.feature_enabled = 1U;
	context.state = 0U;
	context.reset_available = 1U;
	context.first_timing = 100U;
	context.second_timing = 200U;
	context.event_data_suppressed = 0U;
	context.device_ready = 0U;
	context.copy_from_user = copy_spy;
	context.reset = reset_spy;
	context.get_event_data = event_spy;
	context.reinit = reinit_spy;
}

static int expect(int condition, const char *message)
{
	if (condition)
		return 0;
	fprintf(stderr, "%s\n", message);
	return 1;
}

static int test_state_and_size_guards(void)
{
	reset_environment();
	context.feature_enabled = 0U;
	if (expect(syna_cdev_ioctls_190_1b_do_hw_reset(&context, 5U, 5U,
			&source_request) == SYNA_HW_RESET_ENXIO && copy_calls == 0U,
			"state guard")) return 1;
	reset_environment();
	if (expect(syna_cdev_ioctls_190_1b_do_hw_reset(&context, 4U, 5U,
			&source_request) == SYNA_HW_RESET_EINVAL && copy_calls == 0U,
			"input length guard")) return 1;
	reset_environment();
	if (expect(syna_cdev_ioctls_190_1b_do_hw_reset(&context, 5U, 4U,
			&source_request) == SYNA_HW_RESET_EINVAL && copy_calls == 0U,
			"input capacity guard")) return 1;
	return 0;
}

static int test_missing_reset_callback(void)
{
	reset_environment();
	context.reset_available = 0U;
	if (expect(syna_cdev_ioctls_190_1b_do_hw_reset(&context, 5U, 5U,
			&source_request) == SYNA_HW_RESET_ENODEV && copy_calls == 0U,
			"reset callback guard")) return 1;
	return 0;
}

static int test_override_and_restore(void)
{
	reset_environment();
	source_request.override_first = 11U;
	source_request.override_second = 22U;
	if (expect(syna_cdev_ioctls_190_1b_do_hw_reset(&context, 5U, 5U,
			&source_request) == SYNA_HW_RESET_OK && copy_calls == 1U &&
			reset_calls == 1U && observed_first == 22U && observed_second == 11U &&
			context.first_timing == 100U && context.second_timing == 200U,
			"override and restore")) return 1;
	return 0;
}

static int test_partial_copy(void)
{
	reset_environment();
	copy_residual = 1U;
	if (expect(syna_cdev_ioctls_190_1b_do_hw_reset(&context, 5U, 5U,
			&source_request) == SYNA_HW_RESET_ECOPY && reset_calls == 0U,
			"partial copy")) return 1;
	return 0;
}

static int test_post_reset_reinit_path(void)
{
	reset_environment();
	source_request.post_reset_reinit = 0U;
	context.device_ready = 1U;
	reinit_result = -77;
	if (expect(syna_cdev_ioctls_190_1b_do_hw_reset(&context, 5U, 5U,
			&source_request) == -77 && reset_calls == 1U && event_calls == 1U &&
			reinit_calls == 1U,
			"post reset reinit")) return 1;
	return 0;
}

static int test_suppressed_event_and_state_three(void)
{
	reset_environment();
	context.feature_enabled = 0U;
	context.state = 3U;
	source_request.post_reset_reinit = 0U;
	context.device_ready = 1U;
	context.event_data_suppressed = 1U;
	if (expect(syna_cdev_ioctls_190_1b_do_hw_reset(&context, 5U, 5U,
			&source_request) == SYNA_HW_RESET_OK && reset_calls == 1U &&
			event_calls == 0U && reinit_calls == 1U,
			"suppressed event")) return 1;
	return 0;
}

int main(void)
{
	if (test_state_and_size_guards() || test_missing_reset_callback() ||
	    test_override_and_restore() || test_partial_copy() ||
	    test_post_reset_reinit_path() || test_suppressed_event_and_state_three())
		return 1;
	puts("PASS syna_cdev_ioctls_190_1b_do_hw_reset: 9 cases");
	return 0;
}
