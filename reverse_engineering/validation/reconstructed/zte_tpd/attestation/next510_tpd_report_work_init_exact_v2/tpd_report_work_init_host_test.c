#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define ENOMEM 12
typedef unsigned long long _QWORD;
typedef long long __int64;

static const char unk_322AA[] = "enter";
static const char unk_334E1[] = "failure";
static const char unk_364AC[] = "%s";

static _QWORD device_storage[384];
static __int64 tpd_cdev;
static __int64 alloc_result;
static unsigned int alloc_calls;
static unsigned int timer_calls;
static void *timer_addresses[10];
static void *timer_callbacks[10];
static unsigned int timer_flags[10];
static unsigned int printk_calls;
static unsigned int harness_failures;

static void expect_u64(const char *name, _QWORD actual, _QWORD expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got 0x%llx expected 0x%llx\n", name,
			(unsigned long long)actual, (unsigned long long)expected);
		harness_failures++;
	}
}

static void expect_unsigned(const char *name, unsigned int actual,
				    unsigned int expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %u expected %u\n", name, actual, expected);
		harness_failures++;
	}
}

static void expect_pointer(const char *name, const void *actual,
				   const void *expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %p expected %p\n", name, actual, expected);
		harness_failures++;
	}
}

static int printk(const char *format, ...)
{
	if (format != unk_322AA && format != unk_334E1) {
		fprintf(stderr, "unexpected printk format\n");
		harness_failures++;
	}
	printk_calls++;
	return 0;
}

static __int64 alloc_workqueue(const char *format, unsigned int flags,
				       int max_active, const char *name)
{
	if (format != unk_364AC || flags != 0x6000a || max_active != 1 ||
	    strcmp(name, "tpd_report_wq") != 0)
		harness_failures++;
	alloc_calls++;
	return alloc_result;
}

static void delayed_work_timer_fn(void)
{
}

#define DEFINE_REPORT_WORK(id) \
	static void tpd_id##id##_report_work(void) \
	{ \
	}

DEFINE_REPORT_WORK(0)
DEFINE_REPORT_WORK(1)
DEFINE_REPORT_WORK(2)
DEFINE_REPORT_WORK(3)
DEFINE_REPORT_WORK(4)
DEFINE_REPORT_WORK(5)
DEFINE_REPORT_WORK(6)
DEFINE_REPORT_WORK(7)
DEFINE_REPORT_WORK(8)
DEFINE_REPORT_WORK(9)

static void init_timer_key(void *timer, void *function, unsigned int flags,
				   void *key, void *name)
{
	unsigned int index = timer_calls++;
	(void)key;
	(void)name;
	if (index >= 10) {
		harness_failures++;
		return;
	}
	timer_addresses[index] = timer;
	timer_callbacks[index] = function;
	timer_flags[index] = flags;
}

#include "../../../reconstructed/zte_tpd/tpd_report_work_init.c"

static void reset_fixture(__int64 allocation)
{
	memset(device_storage, 0, sizeof(device_storage));
	memset(timer_addresses, 0, sizeof(timer_addresses));
	memset(timer_callbacks, 0, sizeof(timer_callbacks));
	memset(timer_flags, 0, sizeof(timer_flags));
	alloc_result = allocation;
	alloc_calls = 0;
	timer_calls = 0;
	printk_calls = 0;
	tpd_cdev = (__int64)(uintptr_t)device_storage;
}

static void test_allocation_failure(void)
{
	reset_fixture(0);
	expect_u64("allocation failure return", tpd_report_work_init(),
		   (_QWORD)(int)-ENOMEM);
	expect_unsigned("allocation calls", alloc_calls, 1);
	expect_unsigned("failure printk calls", printk_calls, 2);
	expect_unsigned("failure timer calls", timer_calls, 0);
	expect_u64("saved workqueue", device_storage[151], 0);
}

static void test_success_layout(void)
{
	static void (*const callbacks[10])(void) = {
		tpd_id0_report_work, tpd_id1_report_work, tpd_id2_report_work,
		tpd_id3_report_work, tpd_id4_report_work, tpd_id5_report_work,
		tpd_id6_report_work, tpd_id7_report_work, tpd_id8_report_work,
		tpd_id9_report_work,
	};
	unsigned int work_index;
	unsigned int timer_index;

	reset_fixture(0x12345678);
	expect_unsigned("success return", tpd_report_work_init(), 0);
	expect_unsigned("allocation calls", alloc_calls, 1);
	expect_unsigned("success printk calls", printk_calls, 1);
	expect_unsigned("timer calls", timer_calls, 10);
	expect_u64("saved workqueue", device_storage[151], 0x12345678);

	for (work_index = 0; work_index < 10; work_index++) {
		unsigned int base = 152 + work_index * 13;
		unsigned int timer = base + 4;

		expect_u64("work data", device_storage[base],
			   0xfffffffe00000ULL);
		expect_u64("work next", device_storage[base + 1],
			   (_QWORD)(uintptr_t)(device_storage + base + 1));
		expect_u64("work prev", device_storage[base + 2],
			   (_QWORD)(uintptr_t)(device_storage + base + 1));
		expect_u64("work callback", device_storage[base + 3],
			   (_QWORD)(uintptr_t)callbacks[work_index]);
		timer_index = work_index;
		expect_pointer("timer address", timer_addresses[timer_index],
				device_storage + timer);
		expect_pointer("timer callback", timer_callbacks[timer_index],
				delayed_work_timer_fn);
		expect_unsigned("timer flags", timer_flags[timer_index], 0x200000);
	}
}

int main(void)
{
	test_allocation_failure();
	test_success_layout();
	if (harness_failures != 0)
		return 1;
	puts("PASS tpd_report_work_init host tests (2 cases)");
	return 0;
}
