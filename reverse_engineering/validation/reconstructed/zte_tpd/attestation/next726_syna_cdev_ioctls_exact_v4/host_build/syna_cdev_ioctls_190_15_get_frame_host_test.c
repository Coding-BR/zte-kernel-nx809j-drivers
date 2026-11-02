#include <stdint.h>
#include <stdio.h>
#include <string.h>

static int copy_from_user_result;
static int wait_result;
static int copy_to_user_result;
static unsigned int copy_from_calls;
static unsigned int wait_calls;
static unsigned int copy_to_calls;
static unsigned int lock_calls;
static unsigned int unlock_calls;
static unsigned int release_calls;
static uint32_t observed_timeout;
static uint32_t observed_copy_length;

struct syna_get_frame_190_15_frame;

static int copy_from_user_spy(uint32_t *timeout_ms, const void *user_timeout)
{
	copy_from_calls++;
	if (copy_from_user_result == 0)
		memcpy(timeout_ms, user_timeout, sizeof(*timeout_ms));
	return copy_from_user_result;
}

static int wait_spy(uint32_t timeout_ms)
{
	wait_calls++;
	observed_timeout = timeout_ms;
	return wait_result;
}

static int copy_to_user_spy(void *user_buffer, const void *payload, uint32_t length)
{
	copy_to_calls++;
	observed_copy_length = length;
	if (copy_to_user_result == 0)
		memcpy(user_buffer, payload, length);
	return copy_to_user_result;
}

static void lock_spy(void) { lock_calls++; }
static void unlock_spy(void) { unlock_calls++; }
static void release_spy(struct syna_get_frame_190_15_frame *frame)
{
	(void)frame;
	release_calls++;
}

#include "../../../reconstructed/zte_tpd/routes/syna_cdev_ioctls_190_15_get_frame.c"

static struct syna_get_frame_190_15_context context;
static struct syna_get_frame_190_15_frame frame;
static uint8_t payload[8];
static uint8_t output[8];
static uint32_t user_timeout;

static void reset_environment(void)
{
	memset(&context, 0, sizeof(context));
	memset(&frame, 0, sizeof(frame));
	memset(payload, 0xa5, sizeof(payload));
	memset(output, 0, sizeof(output));
	user_timeout = 25;
	copy_from_user_result = 0;
	wait_result = 1;
	copy_to_user_result = 0;
	copy_from_calls = 0;
	wait_calls = 0;
	copy_to_calls = 0;
	lock_calls = 0;
	unlock_calls = 0;
	release_calls = 0;
	observed_timeout = 0;
	observed_copy_length = 0;
	context.feature_flags = 1;
	context.lifecycle_state = 0;
	context.user_capacity = sizeof(output);
	context.copy_from_user = copy_from_user_spy;
	context.wait_for_frame = wait_spy;
	context.copy_to_user = copy_to_user_spy;
	context.lock = lock_spy;
	context.unlock = unlock_spy;
	context.release = release_spy;
	context.frame = &frame;
	frame.payload = payload;
	frame.length = sizeof(payload);
}

static int expect(int condition, const char *message)
{
	if (condition)
		return 0;
	fprintf(stderr, "%s\n", message);
	return 1;
}

static int test_guards(void)
{
	reset_environment();
	context.feature_flags = 0;
	if (expect(syna_cdev_ioctls_190_15_get_frame(&context, output,
						&user_timeout, 4) == SYNA_GET_FRAME_EACCESS,
				"feature guard")) return 1;
	reset_environment();
	context.lifecycle_state = 3;
	if (expect(syna_cdev_ioctls_190_15_get_frame(&context, output,
						&user_timeout, 4) == SYNA_GET_FRAME_OK,
				"lifecycle guard")) return 1;
	reset_environment();
	if (expect(syna_cdev_ioctls_190_15_get_frame(&context, output,
						&user_timeout, 3) == SYNA_GET_FRAME_EINVAL,
				"request-length guard")) return 1;
	return 0;
}

static int test_wait_and_copy_paths(void)
{
	reset_environment();
	context.frame = NULL;
	wait_result = 0;
	if (expect(syna_cdev_ioctls_190_15_get_frame(&context, output,
						&user_timeout, 4) == SYNA_GET_FRAME_ETIMEDOUT &&
						wait_calls == 1 && observed_timeout == user_timeout,
					"timeout path")) return 1;
	reset_environment();
	context.frame = NULL;
	if (expect(syna_cdev_ioctls_190_15_get_frame(&context, output,
						&user_timeout, 4) == SYNA_GET_FRAME_ENODATA,
					"empty-queue path")) return 1;
	reset_environment();
	copy_from_user_result = 1;
	if (expect(syna_cdev_ioctls_190_15_get_frame(&context, output,
						&user_timeout, 4) == SYNA_GET_FRAME_EFAULT,
					"timeout-copy failure")) return 1;
	reset_environment();
	copy_to_user_result = 1;
	if (expect(syna_cdev_ioctls_190_15_get_frame(&context, output,
						&user_timeout, 4) == SYNA_GET_FRAME_EFAULT &&
						lock_calls == 1 && unlock_calls == 1 && release_calls == 1,
					"frame-copy failure cleanup")) return 1;
	return 0;
}

static int test_bounds_and_success(void)
{
	reset_environment();
	frame.length = sizeof(payload) + 1;
	if (expect(syna_cdev_ioctls_190_15_get_frame(&context, output,
						&user_timeout, 4) == SYNA_GET_FRAME_EOVERFLOW,
					"frame-size bound")) return 1;
	reset_environment();
	if (expect(syna_cdev_ioctls_190_15_get_frame(&context, output,
						&user_timeout, 4) == (int32_t)sizeof(payload) &&
						memcmp(output, payload, sizeof(payload)) == 0 &&
						observed_copy_length == sizeof(payload) && release_calls == 1,
					"successful frame path")) return 1;
	return 0;
}

int main(void)
{
	if (test_guards() || test_wait_and_copy_paths() || test_bounds_and_success())
		return 1;
	puts("PASS syna_cdev_ioctls_190_15_get_frame: 9 cases");
	return 0;
}
