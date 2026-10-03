#include <stdbool.h>
#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef uint64_t _QWORD;
typedef int64_t __int64;

#define ENOMEM 12

static unsigned char cdev_storage[0x1000];
long long tpd_cdev;

static __int64 alloc_result;
static int report_init_result;
static bool report_init_clears_workqueue;
static unsigned int printk_calls;
static unsigned int alloc_calls;
static unsigned int report_init_calls;
static unsigned int resume_init_calls;
static unsigned int timer_calls;
static unsigned int destroy_calls;
static const char *printk_formats[4];
static const char *printk_arguments[4];
static const char *alloc_format;
static unsigned int alloc_flags;
static int alloc_max_active;
static const char *alloc_name;
static __int64 destroyed_workqueue;
static void *timer_addresses[3];
static void *timer_callbacks[3];
static unsigned int timer_flags[3];
static unsigned int failures;

static void expect_int(const char *name, long long actual, long long expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %lld expected %lld\n", name, actual,
			expected);
		failures++;
	}
}

static void expect_true(const char *name, bool value)
{
	if (!value) {
		fprintf(stderr, "%s: condition failed\n", name);
		failures++;
	}
}

static int test_printk(const char *format, ...)
{
	va_list args;

	if (printk_calls < 4) {
		printk_formats[printk_calls] = format;
		printk_arguments[printk_calls] = NULL;
	}
	va_start(args, format);
	if (printk_calls < 4 &&
		strcmp(format, "\0015tpd: enter") != 0)
		printk_arguments[printk_calls] = va_arg(args, const char *);
	va_end(args);
	printk_calls++;
	return 0;
}

static __int64 test_alloc_workqueue(const char *format, unsigned int flags,
					int max_active, const char *name)
{
	alloc_calls++;
	alloc_format = format;
	alloc_flags = flags;
	alloc_max_active = max_active;
	alloc_name = name;
	return alloc_result;
}

static int test_tpd_report_work_init(void)
{
	report_init_calls++;
	if (report_init_clears_workqueue)
		((_QWORD *)(uintptr_t)tpd_cdev)[150] = 0;
	return report_init_result;
}

static void test_tpd_resume_work_init(void)
{
	resume_init_calls++;
}

static void test_destroy_workqueue(__int64 workqueue)
{
	destroy_calls++;
	destroyed_workqueue = workqueue;
}

static void test_init_timer_key(void *timer, void *function,
				unsigned int flags, void *name, void *key)
{
	if (timer_calls < 3) {
		timer_addresses[timer_calls] = timer;
		timer_callbacks[timer_calls] = function;
		timer_flags[timer_calls] = flags;
	}
	if (name != NULL || key != NULL)
		failures++;
	timer_calls++;
}

static void test_ztp_probe_work(void *work)
{
	(void)work;
}

static void test_zlog_register_work(void *work)
{
	(void)work;
}

static void test_tp_ghost_check_work(void *work)
{
	(void)work;
}

static void test_delayed_work_timer_fn(void)
{
}

#define printk test_printk
#define alloc_workqueue test_alloc_workqueue
#define tpd_report_work_init test_tpd_report_work_init
#define tpd_resume_work_init test_tpd_resume_work_init
#define destroy_workqueue test_destroy_workqueue
#define init_timer_key test_init_timer_key
#define ztp_probe_work test_ztp_probe_work
#define zlog_register_work test_zlog_register_work
#define tp_ghost_check_work test_tp_ghost_check_work
#define delayed_work_timer_fn test_delayed_work_timer_fn
#include "../../../reconstructed/zte_tpd/tpd_workqueue_init.c"
#undef delayed_work_timer_fn
#undef tp_ghost_check_work
#undef zlog_register_work
#undef ztp_probe_work
#undef init_timer_key
#undef destroy_workqueue
#undef tpd_resume_work_init
#undef tpd_report_work_init
#undef alloc_workqueue
#undef printk

static void reset_trace(void)
{
	memset(cdev_storage, 0, sizeof(cdev_storage));
	tpd_cdev = (long long)(uintptr_t)cdev_storage;
	alloc_result = 0;
	report_init_result = 0;
	report_init_clears_workqueue = false;
	printk_calls = 0;
	alloc_calls = 0;
	report_init_calls = 0;
	resume_init_calls = 0;
	timer_calls = 0;
	destroy_calls = 0;
	memset(printk_formats, 0, sizeof(printk_formats));
	memset(printk_arguments, 0, sizeof(printk_arguments));
	alloc_format = NULL;
	alloc_flags = 0;
	alloc_max_active = 0;
	alloc_name = NULL;
	destroyed_workqueue = 0;
	memset(timer_addresses, 0, sizeof(timer_addresses));
	memset(timer_callbacks, 0, sizeof(timer_callbacks));
	memset(timer_flags, 0, sizeof(timer_flags));
}

static void test_alloc_failure(void)
{
	_QWORD *cdev;

	reset_trace();
	alloc_result = 0;
	expect_int("alloc failure return", tpd_workqueue_init(), -ENOMEM);
	cdev = (_QWORD *)(uintptr_t)tpd_cdev;
	expect_int("alloc failure printk calls", printk_calls, 2);
	expect_true("alloc failure enter format", printk_formats[0] &&
			strcmp(printk_formats[0], "\0015tpd: enter") == 0);
	expect_true("alloc failure error format", printk_formats[1] &&
			strcmp(printk_formats[1],
			       "\0015tpd: %s: create tpd workqueue failed\n") == 0);
	expect_true("alloc failure error function", printk_arguments[1] &&
			strcmp(printk_arguments[1], "tpd_workqueue_init") == 0);
	expect_int("alloc failure report init calls", report_init_calls, 0);
	expect_int("alloc failure timer calls", timer_calls, 0);
	expect_true("alloc failure slot is NULL", cdev[150] == 0);
}

