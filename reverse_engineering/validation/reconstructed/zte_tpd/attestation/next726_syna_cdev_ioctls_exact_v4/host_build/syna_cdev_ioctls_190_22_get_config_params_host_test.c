#include <stdint.h>
#include <stdio.h>
#include <string.h>

static unsigned int lock_calls;
static unsigned int unlock_calls;
static unsigned int alloc_calls;
static unsigned int free_calls;
static unsigned int copy_calls;
static uint32_t copy_residual;
static uint8_t alloc_failed;
static uint8_t storage[20];
static uint8_t destination[20];

#include "../../../reconstructed/zte_tpd/routes/syna_cdev_ioctls_190_22_get_config_params.c"

static uint8_t *alloc_spy(uint32_t size)
{
	alloc_calls++;
	if (alloc_failed != 0U || size != 20U)
		return NULL;
	return storage;
}

static void free_spy(uint8_t *buffer)
{
	free_calls++;
	(void)buffer;
}

static uint32_t copy_spy(uint8_t *destination_buffer,
					const uint8_t *source, uint32_t size)
{
	uint32_t copied;

	copy_calls++;
	copied = size - (copy_residual <= size ? copy_residual : size);
	if (source != NULL && copied != 0U)
		memcpy(destination_buffer, source, copied);
	return copy_residual;
}

static void lock_spy(void) { lock_calls++; }
static void unlock_spy(void) { unlock_calls++; }

static struct syna_get_config_190_22_context context;

static uint16_t read_u16(const uint8_t *buffer, uint32_t offset)
{
	return (uint16_t)buffer[offset] | (uint16_t)buffer[offset + 1U] << 8;
}

static void reset_environment(void)
{
	memset(storage, 0xa5, sizeof(storage));
	memset(destination, 0, sizeof(destination));
	lock_calls = 0U;
	unlock_calls = 0U;
	alloc_calls = 0U;
	free_calls = 0U;
	copy_calls = 0U;
	copy_residual = 0U;
	alloc_failed = 0U;
	context.config_buffer = NULL;
	context.buffer_size = 0U;
	context.lock_depth = 0U;
	context.managed_device_available = 1U;
	context.feature_active = 1U;
	context.state = 0U;
	context.device_first = 10U;
	context.device_second = 20U;
	context.device_byte_one = 0x44U;
	context.device_predict_enabled = 1U;
	context.global_high_byte = 3U;
	context.global_scaled_value = 28U;
	context.copy_to_user = copy_spy;
	context.alloc = alloc_spy;
	context.free = free_spy;
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

static int test_size_guard(void)
{
	reset_environment();
	if (expect(syna_cdev_ioctls_190_22_get_config_params(&context, 19U,
			destination) == SYNA_GET_CONFIG_EINVAL && lock_calls == 0U,
		"size guard")) return 1;
	return 0;
}

static int test_allocate_populate_and_copy(void)
{
	reset_environment();
	if (expect(syna_cdev_ioctls_190_22_get_config_params(&context, 20U,
			destination) == SYNA_GET_CONFIG_OK && alloc_calls == 1U &&
			copy_calls == 1U && read_u16(destination, 2U) == 10U &&
			read_u16(destination, 4U) == 20U && destination[0] == 1U &&
			destination[1] == 0x44U && read_u16(destination, 8U) == 0x0301U &&
			 destination[10] == 7U && context.lock_depth == 0U,
		"populate and copy")) return 1;
	return 0;
}

static int test_state_three_sets_bit(void)
{
	reset_environment();
	context.feature_active = 0U;
	context.state = 3U;
	if (expect(syna_cdev_ioctls_190_22_get_config_params(&context, 20U,
			destination) == SYNA_GET_CONFIG_OK && destination[0] == 8U,
		"state bit")) return 1;
	return 0;
}

static int test_partial_copy(void)
{
	reset_environment();
	copy_residual = 4U;
	if (expect(syna_cdev_ioctls_190_22_get_config_params(&context, 20U,
			destination) == SYNA_GET_CONFIG_ECOPY && lock_calls == 1U &&
			unlock_calls == 1U && context.lock_depth == 0U,
		"partial copy")) return 1;
	return 0;
}

static int test_device_and_alloc_failure(void)
{
	reset_environment();
	context.managed_device_available = 0U;
	if (expect(syna_cdev_ioctls_190_22_get_config_params(&context, 20U,
			destination) == SYNA_GET_CONFIG_EALLOC && unlock_calls == 1U,
		"managed device failure")) return 1;
	reset_environment();
	alloc_failed = 1U;
	if (expect(syna_cdev_ioctls_190_22_get_config_params(&context, 20U,
			destination) == SYNA_GET_CONFIG_EALLOC && unlock_calls == 1U,
		"allocation failure")) return 1;
	return 0;
}

static int test_reuse_buffer_and_nested_lock(void)
{
	reset_environment();
	context.config_buffer = storage;
	context.buffer_size = 20U;
	context.lock_depth = 1U;
	if (expect(syna_cdev_ioctls_190_22_get_config_params(&context, 20U,
			destination) == SYNA_GET_CONFIG_OK && alloc_calls == 0U &&
			free_calls == 0U && context.lock_depth == 1U,
		"reuse and nested lock")) return 1;
	return 0;
}

int main(void)
{
	if (test_size_guard() || test_allocate_populate_and_copy() ||
	    test_state_three_sets_bit() || test_partial_copy() ||
	    test_device_and_alloc_failure() || test_reuse_buffer_and_nested_lock())
		return 1;
	puts("PASS syna_cdev_ioctls_190_22_get_config_params: 7 cases");
	return 0;
}
