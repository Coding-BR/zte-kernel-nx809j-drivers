#include <stdint.h>
#include <stdio.h>
#include <string.h>

static unsigned int alloc_calls;
static unsigned int free_calls;
static unsigned int copy_calls;
static uint32_t copy_residual;
static uint8_t allocation_failed;
static uint8_t storage[32];
static uint8_t *freed_pointer;

#include "../../../reconstructed/zte_tpd/routes/syna_cdev_ioctls_190_1a_application_info.c"

static uint8_t *alloc_spy(uint32_t size)
{
	alloc_calls++;
	if (allocation_failed != 0U || size > sizeof(storage))
		return NULL;
	return storage;
}

static void free_spy(uint8_t *buffer)
{
	free_calls++;
	freed_pointer = buffer;
}

static uint32_t copy_from_user_spy(uint8_t *destination,
					 const uint8_t *source, uint32_t size)
{
	uint32_t copied;

	copy_calls++;
	copied = size - (copy_residual <= size ? copy_residual : size);
	if (source != NULL && copied != 0U)
		memcpy(destination, source, copied);
	return copy_residual;
}

static struct syna_application_info_190_1a_context context;
static struct syna_application_info_190_1a_request request;
static uint8_t user_data[8] = { 1U, 2U, 3U, 4U, 5U, 6U, 7U, 8U };

static void reset_environment(void)
{
	memset(storage, 0xa5, sizeof(storage));
	alloc_calls = 0;
	free_calls = 0;
	copy_calls = 0;
	copy_residual = 0U;
	allocation_failed = 0U;
	freed_pointer = NULL;
	context.application_info = NULL;
	context.feature_enabled = 1U;
	context.state = 0U;
	context.managed_device_available = 1U;
	context.alloc = alloc_spy;
	context.free = free_spy;
	context.copy_from_user = copy_from_user_spy;
	request.requested_size = 4U;
	request.capacity = 4U;
	request.user_buffer = user_data;
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
	if (expect(syna_cdev_ioctls_190_1a_application_info(&context, &request) ==
			   SYNA_APPLICATION_INFO_ENXIO && alloc_calls == 0U,
			"state guard")) return 1;
	reset_environment();
	request.capacity = 0U;
	if (expect(syna_cdev_ioctls_190_1a_application_info(&context, &request) ==
			   SYNA_APPLICATION_INFO_EINVAL && alloc_calls == 0U,
			"capacity guard")) return 1;
	reset_environment();
	request.requested_size = 5U;
	if (expect(syna_cdev_ioctls_190_1a_application_info(&context, &request) ==
			   SYNA_APPLICATION_INFO_EINVAL && alloc_calls == 0U,
			"requested size guard")) return 1;
	return 0;
}

static int test_replace_and_copy_success(void)
{
	reset_environment();
	context.application_info = storage;
	if (expect(syna_cdev_ioctls_190_1a_application_info(&context, &request) ==
			   SYNA_APPLICATION_INFO_OK && free_calls == 1U &&
			   freed_pointer == storage && alloc_calls == 1U && copy_calls == 1U &&
			   memcmp(storage, user_data, 4U) == 0,
			"replace and copy")) return 1;
	return 0;
}

static int test_allocation_failure_discards_old_buffer(void)
{
	reset_environment();
	context.application_info = storage;
	allocation_failed = 1U;
	if (expect(syna_cdev_ioctls_190_1a_application_info(&context, &request) ==
			   SYNA_APPLICATION_INFO_ENOMEM && free_calls == 1U &&
			   context.application_info == NULL && copy_calls == 0U,
			"allocation failure")) return 1;
	return 0;
}

static int test_managed_device_failure(void)
{
	reset_environment();
	context.application_info = storage;
	context.managed_device_available = 0U;
	if (expect(syna_cdev_ioctls_190_1a_application_info(&context, &request) ==
			   SYNA_APPLICATION_INFO_ENOMEM && free_calls == 0U &&
			   context.application_info == NULL && alloc_calls == 0U,
			"managed device failure")) return 1;
	return 0;
}

static int test_partial_copy_zeros_tail(void)
{
	reset_environment();
	copy_residual = 2U;
	if (expect(syna_cdev_ioctls_190_1a_application_info(&context, &request) ==
			   SYNA_APPLICATION_INFO_ECOPY && copy_calls == 1U &&
			   storage[0] == 1U && storage[1] == 2U && storage[2] == 0U &&
			   storage[3] == 0U,
			"partial copy tail")) return 1;
	return 0;
}

static int test_state_mode_three_allows_route(void)
{
	reset_environment();
	context.feature_enabled = 0U;
	context.state = 3U;
	if (expect(syna_cdev_ioctls_190_1a_application_info(&context, &request) ==
			   SYNA_APPLICATION_INFO_OK && copy_calls == 1U,
			"state three route")) return 1;
	return 0;
}

int main(void)
{
	if (test_state_and_size_guards() || test_replace_and_copy_success() ||
	    test_allocation_failure_discards_old_buffer() ||
	    test_managed_device_failure() || test_partial_copy_zeros_tail() ||
	    test_state_mode_three_allows_route())
		return 1;
	puts("PASS syna_cdev_ioctls_190_1a_application_info: 7 cases");
	return 0;
}