static void test_report_failure_after_slot_clear(void)
{
	_QWORD *cdev;

	reset_trace();
	alloc_result = 0x12345678;
	report_init_result = -1;
	report_init_clears_workqueue = true;
	expect_int("report failure return", tpd_workqueue_init(), -ENOMEM);
	cdev = (_QWORD *)(uintptr_t)tpd_cdev;
	expect_int("report failure report init calls", report_init_calls, 1);
	expect_int("report failure destroy calls", destroy_calls, 1);
	expect_true("report failure destroys NULL", destroyed_workqueue == 0);
	expect_int("report failure printk calls", printk_calls, 2);
	expect_int("report failure timers", timer_calls, 0);
	expect_true("report failure slot cleared", cdev[150] == 0);
}

static void test_success_initializes_all_work_items(void)
{
	_QWORD *cdev;

	reset_trace();
	alloc_result = 0xabcdef0123456789LL;
	expect_int("success return", tpd_workqueue_init(), 0);
	cdev = (_QWORD *)(uintptr_t)tpd_cdev;
	expect_int("success alloc calls", alloc_calls, 1);
	expect_true("success alloc format", alloc_format &&
			strcmp(alloc_format, "%s") == 0);
	expect_int("success alloc flags", alloc_flags, 393226);
	expect_int("success alloc max active", alloc_max_active, 1);
	expect_true("success alloc name", alloc_name &&
			strcmp(alloc_name, "tpd_wq") == 0);
	expect_true("success workqueue slot", cdev[150] ==
			(_QWORD)alloc_result);
	expect_int("success report init calls", report_init_calls, 1);
	expect_int("success resume init calls", resume_init_calls, 1);
	expect_int("success printk calls", printk_calls, 3);
	expect_int("success timer calls", timer_calls, 3);
	expect_true("probe format", printk_formats[1] &&
			strcmp(printk_formats[1], "\0015tpd: %s enter") == 0);
	expect_true("probe name", printk_arguments[1] &&
			strcmp(printk_arguments[1], "tpd_probe_work_init") == 0);
	expect_true("zlog format", printk_formats[2] &&
			strcmp(printk_formats[2], "\0015tpd: %s enter") == 0);
	expect_true("zlog name", printk_arguments[2] &&
			strcmp(printk_arguments[2], "zlog_register_work_init") == 0);
	expect_true("probe sentinel", cdev[282] == 0xfffffffe00000ULL);
	expect_true("probe next", cdev[283] == (_QWORD)(uintptr_t)&cdev[283]);
	expect_true("probe prev", cdev[284] == (_QWORD)(uintptr_t)&cdev[283]);
	expect_true("probe callback", cdev[285] ==
			(_QWORD)(uintptr_t)test_ztp_probe_work);
	expect_true("probe timer", timer_addresses[0] == (void *)&cdev[286]);
	expect_true("probe timer callback", timer_callbacks[0] ==
			(void *)test_delayed_work_timer_fn);
	expect_true("zlog sentinel", cdev[330] == 0xfffffffe00000ULL);
	expect_true("zlog next", cdev[331] == (_QWORD)(uintptr_t)&cdev[331]);
	expect_true("zlog prev", cdev[332] == (_QWORD)(uintptr_t)&cdev[331]);
	expect_true("zlog callback", cdev[333] ==
			(_QWORD)(uintptr_t)test_zlog_register_work);
	expect_true("zlog timer", timer_addresses[1] == (void *)&cdev[334]);
	expect_true("ghost sentinel", cdev[295] == 0xfffffffe00000ULL);
	expect_true("ghost next", cdev[296] == (_QWORD)(uintptr_t)&cdev[296]);
	expect_true("ghost prev", cdev[297] == (_QWORD)(uintptr_t)&cdev[296]);
	expect_true("ghost callback", cdev[298] ==
			(_QWORD)(uintptr_t)test_tp_ghost_check_work);
	expect_true("ghost timer", timer_addresses[2] == (void *)&cdev[299]);
	expect_int("timer flags 0", timer_flags[0], 0x200000);
	expect_int("timer flags 1", timer_flags[1], 0x200000);
	expect_int("timer flags 2", timer_flags[2], 0x200000);
}

static void test_report_failure_preserves_nonnull_workqueue(void)
{
	_QWORD *cdev;

	reset_trace();
	alloc_result = 0x12345678;
	report_init_result = -1;
	report_init_clears_workqueue = false;
	expect_int("nonnull report failure return", tpd_workqueue_init(), -ENOMEM);
	cdev = (_QWORD *)(uintptr_t)tpd_cdev;
	expect_int("nonnull report failure destroy calls", destroy_calls, 0);
	expect_true("nonnull report failure preserves slot", cdev[150] ==
			(_QWORD)alloc_result);
	expect_int("nonnull report failure timers", timer_calls, 0);
}

int main(void)
{
	test_alloc_failure();
	test_report_failure_after_slot_clear();
	test_report_failure_preserves_nonnull_workqueue();
	test_success_initializes_all_work_items();
	if (failures != 0)
		return 1;
	puts("PASS tpd_workqueue_init host tests (4 cases)");
	return 0;
}
