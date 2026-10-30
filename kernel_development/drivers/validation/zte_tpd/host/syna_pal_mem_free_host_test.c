#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

struct device { int marker; };

static bool device_available;
static int request_calls;
static int free_calls;
static void *freed_memory;
static struct device managed_device;

int printk(const char *format, ...)
{
	(void)format;
	return 0;
}

void *syna_request_managed_device(void)
{
	++request_calls;
	return device_available ? &managed_device : NULL;
}

void devm_kfree(void *device, void *memory)
{
	if (device != &managed_device || !memory)
		exit(3);
	++free_calls;
	freed_memory = memory;
}

#include "../../../reconstructed/zte_tpd/syna_pal_mem_free.c"

static void expect_true(bool condition, const char *label)
{
	if (!condition) {
		fprintf(stderr, "FAIL: %s\n", label);
		exit(1);
	}
}

static void reset_fixture(void)
{
	device_available = true;
	request_calls = 0;
	free_calls = 0;
	freed_memory = NULL;
}

static void test_null_memory(void)
{
	reset_fixture();
	syna_pal_mem_free(NULL);
	expect_true(request_calls == 1 && free_calls == 0,
			"null memory requests device but does not free");
}

static void test_managed_free(void)
{
	int memory = 7;

	reset_fixture();
	syna_pal_mem_free(&memory);
	expect_true(request_calls == 1 && free_calls == 1 &&
				freed_memory == &memory,
				"managed memory is freed exactly once");
}

static void test_missing_device(void)
{
	int memory = 9;

	reset_fixture();
	device_available = false;
	syna_pal_mem_free(&memory);
	expect_true(request_calls == 1 && free_calls == 0,
			"missing managed device skips free");
}

int main(void)
{
	test_null_memory();
	test_managed_free();
	test_missing_device();
	puts("PASS: syna_pal_mem_free host contract");
	return 0;
}
