#include <stdint.h>
#include <stdio.h>
#include <string.h>

static int input_copy_failure;
static int output_copy_failure;
static int wait_result;
static unsigned int input_copy_calls;
static unsigned int output_copy_calls;
static unsigned int wait_calls;
static uint32_t observed_timeout;

#include "../../../reconstructed/zte_tpd/routes/syna_cdev_ioctls_190_18_check_frame.c"

static struct syna_check_frame_190_18_context context;
static uint32_t user_timeout;
static uint32_t user_count;

static int copy_from_spy(uint32_t *timeout_ms, const void *source)
{
	input_copy_calls++;
	if (input_copy_failure)
		return 1;
	memcpy(timeout_ms, source, sizeof(*timeout_ms));
	return 0;
}

static int wait_spy(uint32_t timeout_ms)
{
	wait_calls++;
	observed_timeout = timeout_ms;
	return wait_result;
}

static int copy_to_spy(void *destination, const uint32_t *pending_count)
{
	output_copy_calls++;
	if (output_copy_failure)
		return 1;
	memcpy(destination, pending_count, sizeof(*pending_count));
	return 0;
}

static void reset_environment(void)
{
	memset(&context, 0, sizeof(context));
	user_timeout = 40;
	user_count = 0;
	input_copy_failure = 0;
	output_copy_failure = 0;
	wait_result = 1;
	input_copy_calls = 0;
	output_copy_calls = 0;
	wait_calls = 0;
	observed_timeout = 0;
	context.feature_flags = 1;
	context.lifecycle_state = 0;
	context.copy_from_user = copy_from_spy;
	context.wait_for_frame = wait_spy;
	context.copy_to_user = copy_to_spy;
}

static int expect(int condition, const char *message)
{
	if (condition)
		return 0;
	fprintf(stderr, "%s\n", message);
	return 1;
}

static int check(struct syna_check_frame_190_18_context *active,
			uint32_t request_length, uint32_t value_length)
{
	return syna_cdev_ioctls_190_18_check_frame(active, &user_count,
						   &user_timeout, request_length, value_length);
}

static int test_guards(void)
{
	reset_environment();
	context.feature_flags = 0;
	if (expect(check(&context, 4, 4) == -6 && input_copy_calls == 0,
			"feature guard")) return 1;
	reset_environment();
	context.lifecycle_state = 3;
	if (expect(check(&context, 4, 4) == 0 && input_copy_calls == 0,
			"lifecycle guard")) return 1;
	reset_environment();
	if (expect(check(&context, 3, 4) == -22,
			"request-length guard")) return 1;
	reset_environment();
	if (expect(check(&context, 4, 3) == -22,
			"value-length guard")) return 1;
	return 0;
}

static int test_wait_and_input_paths(void)
{
	reset_environment();
	context.pending_count = 0;
	wait_result = 0;
	if (expect(check(&context, 4, 4) == -110 && wait_calls == 1 &&
			observed_timeout == user_timeout,
			"timeout path")) return 1;
	reset_environment();
	context.pending_count = 0;
	if (expect(check(&context, 4, 4) == 0 && wait_calls == 1,
			"wake without pending frame")) return 1;
	reset_environment();
	input_copy_failure = 1;
	if (expect(check(&context, 4, 4) == -52 && input_copy_calls == 1 &&
			wait_calls == 0,
			"timeout-copy failure")) return 1;
	return 0;
}

static int test_pending_count_copy(void)
{
	reset_environment();
	context.pending_count = 3;
	if (expect(check(&context, 4, 4) == 0 && output_copy_calls == 1 &&
			user_count == 3,
			"pending-count success")) return 1;
	reset_environment();
	context.pending_count = 2;
	output_copy_failure = 1;
	if (expect(check(&context, 4, 4) == -52 && output_copy_calls == 1,
			"pending-count copy failure")) return 1;
	return 0;
}

int main(void)
{
	if (test_guards() || test_wait_and_input_paths() || test_pending_count_copy())
		return 1;
	puts("PASS syna_cdev_ioctls_190_18_check_frame: 9 cases");
	return 0;
}
