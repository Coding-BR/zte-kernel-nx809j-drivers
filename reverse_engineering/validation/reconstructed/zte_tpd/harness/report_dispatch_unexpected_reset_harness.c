#define _GNU_SOURCE

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef uint8_t u8;
typedef uint32_t u32;

#define __int64 long long
#define __int8 char
#define _DWORD unsigned int
#define _BYTE unsigned char
#define _QWORD unsigned long long
#define __break(value) ((void)(value))
#define static_assert(condition, ...) _Static_assert(condition, #condition)

static char dummy_format[] = "";
#define unk_38D56 dummy_format
#define unk_32499 dummy_format
#define unk_3BEBC dummy_format

static unsigned int printk_calls;
static unsigned int queue_calls;
static unsigned long long queued_workqueue;
static unsigned long long queued_work;

static int printk(const void *format, ...)
{
	(void)format;
	printk_calls++;
	return 0;
}

static int queue_work(unsigned long long workqueue, unsigned long long work)
{
	queue_calls++;
	queued_workqueue = workqueue;
	queued_work = work;
	return 1;
}

#include "../../../curated/zte_tpd/zte_tpd_syna_device_api.h"
#include "../../../curated/zte_tpd/syna_dev_process_unexpected_reset.c"

typedef int (*syna_report_dispatch_fn)(unsigned char report_code,
					       const unsigned char *payload,
					       unsigned int length,
					       void *context);

static_assert(__builtin_types_compatible_p(
		      typeof(&syna_dev_process_unexpected_reset),
		      syna_report_dispatch_fn));

#define REQUIRE(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "assertion failed at %s:%d: %s\n", \
			__FILE__, __LINE__, #condition); \
		return false; \
	} \
} while (0)

static void reset_state(void)
{
	printk_calls = 0;
	queue_calls = 0;
	queued_workqueue = 0;
	queued_work = 0;
}

static void set_u32(void *context, size_t offset, u32 value)
{
	*(u32 *)((u8 *)context + offset) = value;
}

static void set_u64(void *context, size_t offset, uint64_t value)
{
	*(uint64_t *)((u8 *)context + offset) = value;
}

static u32 get_u32(const void *context, size_t offset)
{
	return *(const u32 *)((const u8 *)context + offset);
}

static bool test_signature_contract(void)
{
	return true;
}

static bool test_null_context(void)
{
	reset_state();
	REQUIRE(syna_dev_process_unexpected_reset(0xff, NULL, 0xffffffffU,
							 NULL) == -22);
	REQUIRE(queue_calls == 0);
	REQUIRE(printk_calls == 1);
	return true;
}

static bool test_inactive_context(void)
{
	uint8_t context[1600] __attribute__((aligned(8))) = {0};

	reset_state();
	set_u32(context, 1404, 0);
	REQUIRE(syna_dev_process_unexpected_reset(0, NULL, 0, context) == 0);
	REQUIRE(queue_calls == 0);
	REQUIRE(printk_calls == 0);
	return true;
}

static bool test_active_without_workqueue(void)
{
	uint8_t context[1600] __attribute__((aligned(8))) = {0};

	reset_state();
	set_u32(context, 1404, 1);
	set_u64(context, 1352, 0);
	REQUIRE(syna_dev_process_unexpected_reset(0, NULL, 0, context) == -22);
	REQUIRE(get_u32(context, 1312) == 0);
	REQUIRE(queue_calls == 0);
	REQUIRE(printk_calls == 2);
	return true;
}

static bool test_active_queues_once(void)
{
	uint8_t context[1600] __attribute__((aligned(8))) = {0};

	reset_state();
	set_u32(context, 1404, 1);
	set_u64(context, 1352, 0x123456789abcdef0ULL);
	REQUIRE(syna_dev_process_unexpected_reset(7, (const u8 *)"payload", 3,
							 context) == 0);
	REQUIRE(get_u32(context, 1312) == 1);
	REQUIRE(queue_calls == 1);
	REQUIRE(queued_workqueue == 0x123456789abcdef0ULL);
	REQUIRE(queued_work == (unsigned long long)(uintptr_t)(context + 1320));
	REQUIRE(printk_calls == 1);
	return true;
}

static bool test_active_already_queued(void)
{
	uint8_t context[1600] __attribute__((aligned(8))) = {0};

	reset_state();
	set_u32(context, 1404, 1);
	set_u32(context, 1312, 1);
	set_u64(context, 1352, 0x1234);
	REQUIRE(syna_dev_process_unexpected_reset(0, NULL, 0, context) == 0);
	REQUIRE(get_u32(context, 1312) == 1);
	REQUIRE(queue_calls == 0);
	REQUIRE(printk_calls == 1);
	return true;
}

static int run_test(const char *name, bool (*test)(void))
{
	if (!test()) {
		printf("FAIL %s\n", name);
		return 1;
	}
	printf("PASS %s\n", name);
	return 0;
}

int main(void)
{
	int failures = 0;
	int total = 0;

#define RUN(test) do { total++; failures += run_test(#test, test); } while (0)
	RUN(test_signature_contract);
	RUN(test_null_context);
	RUN(test_inactive_context);
	RUN(test_active_without_workqueue);
	RUN(test_active_queues_once);
	RUN(test_active_already_queued);
#undef RUN

	printf("SUMMARY total=%d passed=%d failed=%d\n",
	       total, total - failures, failures);
	return failures ? EXIT_FAILURE : EXIT_SUCCESS;
}
