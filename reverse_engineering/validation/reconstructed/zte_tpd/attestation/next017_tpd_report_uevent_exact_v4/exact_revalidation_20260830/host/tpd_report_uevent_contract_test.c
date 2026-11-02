#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef long long __int64;
typedef unsigned long long _QWORD;

static unsigned char cdev_storage[0xe00];
static unsigned char device_storage[0x30];
static unsigned char status_storage[0x800];
__int64 tpd_cdev;

static char unk_380AB[] = "pen capacity";
static char unk_38BFD[] = "double tap";
static char unk_396D3[] = "unknown event %d";
static char unk_3912B[] = "single tap";

static unsigned int printk_calls;
static unsigned int uevent_calls;
static unsigned int status_reads;
static unsigned int failures;
static const char *last_print_format;
static const char *last_print_function;
static int last_print_value;
static uintptr_t last_kobject;
static int last_action;
static const char *last_env;
static unsigned char last_env_count;

static unsigned long test_read_status_reg(unsigned int selector)
{
	(void)selector;
	status_reads++;
	return (unsigned long)(uintptr_t)status_storage;
}

static int test_printk(const char *format, ...)
{
	va_list args;

	printk_calls++;
	last_print_format = format;
	va_start(args, format);
	last_print_function = va_arg(args, const char *);
	if (format == unk_396D3)
		last_print_value = va_arg(args, int);
	va_end(args);
	return 0;
}

static int test_kobject_uevent_env(_QWORD kobj, int action, void *envp_arg)
{
	char **envp = envp_arg;

	uevent_calls++;
	last_kobject = (uintptr_t)kobj;
	last_action = action;
	last_env = envp ? envp[0] : NULL;
	last_env_count = envp && envp[1] == NULL ? 1 : 2;
	return 0;
}

#define SP_EL0 0
#define _ReadStatusReg test_read_status_reg
#define printk test_printk
#define kobject_uevent_env test_kobject_uevent_env
#include "../../../reconstructed/zte_tpd/tpd_report_uevent.c"
#undef kobject_uevent_env
#undef printk
#undef _ReadStatusReg
#undef SP_EL0

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

static void expect_text(const char *name, const char *actual, const char *expected)
{
	if (!actual || strcmp(actual, expected) != 0) {
		fprintf(stderr, "%s: got %s expected %s\n", name,
			actual ? actual : "<null>", expected);
		failures++;
	}
}

static void reset_fixture(void)
{
	_QWORD *guard = (_QWORD *)(status_storage + 1808);

	memset(cdev_storage, 0, sizeof(cdev_storage));
	memset(device_storage, 0, sizeof(device_storage));
	memset(status_storage, 0, sizeof(status_storage));
	*guard = 0x1122334455667788ULL;
	*(void **)(cdev_storage + 0xdd0) = device_storage;
	tpd_cdev = (__int64)(uintptr_t)cdev_storage;
	printk_calls = 0;
	uevent_calls = 0;
	status_reads = 0;
	last_print_format = NULL;
	last_print_function = NULL;
	last_print_value = 0;
	last_kobject = 0;
	last_action = 0;
	last_env = NULL;
	last_env_count = 0;
}

static void expect_event(const char *name, const char *event)
{
	expect_int(name, uevent_calls, 1);
	expect_true("uevent kobject", last_kobject ==
		(uintptr_t)(device_storage + 16));
	expect_int("uevent action", last_action, 2);
	expect_text("uevent environment", last_env, event);
	expect_int("uevent environment terminator", last_env_count, 1);
	expect_text("printk function", last_print_function, "tpd_report_uevent");
	expect_int("printk calls", printk_calls, 1);
	expect_int("status reads", status_reads, 1);
}

static void test_single_tap(void)
{
	reset_fixture();
	tpd_report_uevent(0);
	expect_event("single tap event", "single_tap=true");
	expect_true("single tap printk format", last_print_format == unk_3912B);
}

static void test_double_tap(void)
{
	reset_fixture();
	tpd_report_uevent(1);
	expect_event("double tap event", "double_tap=true");
	expect_true("double tap printk format", last_print_format == unk_38BFD);
}

static void test_pen_capacity_low(void)
{
	reset_fixture();
	tpd_report_uevent(2);
	expect_event("pen event", "pen_capacity_low=true");
	expect_true("pen printk format", last_print_format == unk_380AB);
}

static void test_unknown_event(void)
{
	reset_fixture();
	tpd_report_uevent(0x7f);
	expect_int("unknown event calls", uevent_calls, 0);
	expect_int("unknown printk calls", printk_calls, 1);
	expect_int("unknown event value", last_print_value, 0x7f);
	expect_true("unknown printk format", last_print_format == unk_396D3);
	expect_text("unknown printk function", last_print_function,
			"tpd_report_uevent");
	expect_int("unknown status reads", status_reads, 1);
}

static void test_unsigned_byte_input(void)
{
	reset_fixture();
	tpd_report_uevent(0xff);
	expect_int("byte event calls", uevent_calls, 0);
	expect_int("byte printk value", last_print_value, 0xff);
	expect_int("byte status reads", status_reads, 1);
}

int main(void)
{
	test_single_tap();
	test_double_tap();
	test_pen_capacity_low();
	test_unknown_event();
	test_unsigned_byte_input();
	if (failures != 0)
		return 1;
	puts("PASS tpd_report_uevent host tests (5 cases)");
	return 0;
}
