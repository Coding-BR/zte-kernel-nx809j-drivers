#include <stdbool.h>
#include <stdarg.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define EIO 5

struct ztp_algo_item {
	uint8_t id;
	uint8_t reserved[7];
	const char *keyword;
};

_Static_assert(sizeof(struct ztp_algo_item) == 16, "stock table stride");
_Static_assert(offsetof(struct ztp_algo_item, keyword) == 8, "stock keyword offset");

struct ztp_algo_item ztp_algo_info_l[7] = {
	{ .id = 0, .keyword = "algo_open" },
	{ .id = 1, .keyword = "jitter_pixel" },
	{ .id = 2, .keyword = "jitter_timer" },
	{ .id = 3, .keyword = "click_pixel" },
	{ .id = 4, .keyword = "long_press_open" },
	{ .id = 5, .keyword = "long_press_timer" },
	{ .id = 6, .keyword = "long_press_pixel" },
};

char unk_39C9D[] = "zte_tpd_log";
static unsigned int printk_calls;
static char last_log[128];

char *strnstr(const char *haystack, const char *needle, size_t length)
{
	size_t needle_length = strlen(needle);

	if (!needle_length)
		return (char *)haystack;
	for (size_t offset = 0; offset + needle_length <= length; offset++) {
		if (!memcmp(haystack + offset, needle, needle_length))
			return (char *)haystack + offset;
	}
	return NULL;
}

int printk(const char *format, ...)
{
	va_list arguments;

	printk_calls++;
	va_start(arguments, format);
	vsnprintf(last_log, sizeof(last_log), format, arguments);
	va_end(arguments);
	return (int)strlen(last_log);
}

#include "../../../reconstructed/zte_tpd/get_tp_algo_item_id.c"

static void expect(bool condition, const char *case_name, const char *message)
{
	if (condition)
		return;
	fprintf(stderr, "FAIL %s: %s\n", case_name, message);
	exit(1);
}

static void verify_match(const char *case_name, const char *input, int expected_id,
			 unsigned int expected_logs)
{
	printk_calls = 0;
	last_log[0] = '\0';
	expect(get_tp_algo_item_id((char *)input) == expected_id, case_name,
	       "returned ID mismatch");
	expect(printk_calls == expected_logs, case_name, "printk path mismatch");
}

int main(void)
{
	verify_match("algo_open", "algo_open:1", 0, 1);
	verify_match("jitter_pixel", "jitter_pixel:10", 1, 1);
	verify_match("jitter_timer", "jitter_timer:100", 2, 1);
	verify_match("click_pixel", "click_pixel:20", 3, 1);
	verify_match("long_press_open", "long_press_open:1", 4, 1);
	verify_match("long_press_timer", "long_press_timer:500", 5, 1);
	verify_match("long_press_pixel", "long_press_pixel:10,20", 6, 1);
	verify_match("priority", "jitter_pixel:10 algo_open:1", 0, 1);
	printk_calls = 0;
	expect(get_tp_algo_item_id("unrelated:1") == -EIO, "unmatched", "missing EIO");
	expect(printk_calls == 0, "unmatched", "unexpected printk");
	puts("PASS get_tp_algo_item_id host tests (9 cases)");
	return 0;
}
