#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

static void *managed_device;
static unsigned int managed_device_calls;
static unsigned int devm_kfree_calls;
static void *freed_device;
static void *freed_memory;
static unsigned int printk_calls;
static const char *captured_format;
static const char *captured_name;

static void *syna_request_managed_device(void)
{
	managed_device_calls++;
	return managed_device;
}

static void devm_kfree(void *device, void *memory)
{
	devm_kfree_calls++;
	freed_device = device;
	freed_memory = memory;
}

static int host_printk(const char *format, ...)
{
	va_list arguments;

	printk_calls++;
	captured_format = format;
	va_start(arguments, format);
	captured_name = va_arg(arguments, const char *);
	va_end(arguments);
	return 0;
}

#define printk host_printk
#include "../../../reconstructed/zte_tpd/syna_pal_mem_free_0.c"
#undef printk

static void reset_state(void)
{
	managed_device = NULL;
	managed_device_calls = 0;
	devm_kfree_calls = 0;
	freed_device = NULL;
	freed_memory = NULL;
	printk_calls = 0;
	captured_format = NULL;
	captured_name = NULL;
}

static int test_free_non_null_memory(void)
{
	uint32_t device;
	uint32_t memory;

	reset_state();
	managed_device = &device;
	syna_pal_mem_free_0(&memory);
	if (managed_device_calls != 1 || devm_kfree_calls != 1 ||
	    freed_device != &device || freed_memory != &memory || printk_calls != 0) {
		fprintf(stderr, "normal free contract mismatch\n");
		return 1;
	}
	return 0;
}

static int test_free_null_memory(void)
{
	uint32_t device;

	reset_state();
	managed_device = &device;
	syna_pal_mem_free_0(NULL);
	if (managed_device_calls != 1 || devm_kfree_calls != 1 ||
	    freed_device != &device || freed_memory != NULL || printk_calls != 0) {
		fprintf(stderr, "null memory must still reach devm_kfree\n");
		return 1;
	}
	return 0;
}

static int test_null_managed_device(void)
{
	static const char expected_format[] =
		"\0013[error] %s: Invalid managed device\n";
	uint32_t memory;

	reset_state();
	syna_pal_mem_free_0(&memory);
	if (managed_device_calls != 1 || devm_kfree_calls != 0 || printk_calls != 1 ||
	    strcmp(captured_format, expected_format) != 0 ||
	    strcmp(captured_name, "syna_pal_mem_free") != 0) {
		fprintf(stderr, "null managed device contract mismatch\n");
		return 1;
	}
	return 0;
}

int main(void)
{
	if (test_free_non_null_memory() || test_free_null_memory() ||
	    test_null_managed_device())
		return 1;

	printf("PASS syna_pal_mem_free_0 host tests (3 cases)\n");
	return 0;
}
