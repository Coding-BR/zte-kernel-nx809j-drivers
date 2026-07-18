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
#define _DWORD unsigned int
#define _BYTE unsigned char
#define _QWORD unsigned long long
#define static_assert(condition, ...) _Static_assert(condition, #condition)

static unsigned char status_area[2048] __attribute__((aligned(8)));
static char dummy_format[] = "";
#define unk_38D27 dummy_format
#define unk_380AB dummy_format
#define unk_38BFD dummy_format
#define unk_3912B dummy_format
#define unk_396D3 dummy_format
#define SP_EL0 0
#define _ReadStatusReg(x) ((unsigned long)(uintptr_t)status_area)

static long long tpd_cdev;
static unsigned int printk_calls;
static unsigned int last_printk_value;
static unsigned int uevent_calls;
static unsigned long long last_uevent_kobj;
static unsigned int last_uevent_action;
static const char *last_uevent_env;
static unsigned int break_calls;
static unsigned int last_break;

#define __break(value) do { break_calls++; last_break = (unsigned int)(value); } while (0)

static int printk(const void *format, ...)
{
	(void)format;
	printk_calls++;
	last_printk_value = 0;
	return 0;
}

static int kobject_uevent_env(unsigned long long kobj, unsigned int action,
				      unsigned long long *envp)
{
	uevent_calls++;
	last_uevent_kobj = kobj;
	last_uevent_action = action;
	last_uevent_env = envp && envp[0] ? (const char *)(uintptr_t)envp[0] : NULL;
	return 0;
}

#include "../../../curated/zte_tpd/set_lcd_reset_processing.c"
#include "../../../curated/zte_tpd/tpd_report_uevent.c"
#include "../../../curated/zte_tpd/tpd_reset_gpio_output.c"

typedef void (*control_value_fn)(unsigned char value);

static_assert(__builtin_types_compatible_p(typeof(&set_lcd_reset_processing),
						   control_value_fn));
static_assert(__builtin_types_compatible_p(typeof(&tpd_report_uevent),
						   control_value_fn));
static_assert(__builtin_types_compatible_p(typeof(&tpd_reset_gpio_output),
						   control_value_fn));

#define REQUIRE(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "assertion failed at %s:%d: %s\n", \
			__FILE__, __LINE__, #condition); \
		return false; \
	} \
} while (0)

static unsigned char cdev_memory[4096] __attribute__((aligned(8)));
static unsigned char kobject_storage[48] __attribute__((aligned(8)));
#define kobject_memory (kobject_storage + 16)

static void reset_state(void)
{
	memset(cdev_memory, 0, sizeof(cdev_memory));
	printk_calls = 0;
	last_printk_value = 0;
	uevent_calls = 0;
	last_uevent_kobj = 0;
	last_uevent_action = 0;
	last_uevent_env = NULL;
	break_calls = 0;
	last_break = 0;
	tpd_cdev = (long long)(uintptr_t)cdev_memory;
	*(uint64_t *)(cdev_memory + 3096) =
		(uint64_t)(uintptr_t)(kobject_memory - 16);
}

static bool test_signature_contract(void)
{
	return true;
}

static bool test_set_lcd_reset_processing(void)
{
	reset_state();
	set_lcd_reset_processing(0xa5);
	REQUIRE(cdev_memory[24] == 0xa5);
	REQUIRE(printk_calls == 1);
	return true;
}

static bool test_report_single_tap(void)
{
	reset_state();
	tpd_report_uevent(0);
	REQUIRE(printk_calls == 1);
	REQUIRE(uevent_calls == 1);
	REQUIRE(last_uevent_kobj == (unsigned long long)(uintptr_t)kobject_memory);
	REQUIRE(last_uevent_action == 2);
	REQUIRE(strcmp(last_uevent_env, "single_tap=true") == 0);
	return true;
}

static bool test_report_double_tap(void)
{
	reset_state();
	tpd_report_uevent(1);
	REQUIRE(printk_calls == 1);
	REQUIRE(uevent_calls == 1);
	REQUIRE(strcmp(last_uevent_env, "double_tap=true") == 0);
	return true;
}

static bool test_report_pen_low_battery(void)
{
	reset_state();
	tpd_report_uevent(2);
	REQUIRE(printk_calls == 1);
	REQUIRE(uevent_calls == 1);
	REQUIRE(strcmp(last_uevent_env, "pen_capacity_low=true") == 0);
	return true;
}

static bool test_report_unknown_is_log_only(void)
{
	reset_state();
	tpd_report_uevent(3);
	REQUIRE(printk_calls == 1);
	REQUIRE(uevent_calls == 0);
	return true;
}

static bool test_reset_gpio_null_callback(void)
{
	reset_state();
	*(uint64_t *)(cdev_memory + 3320) = 0;
	tpd_reset_gpio_output(0xff);
	REQUIRE(break_calls == 0);
	REQUIRE(printk_calls == 0);
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
	RUN(test_set_lcd_reset_processing);
	RUN(test_report_single_tap);
	RUN(test_report_double_tap);
	RUN(test_report_pen_low_battery);
	RUN(test_report_unknown_is_log_only);
	RUN(test_reset_gpio_null_callback);
#undef RUN

	printf("SUMMARY total=%d passed=%d failed=%d\n",
	       total, total - failures, failures);
	return failures ? EXIT_FAILURE : EXIT_SUCCESS;
}
