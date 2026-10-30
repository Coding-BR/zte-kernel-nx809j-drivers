#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef unsigned long long _QWORD;

static _QWORD device_storage[384];
static long long tpd_cdev;
static unsigned int printk_calls;
static const char *printk_argument;
static unsigned int timer_calls;
static void *timer_address;
static void *timer_function;
static unsigned int timer_flags;
static unsigned int harness_failures;

static const char unk_322AA[] = "enter";

static void expect_u64(const char *name, _QWORD actual, _QWORD expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got 0x%llx expected 0x%llx\n", name,
			(unsigned long long)actual, (unsigned long long)expected);
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

static void expect_unsigned(const char *name, unsigned int actual,
				    unsigned int expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %u expected %u\n", name, actual, expected);
		harness_failures++;
	}
}

static int printk(const char *format, ...)
{
	va_list args;

	if (format != unk_322AA)
		harness_failures++;
	va_start(args, format);
	printk_argument = va_arg(args, const char *);
	va_end(args);
	printk_calls++;
	return 0;
}

static void tpd_resume_work(void)
{
}

static void tpd_suspend_work(void)
{
}

static void ufp_report_lcd_state_work(void)
{
}

static void delayed_work_timer_fn(void)
{
}

static void init_timer_key(void *timer, void *function, unsigned int flags,
				   void *key, void *name)
{
	if (key != NULL || name != NULL)
		harness_failures++;
	timer_address = timer;
	timer_function = function;
	timer_flags = flags;
	timer_calls++;
}

#include "../../../reconstructed/zte_tpd/tpd_resume_work_init.c"

static void reset_fixture(void)
{
	memset(device_storage, 0, sizeof(device_storage));
	tpd_cdev = (long long)(uintptr_t)device_storage;
	printk_calls = 0;
	printk_argument = NULL;
	timer_calls = 0;
	timer_address = NULL;
	timer_function = NULL;
	timer_flags = 0;
}

static void test_layout_and_callbacks(void)
{
	reset_fixture();
	tpd_resume_work_init();

	expect_unsigned("printk calls", printk_calls, 1);
	if (printk_argument == NULL || strcmp(printk_argument,
						"tpd_resume_work_init") != 0)
		harness_failures++;

	expect_u64("resume work data", device_storage[312],
		   0xfffffffe00000ULL);
	expect_u64("resume work next", device_storage[313],
		   (_QWORD)(uintptr_t)(device_storage + 313));
	expect_u64("resume work prev", device_storage[314],
		   (_QWORD)(uintptr_t)(device_storage + 313));
	expect_u64("resume callback", device_storage[315],
		   (_QWORD)(uintptr_t)tpd_resume_work);

	expect_u64("suspend work data", device_storage[308],
		   0xfffffffe00000ULL);
	expect_u64("suspend work next", device_storage[309],
		   (_QWORD)(uintptr_t)(device_storage + 309));
	expect_u64("suspend work prev", device_storage[310],
		   (_QWORD)(uintptr_t)(device_storage + 309));
	expect_u64("suspend callback", device_storage[311],
		   (_QWORD)(uintptr_t)tpd_suspend_work);

	expect_u64("lcd work data", device_storage[316],
		   0xfffffffe00000ULL);
	expect_u64("lcd work next", device_storage[317],
		   (_QWORD)(uintptr_t)(device_storage + 317));
	expect_u64("lcd work prev", device_storage[318],
		   (_QWORD)(uintptr_t)(device_storage + 317));
	expect_u64("lcd callback", device_storage[319],
		   (_QWORD)(uintptr_t)ufp_report_lcd_state_work);

	expect_unsigned("timer calls", timer_calls, 1);
	expect_pointer("timer address", timer_address, device_storage + 320);
	expect_pointer("timer function", timer_function, delayed_work_timer_fn);
	expect_unsigned("timer flags", timer_flags, 0x200000);
}

static void test_reinitialization(void)
{
	reset_fixture();
	device_storage[308] = 0xaaaaaaaaaaaaaaaaULL;
	device_storage[312] = 0xbbbbbbbbbbbbbbbbULL;
	device_storage[316] = 0xccccccccccccccccULL;
	tpd_resume_work_init();
	expect_u64("reinit suspend data", device_storage[308],
		   0xfffffffe00000ULL);
	expect_u64("reinit resume data", device_storage[312],
		   0xfffffffe00000ULL);
	expect_u64("reinit lcd data", device_storage[316],
		   0xfffffffe00000ULL);
}

int main(void)
{
	test_layout_and_callbacks();
	test_reinitialization();
	if (harness_failures != 0)
		return 1;
	puts("PASS tpd_resume_work_init host tests (2 cases)");
	return 0;
}
