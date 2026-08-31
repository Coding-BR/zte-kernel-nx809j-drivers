#include <stdint.h>
#include <stdio.h>
#include <string.h>

#include "../../../reconstructed/zte_tpd/routes/syna_cdev_ioctls_190_12_enable_irq.c"

struct observed {
	unsigned int callback_calls;
	int last_enable;
	int callback_result;
	unsigned int copy_calls;
	unsigned int log_calls;
	const char *log_name;
};

static int observe_callback(void *callback_context, int enable)
{
	struct observed *state = callback_context;

	state->callback_calls++;
	state->last_enable = enable;
	return state->callback_result;
}

static size_t observe_copy(uint32_t *destination, const void *source,
				   size_t length, void *cookie)
{
	struct observed *state = cookie;

	state->copy_calls++;
	memcpy(destination, source, length);
	return 0;
}

static void observe_log(const char *name, void *cookie)
{
	struct observed *state = cookie;

	state->log_calls++;
	state->log_name = name;
}

static int expect(int condition, const char *message)
{
	if (condition)
		return 0;
	fprintf(stderr, "%s\n", message);
	return 1;
}

static struct syna_cdev_ioctls_190_12_context make_context(
	struct observed *state)
{
	return (struct syna_cdev_ioctls_190_12_context){
		.feature_flags = 1,
		.lifecycle_state = 0,
		.irq_state = 0,
		.max_irq_value = 8,
		.last_irq_value = 99,
		.callback_context = state,
		.callback = observe_callback,
		.copy_from_user = observe_copy,
		.log = observe_log,
		.copy_cookie = state,
		.log_cookie = state,
	};
}

static int test_capability_and_lifecycle_guards(void)
{
	struct observed state = {0};
	struct syna_cdev_ioctls_190_12_context context = make_context(&state);
	const struct syna_cdev_ioctls_190_12_request request = {4, 4};
	uint32_t payload = 1;

	context.feature_flags = 0;
	if (expect(syna_cdev_ioctls_190_12_enable_irq(&context, &request,
							 &payload) == -22,
							 "capability guard"))
		return 1;
	context = make_context(&state);
	context.lifecycle_state = 3;
	if (expect(syna_cdev_ioctls_190_12_enable_irq(&context, &request,
							 &payload) == -22,
							 "lifecycle guard"))
		return 1;
	return expect(state.callback_calls == 0 && state.copy_calls == 0,
			      "guard side effects");
}

static int test_request_bounds_and_callback_presence(void)
{
	struct observed state = {0};
	struct syna_cdev_ioctls_190_12_context context = make_context(&state);
	struct syna_cdev_ioctls_190_12_request request = {4, 4};
	uint32_t payload = 1;

	request.request_word = 3;
	if (expect(syna_cdev_ioctls_190_12_enable_irq(&context, &request,
							 &payload) == -22,
							 "request-word bound"))
		return 1;
	request = (struct syna_cdev_ioctls_190_12_request){4, 3};
	if (expect(syna_cdev_ioctls_190_12_enable_irq(&context, &request,
							 &payload) == -22,
							 "copy-length lower bound"))
		return 1;
	request.copy_length = 5;
	if (expect(syna_cdev_ioctls_190_12_enable_irq(&context, &request,
							 &payload) == -52,
							 "copy-length overflow"))
		return 1;
	context = make_context(&state);
	context.callback = NULL;
	request = (struct syna_cdev_ioctls_190_12_request){4, 4};
	return expect(syna_cdev_ioctls_190_12_enable_irq(&context, &request,
							 &payload) == -22,
				       "missing callback");
}

static int test_enable_disable_and_alternate_control(void)
{
	struct observed state = {0};
	struct syna_cdev_ioctls_190_12_context context = make_context(&state);
	struct syna_cdev_ioctls_190_12_request request = {4, 4};
	uint32_t payload;

	payload = 1;
	if (expect(syna_cdev_ioctls_190_12_enable_irq(&context, &request,
							 &payload) == 0 &&
				   state.callback_calls == 1 && state.last_enable == 1 &&
				   context.last_irq_value == 0,
				   "enable transition"))
		return 1;

	context.irq_state = 1;
	payload = 1;
	if (expect(syna_cdev_ioctls_190_12_enable_irq(&context, &request,
							 &payload) == 0 &&
				   state.callback_calls == 1,
				   "already-enabled short circuit"))
		return 1;

	payload = 0;
	if (expect(syna_cdev_ioctls_190_12_enable_irq(&context, &request,
							 &payload) == 0 &&
				   state.callback_calls == 2 && state.last_enable == 0 &&
				   context.last_irq_value == context.max_irq_value,
				   "disable transition"))
		return 1;

	payload = 3;
	if (expect(syna_cdev_ioctls_190_12_enable_irq(&context, &request,
							 &payload) == 0 &&
				   state.callback_calls == 3 && state.last_enable == 1 &&
				   context.last_irq_value == context.max_irq_value,
				   "alternate-control clamp"))
		return 1;

	return 0;
}

static int test_callback_error_and_disabled_state(void)
{
	struct observed state = {.callback_result = -5};
	struct syna_cdev_ioctls_190_12_context context = make_context(&state);
	struct syna_cdev_ioctls_190_12_request request = {4, 4};
	uint32_t payload = 1;

	if (expect(syna_cdev_ioctls_190_12_enable_irq(&context, &request,
							 &payload) == -5,
							 "callback error propagation"))
		return 1;
	context.irq_state = 0;
	payload = 0;
	if (expect(syna_cdev_ioctls_190_12_enable_irq(&context, &request,
							 &payload) == 0 &&
				   state.callback_calls == 1,
				   "disabled-state short circuit"))
		return 1;
	return expect(state.log_calls == 2 &&
			      strcmp(state.log_name, "syna_cdev_ioctl_enable_irq") == 0,
			      "route log contract");
}

int main(void)
{
	if (test_capability_and_lifecycle_guards() ||
	    test_request_bounds_and_callback_presence() ||
	    test_enable_disable_and_alternate_control() ||
	    test_callback_error_and_disabled_state())
		return 1;

	puts("PASS syna_cdev_ioctls_190_12_enable_irq host tests (4 groups)");
	return 0;
}
