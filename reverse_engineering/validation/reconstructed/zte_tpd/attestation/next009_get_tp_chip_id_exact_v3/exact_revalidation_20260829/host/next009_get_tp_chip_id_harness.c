#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef uint8_t u8;

#define EIO 5

struct tp_ic_vendor_item {
	u8 id;
	u8 reserved[7];
	const char *keyword;
};

static struct tp_ic_vendor_item tp_ic_vendor_info_l[11];
static unsigned char cdev_memory[0x500];
static long long tpd_cdev;
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

#include "../../../curated/zte_tpd/get_tp_chip_id.c"

#define REQUIRE(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "assertion failed at %s:%d: %s\n", \
			__FILE__, __LINE__, #condition); \
		return 1; \
	} \
} while (0)

int main(void)
{
	unsigned int index;

	tpd_cdev = (long long)(uintptr_t)cdev_memory;
	for (index = 0; index < 11; index++)
		tp_ic_vendor_info_l[index] = (struct tp_ic_vendor_item){
			.id = (u8)(0x40 + index), .keyword = "no-match"
		};

	for (index = 0; index < 11; index++) {
		memset(cdev_memory, 0, sizeof(cdev_memory));
		cdev_memory[0x446] = 0xff;
		printk_calls = 0;
		tp_ic_vendor_info_l[index].keyword = "Unknown";
		REQUIRE(get_tp_chip_id() == 0);
		REQUIRE(cdev_memory[0x446] == (u8)(0x40 + index));
		REQUIRE(printk_calls == 3);
		tp_ic_vendor_info_l[index].keyword = "no-match";
	}

	memset(cdev_memory, 0, sizeof(cdev_memory));
	cdev_memory[0x446] = 0xff;
	printk_calls = 0;
	REQUIRE(get_tp_chip_id() == -EIO);
	REQUIRE(cdev_memory[0x446] == 0xff);
	REQUIRE(printk_calls == 2);
	puts("PASS test_all_vendor_indices_and_order");
	puts("PASS test_no_match_error_and_sentinel");
	puts("SUMMARY total=2 passed=2 failed=0");
	return 0;
}
