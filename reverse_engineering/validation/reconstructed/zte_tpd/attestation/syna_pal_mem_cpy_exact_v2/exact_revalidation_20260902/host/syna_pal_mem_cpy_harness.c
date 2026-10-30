#include <stdint.h>
#include <stdio.h>
#include <string.h>

static unsigned int printk_calls;
static const char *log_format;
static const char *log_name;
static unsigned int log_destination_size;
static unsigned int log_source_size;
static unsigned int log_copy_size;

int printk(const char *format, const char *name, unsigned int destination_size,
	   unsigned int source_size, unsigned int copy_size)
{
	printk_calls++;
	log_format = format;
	log_name = name;
	log_destination_size = destination_size;
	log_source_size = source_size;
	log_copy_size = copy_size;
	return 0;
}

#include "build/syna_pal_mem_cpy_under_test.c"

static void check(int condition, const char *name, unsigned int *failures)
{ printf("%s %s\n", condition ? "PASS" : "FAIL", name); if (!condition) (*failures)++; }

static void reset_log(void)
{
	printk_calls = 0;
	log_format = log_name = NULL;
	log_destination_size = log_source_size = log_copy_size = 0;
}

int main(void)
{
	uint8_t source[8] = { 1, 2, 3, 4, 5, 6, 7, 8 };
	uint8_t destination[8] = { 0 };
	unsigned int failures = 0;

	reset_log();
	syna_pal_mem_cpy(NULL, 8, source, 8, 4);
	check(printk_calls == 0, "null_destination_no_log", &failures);
	reset_log();
	syna_pal_mem_cpy(destination, 8, NULL, 8, 4);
	check(printk_calls == 0, "null_source_no_log", &failures);
	reset_log();
	syna_pal_mem_cpy(destination, 8, source, 8, 4);
	check(memcmp(destination, source, 4) == 0, "valid_copy", &failures);
	check(printk_calls == 0, "valid_copy_no_log", &failures);
	reset_log();
	syna_pal_mem_cpy(destination, 3, source, 8, 4);
	check(printk_calls == 1, "source_limit_log", &failures);
	check(log_destination_size == 8 && log_source_size == 3, "source_limit_log_arguments", &failures);
	check(log_copy_size == 4, "source_limit_log_copy_size", &failures);
	reset_log();
	syna_pal_mem_cpy(destination, 8, source, 3, 4);
	check(printk_calls == 1, "destination_limit_log", &failures);
	check(log_destination_size == 3 && log_source_size == 8, "destination_limit_log_arguments", &failures);
	check(log_copy_size == 4, "destination_limit_log_copy_size", &failures);
	check(strcmp(log_format, "\0013[error] %s: Invalid size. src:%d, dest:%d, size to copy:%d\n") == 0 &&
	      strcmp(log_name, "syna_pal_mem_cpy") == 0, "stock_log_format_and_name", &failures);
	printf("SUMMARY tests=11 failures=%u\n", failures);
	return failures ? 1 : 0;
}
