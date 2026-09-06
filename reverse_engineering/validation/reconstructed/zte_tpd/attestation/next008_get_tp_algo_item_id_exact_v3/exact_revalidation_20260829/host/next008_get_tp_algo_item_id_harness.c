#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef uint8_t u8;

#define EIO 5

struct ztp_algo_item {
	u8 id;
	u8 reserved[7];
	const char *keyword;
};

static struct ztp_algo_item ztp_algo_info_l[7];
static unsigned int printk_calls;

static int printk(const void *format, ...)
{
	(void)format;
	printk_calls++;
	return 0;
}

static const char *strnstr(const char *haystack, const char *needle,
				 size_t length)
{
	size_t needle_length = strlen(needle);

	if (needle_length == 0)
		return haystack;
	if (needle_length > length)
		return NULL;
	for (size_t index = 0; index + needle_length <= length; index++)
		if (memcmp(haystack + index, needle, needle_length) == 0)
			return haystack + index;
	return NULL;
}

#include "../../../curated/zte_tpd/get_tp_algo_item_id.c"

#define REQUIRE(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "assertion failed at %s:%d: %s\n", \
			__FILE__, __LINE__, #condition); \
		return 1; \
	} \
} while (0)

int main(void)
{
	static const char *keywords[] = {
		"algo_open", "jitter_pixel", "jitter_timer", "click_pixel",
		"long_press_open", "long_press_timer", "long_press_pixel",
	};
	static const char *inputs[] = {
		"algo_open", "prefix-jitter_pixel-suffix", "jitter_timer",
		"click_pixel", "long_press_open", "long_press_timer",
		"long_press_pixel",
	};
	static const int expected[] = { 11, 22, 33, 44, 55, 66, 77 };
	char unknown[] = "not-present";
	char empty[] = "";
	unsigned int index;

	for (index = 0; index < 7; index++) {
		ztp_algo_info_l[index] = (struct ztp_algo_item){
			.id = (u8)expected[index], .keyword = keywords[index]
		};
		REQUIRE(get_tp_algo_item_id((char *)inputs[index]) == expected[index]);
	}
	REQUIRE(printk_calls == 7);
	REQUIRE(get_tp_algo_item_id(unknown) == -EIO);
	REQUIRE(printk_calls == 7);
	REQUIRE(get_tp_algo_item_id(empty) == -EIO);
	REQUIRE(printk_calls == 7);
	puts("PASS test_all_algo_items_and_order");
	puts("PASS test_unknown_and_empty_errors");
	puts("SUMMARY total=2 passed=2 failed=0");
	return 0;
}
