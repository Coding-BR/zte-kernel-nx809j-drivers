#include <stdint.h>
#include <stdio.h>
#include <string.h>

#include "../../../reconstructed/zte_tpd/routes/syna_cdev_ioctls_190_16_send_message.c"

static int alloc_failure;
static int input_copy_failure;
static int output_copy_failure;
static int send_failure;
static unsigned int alloc_calls;
static unsigned int free_calls;
static unsigned int input_copy_calls;
static unsigned int output_copy_calls;
static unsigned int send_calls;
static unsigned int lock_calls;
static unsigned int unlock_calls;
static uint8_t response_data[8];
static uint16_t observed_payload_length;
static uint8_t observed_command;

static void *alloc_spy(size_t size)
{
	static uint8_t storage[32];
	alloc_calls++;
	return alloc_failure || size > sizeof(storage) ? NULL : storage;
}

static void free_spy(void *buffer)
{
	(void)buffer;
	free_calls++;
}

static int copy_from_spy(void *destination, const void *source, size_t length)
{
	input_copy_calls++;
	if (!input_copy_failure)
		memcpy(destination, source, length);
	return input_copy_failure;
}

static int copy_to_spy(void *destination, const void *source, size_t length)
{
	output_copy_calls++;
	if (!output_copy_failure)
		memcpy(destination, source, length);
	return output_copy_failure;
}

static int send_spy(uint8_t command, const void *payload, uint16_t length,
			   struct syna_send_message_190_16_response *response)
{
	send_calls++;
	observed_command = command;
	observed_payload_length = length;
	(void)payload;
	response->status = send_failure ? -5 : 0;
	response->data = response_data;
	response->length = send_failure ? 0 : 4;
	return send_failure;
}

static void lock_spy(void) { lock_calls++; }
static void unlock_spy(void) { unlock_calls++; }

static struct syna_send_message_190_16_context context;
static uint8_t input[8];
static uint8_t output[8];

static void reset_environment(void)
{
	memset(&context, 0, sizeof(context));
	memset(input, 0, sizeof(input));
	memset(output, 0, sizeof(output));
	memset(response_data, 0x5a, sizeof(response_data));
	input[0] = 0x31;
	input[1] = 2;
	input[2] = 0;
	input[3] = 0xaa;
	input[4] = 0xbb;
	alloc_failure = 0;
	input_copy_failure = 0;
	output_copy_failure = 0;
	send_failure = 0;
	alloc_calls = 0;
	free_calls = 0;
	input_copy_calls = 0;
	output_copy_calls = 0;
	send_calls = 0;
	lock_calls = 0;
	unlock_calls = 0;
	observed_payload_length = 0;
	observed_command = 0;
	context.feature_flags = 1;
	context.lifecycle_state = 0;
	context.request_length = 8;
	context.user_capacity = sizeof(output);
	context.response_header_size = 3;
	context.buffer_capacity = 8;
	context.alloc = alloc_spy;
	context.free = free_spy;
	context.copy_from_user = copy_from_spy;
	context.copy_to_user = copy_to_spy;
	context.send = send_spy;
	context.lock = lock_spy;
	context.unlock = unlock_spy;
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
	if (expect(syna_cdev_ioctls_190_16_send_message(&context, output, input, 5) == -6,
			"feature guard")) return 1;
	reset_environment();
	context.lifecycle_state = 3;
	if (expect(syna_cdev_ioctls_190_16_send_message(&context, output, input, 5) == 0,
			"lifecycle guard")) return 1;
	reset_environment();
	if (expect(syna_cdev_ioctls_190_16_send_message(&context, output, input, 2) == -22,
			"input-length guard")) return 1;
	return 0;
}

static int test_allocation_and_input_failures(void)
{
	reset_environment();
	alloc_failure = 1;
	if (expect(syna_cdev_ioctls_190_16_send_message(&context, output, input, 5) == -243 &&
			lock_calls == 1 && unlock_calls == 1 && free_calls == 0,
			"allocation failure cleanup")) return 1;
	reset_environment();
	input_copy_failure = 1;
	if (expect(syna_cdev_ioctls_190_16_send_message(&context, output, input, 5) == -52 &&
			free_calls == 1 && lock_calls == 1 && unlock_calls == 1,
			"input-copy failure cleanup")) return 1;
	reset_environment();
	input[1] = 7;
	if (expect(syna_cdev_ioctls_190_16_send_message(&context, output, input, 5) == -52 &&
			free_calls == 1 && send_calls == 0,
			"payload-length validation")) return 1;
	return 0;
}

static int test_response_matrix(void)
{
	reset_environment();
	send_failure = 1;
	if (expect(syna_cdev_ioctls_190_16_send_message(&context, output, input, 5) == 3 &&
			observed_command == 0x31 && observed_payload_length == 2 && free_calls == 2,
			"send failure still cleans response")) return 1;
	reset_environment();
	context.user_capacity = 3;
	if (expect(syna_cdev_ioctls_190_16_send_message(&context, output, input, 5) == -75 &&
			free_calls == 2,
			"response overflow")) return 1;
	reset_environment();
	output_copy_failure = 1;
	if (expect(syna_cdev_ioctls_190_16_send_message(&context, output, input, 5) == -52 &&
			free_calls == 2,
			"output-copy failure cleanup")) return 1;
	reset_environment();
	if (expect(syna_cdev_ioctls_190_16_send_message(&context, output, input, 5) == 7 &&
			memcmp(output, response_data, 4) == 0 && free_calls == 2 &&
			lock_calls == 1 && unlock_calls == 1,
			"successful response")) return 1;
	return 0;
}

int main(void)
{
	if (test_guards() || test_allocation_and_input_failures() || test_response_matrix())
		return 1;
	puts("PASS syna_cdev_ioctls_190_16_send_message: 10 cases");
	return 0;
}
