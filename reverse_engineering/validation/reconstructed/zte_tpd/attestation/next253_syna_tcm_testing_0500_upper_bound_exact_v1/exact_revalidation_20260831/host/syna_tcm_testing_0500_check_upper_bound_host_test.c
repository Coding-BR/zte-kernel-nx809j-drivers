#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#define __fastcall
#define __int16 short
const char *unk_3C643 = "upper-bound";
static int printk_calls;
static unsigned int logged_row;
static unsigned int logged_column;
static unsigned int logged_value;
static unsigned int logged_limit;

int printk(const char *format, ...)
{
	va_list args;
	(void)format;
	printk_calls++;
	va_start(args, format);
	(void)va_arg(args, const char *);
	logged_row = va_arg(args, unsigned int);
	logged_column = va_arg(args, unsigned int);
	logged_value = va_arg(args, unsigned int);
	logged_limit = va_arg(args, unsigned int);
	va_end(args);
	return 0;
}

#include "../../../reconstructed/zte_tpd/syna_tcm_testing_0500_check_upper_bound.c"

static void expect(bool condition, const char *message)
{
	if (!condition) {
		fprintf(stderr, "FAIL syna_tcm_testing_0500_check_upper_bound: %s\n", message);
		exit(EXIT_FAILURE);
	}
}

static void reset_log(void)
{
	printk_calls = 0;
	logged_row = 0;
	logged_column = 0;
	logged_value = 0;
	logged_limit = 0;
}

int main(void)
{
	uint16_t data;
	uint16_t limit;

	reset_log();
	data = 0;
	limit = 0;
	expect(syna_tcm_testing_0500_check_upper_bound(&data, &limit, 2, 3),
	       "zero equality must pass");
	expect(printk_calls == 0, "equal values must not log");

	reset_log();
	data = 65535U;
	limit = 65535U;
	expect(syna_tcm_testing_0500_check_upper_bound(&data, &limit, 4, 5),
	       "maximum equality must pass");
	expect(printk_calls == 0, "maximum equality must not log");

	reset_log();
	data = 65535U;
	limit = 0;
	expect(!syna_tcm_testing_0500_check_upper_bound(&data, &limit, 7, 8),
	       "unsigned upper violation must fail");
	expect(printk_calls == 1, "upper violation must log once");
	expect(logged_row == 8 && logged_column == 7 && logged_value == 65535U &&
	       logged_limit == 0, "logged arguments mismatch");

	puts("PASS syna_tcm_testing_0500_check_upper_bound host tests (3 cases)");
	return EXIT_SUCCESS;
}
