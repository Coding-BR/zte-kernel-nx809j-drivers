#include <stdint.h>
#include <stdio.h>
#include <string.h>

static unsigned int lock_calls;
static unsigned int unlock_calls;
static unsigned int alloc_calls;
static unsigned int free_calls;
static unsigned int copy_calls;
static unsigned int reset_calls;
static unsigned int predict_calls;
static uint8_t predict_value;
static uint32_t copy_residual;
static uint8_t alloc_failed;
static uint8_t storage[20];
static uint8_t source[20];

#include "../../../reconstructed/zte_tpd/routes/syna_cdev_ioctls_190_21_set_config.c"

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

static uint32_t copy_spy(uint8_t *destination, const uint8_t *source_buffer,
					 uint32_t size)
{
	uint32_t copied;

	copy_calls++;
	copied = size - (copy_residual <= size ? copy_residual : size);
	if (source_buffer != NULL && copied != 0U)
		memcpy(destination, source_buffer, copied);
	return copy_residual;
}

static void lock_spy(void) { lock_calls++; }
static void unlock_spy(void) { unlock_calls++; }
static void reset_spy(void) { reset_calls++; }
static void predict_spy(uint8_t enabled)
{
	predict_calls++;
	predict_value = enabled;
}

static struct syna_set_config_190_21_context context;

static void put_u16(uint32_t offset, uint16_t value)
{
	source[offset] = (uint8_t)value;
	source[offset + 1U] = (uint8_t)(value >> 8);
}

static void reset_environment(void)
{
	memset(storage, 0xa5, sizeof(storage));
	memset(source, 0, sizeof(source));
	lock_calls = 0U;
	unlock_calls = 0U;
	alloc_calls = 0U;
	free_calls = 0U;
	copy_calls = 0U;
	reset_calls = 0U;
	predict_calls = 0U;
	predict_value = 0U;
	copy_residual = 0U;
	alloc_failed = 0U;
	context.config_buffer = NULL;
	context.buffer_size = 0U;
	context.lock_depth = 0U;
	context.managed_device_available = 1U;
	context.feature_active = 0U;
	context.device_first = 10U;
	context.device_second = 20U;
	context.device_predict_enabled = 0U;
	context.global_high_byte = 0U;
	context.global_scaled_value = 0U;
	context.copy_from_user = copy_spy;
	context.alloc = alloc_spy;
	context.free = free_spy;
	context.lock = lock_spy;
	context.unlock = unlock_spy;
	context.reset = reset_spy;
	context.enable_predict = predict_spy;
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
	if (expect(syna_cdev_ioctls_190_21_set_config(&context, 19U, source) ==
			   SYNA_SET_CONFIG_EINVAL && lock_calls == 0U,
			"size guard")) return 1;
	return 0;
}

static int test_allocate_and_copy_without_feature(void)
{
	reset_environment();
	source[0] = 0x5aU;
	if (expect(syna_cdev_ioctls_190_21_set_config(&context, 20U, source) ==
			   SYNA_SET_CONFIG_OK && alloc_calls == 1U && copy_calls == 1U &&
			   memcmp(storage, source, 20U) == 0 && lock_calls == 1U &&
			   unlock_calls == 1U && context.lock_depth == 0U,
			"allocate and copy")) return 1;
	return 0;
}

static int test_partial_copy(void)
{
	reset_environment();
	copy_residual = 3U;
	if (expect(syna_cdev_ioctls_190_21_set_config(&context, 20U, source) ==
			   SYNA_SET_CONFIG_ECOPY && context.lock_depth == 0U &&
			   storage[16] == 0U && storage[17] == 0U && storage[18] == 0U &&
			   storage[19] == 0U,
			"partial copy")) return 1;
	return 0;
}

static int test_managed_device_and_alloc_failure(void)
{
	reset_environment();
	context.managed_device_available = 0U;
	if (expect(syna_cdev_ioctls_190_21_set_config(&context, 20U, source) ==
			   SYNA_SET_CONFIG_EALLOC && unlock_calls == 1U,
			"managed device failure")) return 1;
	reset_environment();
	alloc_failed = 1U;
	if (expect(syna_cdev_ioctls_190_21_set_config(&context, 20U, source) ==
			   SYNA_SET_CONFIG_EALLOC && unlock_calls == 1U,
			"allocation failure")) return 1;
	return 0;
}

static int test_feature_reset_and_predictive_settings(void)
{
	reset_environment();
	context.feature_active = 1U;
	put_u16(2U, 11U);
	put_u16(4U, 20U);
	put_u16(8U, 0x0301U);
	source[10] = 7U;
	if (expect(syna_cdev_ioctls_190_21_set_config(&context, 20U, source) ==
			   SYNA_SET_CONFIG_OK && reset_calls == 1U && predict_calls == 1U &&
			   predict_value == 1U && context.global_high_byte == 3U &&
			   context.global_scaled_value == 28U,
			"feature settings")) return 1;
	return 0;
}

static int test_no_reset_when_values_match(void)
{
	reset_environment();
	context.feature_active = 1U;
	put_u16(2U, 10U);
	put_u16(4U, 20U);
	put_u16(8U, 0U);
	if (expect(syna_cdev_ioctls_190_21_set_config(&context, 20U, source) ==
			   SYNA_SET_CONFIG_OK && reset_calls == 0U && predict_calls == 0U,
			"matching values")) return 1;
	return 0;
}

static int test_reuse_buffer_and_nested_lock_release(void)
{
	reset_environment();
	context.config_buffer = storage;
	context.buffer_size = 20U;
	context.lock_depth = 1U;
	if (expect(syna_cdev_ioctls_190_21_set_config(&context, 20U, source) ==
			   SYNA_SET_CONFIG_OK && alloc_calls == 0U && free_calls == 0U &&
			   context.lock_depth == 1U && lock_calls == 1U && unlock_calls == 1U,
			"reuse buffer and nested lock")) return 1;
	return 0;
}

int main(void)
{
	if (test_size_guard() || test_allocate_and_copy_without_feature() ||
	    test_partial_copy() || test_managed_device_and_alloc_failure() ||
	    test_feature_reset_and_predictive_settings() ||
	    test_no_reset_when_values_match() ||
	    test_reuse_buffer_and_nested_lock_release())
		return 1;
	puts("PASS syna_cdev_ioctls_190_21_set_config: 9 cases");
	return 0;
}
