#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#define __fastcall
typedef int16_t __int16;
const char *unk_3C643 = "upper-bound";
static int printk_calls;
static unsigned int logged_row;
static unsigned int logged_column;
static int logged_value;
static int logged_limit;

int printk(const char *format, ...)
{

	va_list args;
	(void)format;
	printk_calls++;
	va_start(args, format);
	(void)va_arg(args, const char *);
	logged_row = va_arg(args, unsigned int);
	logged_column = va_arg(args, unsigned int);
	logged_value = va_arg(args, int);
	logged_limit = va_arg(args, int);
	va_end(args);
	return 0;
}

#include "../../../reconstructed/zte_tpd/syna_tcm_testing_0A00_check_upper_bound.c"

static void expect(bool condition, const char *message)
{
	if (!condition) {
		fprintf(stderr, "FAIL syna_tcm_testing_0A00_check_upper_bound: %s\n", message);
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
	int16_t data;
	int16_t limit;

	reset_log();
	data = 10;
	limit = 10;
	expect(syna_tcm_testing_0A00_check_upper_bound(&data, &limit, 2, 3),
	       "equal values must pass");
	expect(printk_calls == 0, "equal values must not log");

	reset_log();
	data = -32768;
	limit = -1;
	expect(syna_tcm_testing_0A00_check_upper_bound(&data, &limit, 4, 5),
	       "lower signed value must pass");
	expect(printk_calls == 0, "lower value must not log");

	reset_log();
	data = 32767;
	limit = -32768;
	expect(!syna_tcm_testing_0A00_check_upper_bound(&data, &limit, 7, 8),
	       "upper violation must fail");
	expect(printk_calls == 1, "upper violation must log once");
	expect(logged_row == 8 && logged_column == 7 && logged_value == 32767 &&
	       logged_limit == -32768, "logged arguments mismatch");

	puts("PASS syna_tcm_testing_0A00_check_upper_bound host tests (3 cases)");
	return EXIT_SUCCESS;
}
