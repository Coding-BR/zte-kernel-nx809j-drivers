#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef uint64_t _QWORD;
typedef int64_t __int64;

struct work_struct;

static unsigned char cdev_storage[0x1000];
long long tpd_cdev;
const char unk_322AA[] = "fmt";

static unsigned int printk_calls;
static const char *last_printk_tag;
static unsigned int timer_calls;
static void *last_timer;
static void *last_timer_function;
static unsigned int last_timer_flags;
static void *last_timer_name;
static void *last_timer_key;
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

static void reset_trace(void)
{
	memset(cdev_storage, 0, sizeof(cdev_storage));
	tpd_cdev = (long long)(uintptr_t)cdev_storage;
	printk_calls = 0;
	last_printk_tag = NULL;
	timer_calls = 0;
	last_timer = NULL;
	last_timer_function = NULL;
	last_timer_flags = 0;
	last_timer_name = NULL;
	last_timer_key = NULL;
}

static int test_printk(const char *format, ...)
{
	last_printk_tag = format;
	printk_calls++;
	return 0;
}

static void test_init_timer_key(void *timer, void *function,
					unsigned int flags, void *name, void *key)
{
	timer_calls++;
	last_timer = timer;
	last_timer_function = function;
	last_timer_flags = flags;
	last_timer_name = name;
	last_timer_key = key;
}

static void test_ztp_probe_work(void *work)
{
	(void)work;
}

static void test_delayed_work_timer_fn(void)
{
}

#define printk test_printk
#define init_timer_key test_init_timer_key
#define ztp_probe_work test_ztp_probe_work
#define delayed_work_timer_fn test_delayed_work_timer_fn
#include "../../../reconstructed/zte_tpd/tpd_probe_work_init.c"
#undef delayed_work_timer_fn
#undef ztp_probe_work
#undef init_timer_key
#undef printk

static void test_initializes_recovered_layout(void)
{
	_QWORD *cdev;

	reset_trace();
	tpd_probe_work_init();
	cdev = (_QWORD *)(uintptr_t)tpd_cdev;

	expect_int("printk calls", printk_calls, 1);
	expect_true("printk format", last_printk_tag &&
			strcmp(last_printk_tag, "\0015tpd: %s enter") == 0);
	expect_int("timer calls", timer_calls, 1);
	expect_true("work data sentinel", cdev[282] == 0xfffffffe00000ULL);
	expect_true("work list next self", cdev[283] ==
			(uintptr_t)(cdev + 283));
	expect_true("work list prev self", cdev[284] ==
			(uintptr_t)(cdev + 283));
	expect_true("work callback", cdev[285] ==
			(uintptr_t)test_ztp_probe_work);
	expect_true("timer address", last_timer == (void *)(cdev + 286));
	expect_true("timer callback", last_timer_function ==
			(void *)test_delayed_work_timer_fn);
	expect_int("timer flags", last_timer_flags, 0x200000);
	expect_true("timer name is NULL", last_timer_name == NULL);
	expect_true("timer key is NULL", last_timer_key == NULL);
}

static void test_reinitializes_all_recovered_fields(void)
{
	_QWORD *cdev;

	reset_trace();
	cdev = (_QWORD *)(uintptr_t)tpd_cdev;
	cdev[282] = 1;
	cdev[283] = 2;
	cdev[284] = 3;
	cdev[285] = 4;
	tpd_probe_work_init();

	expect_true("reinitialized data sentinel", cdev[282] ==
			0xfffffffe00000ULL);
	expect_true("reinitialized next", cdev[283] ==
			(uintptr_t)(cdev + 283));
	expect_true("reinitialized prev", cdev[284] ==
			(uintptr_t)(cdev + 283));
	expect_true("reinitialized callback", cdev[285] ==
			(uintptr_t)test_ztp_probe_work);
	expect_true("reinitialized timer", last_timer == (void *)(cdev + 286));
}

int main(void)
{
	test_initializes_recovered_layout();
	test_reinitializes_all_recovered_fields();
	if (failures != 0)
		return 1;
	puts("PASS tpd_probe_work_init host tests (2 cases)");
	return 0;
}
