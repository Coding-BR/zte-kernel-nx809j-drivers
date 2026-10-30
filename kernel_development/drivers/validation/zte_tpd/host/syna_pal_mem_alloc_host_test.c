#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
typedef long long __int64;
#define __fastcall

struct device { int marker; };

static bool device_available;
static bool allocation_available;
static int request_calls;
static int malloc_calls;
static size_t malloc_size;
static unsigned int malloc_flags;
static void *allocation;
static struct device managed_device;

int printk(const char *format, ...)
{
	(void)format;
	return 0;
}

struct device *syna_request_managed_device(void)
{
	++request_calls;
	return device_available ? &managed_device : NULL;
}

void *devm_kmalloc(struct device *device, size_t size, unsigned int flags)
{
	if (device != &managed_device)
		exit(3);
	++malloc_calls;
	malloc_size = size;
	malloc_flags = flags;
	if (!allocation_available)
		return NULL;
	allocation = malloc(size);
	return allocation;
}

#include "../../../reconstructed/zte_tpd/syna_pal_mem_alloc.c"

static void expect_true(bool condition, const char *label)
{
	if (!condition) {
		fprintf(stderr, "FAIL: %s\n", label);
		exit(1);
	}
}

static void reset_fixture(void)
{
	free(allocation);
	allocation = NULL;
	device_available = true;
	allocation_available = true;
	request_calls = 0;
	malloc_calls = 0;
	malloc_size = 0;
	malloc_flags = 0;
}

static void test_success(void)
{
	reset_fixture();
	expect_true(syna_pal_mem_alloc(17) != NULL, "positive allocation succeeds");
	expect_true(request_calls == 1 && malloc_calls == 1 && malloc_size == 17 &&
			 malloc_flags == 0xdc0, "device, size and flags are forwarded");
}

static void test_invalid_size(void)
{
	reset_fixture();
	expect_true(syna_pal_mem_alloc(0) == NULL, "zero size rejected");
	expect_true(request_calls == 1 && malloc_calls == 0,
			"zero size does not allocate");

	reset_fixture();
	expect_true(syna_pal_mem_alloc(-1) == NULL, "negative size rejected");
	expect_true(request_calls == 1 && malloc_calls == 0,
			"negative size does not allocate");
}

static void test_device_and_allocator_failures(void)
{
	reset_fixture();
	device_available = false;
	expect_true(syna_pal_mem_alloc(8) == NULL, "missing device returns null");
	expect_true(request_calls == 1 && malloc_calls == 0,
			"missing device short-circuits allocation");

	reset_fixture();
	allocation_available = false;
	expect_true(syna_pal_mem_alloc(8) == NULL, "allocator failure returns null");
	expect_true(request_calls == 1 && malloc_calls == 1 && malloc_size == 8,
			"allocator failure forwards the request");
}

int main(void)
{
	test_success();
	test_invalid_size();
	test_device_and_allocator_failures();
	free(allocation);
	puts("PASS: syna_pal_mem_alloc host contract");
	return 0;
}
