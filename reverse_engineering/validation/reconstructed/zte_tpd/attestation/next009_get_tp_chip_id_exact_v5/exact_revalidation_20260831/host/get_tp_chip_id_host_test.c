#include <stdarg.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define EIO 5

struct tp_ic_vendor_item {
	uint8_t id;
	uint8_t reserved[7];
	const char *keyword;
};

struct tp_ic_vendor_item tp_ic_vendor_info_l[11];
long long tpd_cdev;

static const struct tp_ic_vendor_item stock_vendor_items[11] = {
	{ .id = 0x01, .keyword = "synaptics" },
	{ .id = 0x04, .keyword = "focal" },
	{ .id = 0x05, .keyword = "goodix" },
	{ .id = 0x08, .keyword = "himax" },
	{ .id = 0x09, .keyword = "novatek" },
	{ .id = 0x0a, .keyword = "ilitek" },
	{ .id = 0x0b, .keyword = "tlsc" },
	{ .id = 0x0c, .keyword = "chipone" },
	{ .id = 0x0f, .keyword = "galaxycore" },
	{ .id = 0x11, .keyword = "omnivision" },
	{ .id = 0xff, .keyword = "Unknown" },
};

static const char *const id_log = "\0015tpd: %s:\n";
static const char *const panel_log = "\0015tpd: %s: panel name %s.\n";
static const char *const result_log = "\0015tpd: %s: tp_chip_id is 0x%02x.\n";
static unsigned int log_count;
static unsigned int logged_id;

static char *strnstr(const char *haystack, const char *needle, size_t length)
{
	size_t needle_length = strlen(needle);

	if (needle_length == 0)
		return (char *)haystack;
	for (; *haystack && length >= needle_length; haystack++, length--) {
		if (memcmp(haystack, needle, needle_length) == 0)
			return (char *)haystack;
	}
	return NULL;
}

static int printk(const char *format, ...)
{
	va_list args;
	const char *function;

	va_start(args, format);
	function = va_arg(args, const char *);
	if (strcmp(function, "get_tp_chip_id") != 0) {
		va_end(args);
		return -1;
	}
	if (strcmp(format, panel_log) == 0 &&
	    strcmp(va_arg(args, const char *), "Unknown_lcd") != 0) {
		va_end(args);
		return -1;
	}
	if (strcmp(format, result_log) == 0)
		logged_id = va_arg(args, unsigned int);
	va_end(args);
	if (strcmp(format, id_log) != 0 && strcmp(format, panel_log) != 0 &&
	    strcmp(format, result_log) != 0)
		return -1;
	log_count++;
	return 0;
}

#include "../../../reconstructed/zte_tpd/get_tp_chip_id.c"

_Static_assert(sizeof(struct tp_ic_vendor_item) == 16, "vendor table stride");
_Static_assert(offsetof(struct tp_ic_vendor_item, keyword) == 8, "keyword offset");

static int failures;

static void expect_int(const char *name, int actual, int expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %d expected %d\n", name, actual, expected);
		failures++;
	}
}

static void expect_byte(const char *name, uint8_t actual, uint8_t expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got 0x%02x expected 0x%02x\n", name, actual, expected);
		failures++;
	}
}

static void reset_fixture(uint8_t *cdev)
{
	memcpy(tp_ic_vendor_info_l, stock_vendor_items, sizeof(stock_vendor_items));
	memset(cdev, 0, 0x447);
	tpd_cdev = (long long)(unsigned long)cdev;
	log_count = 0;
	logged_id = 0;
}

static void test_selected_vendor(unsigned int selected)
{
	uint8_t cdev[0x447];
	unsigned int index;

	reset_fixture(cdev);
	for (index = 0; index < 11; index++)
		tp_ic_vendor_info_l[index].keyword = "not-a-match";
	tp_ic_vendor_info_l[selected].keyword = "Unknown";
	expect_int("selected return", get_tp_chip_id(), 0);
	expect_byte("selected cdev id", cdev[0x446], stock_vendor_items[selected].id);
	expect_int("selected log count", (int)log_count, 3);
	expect_byte("selected logged id", (uint8_t)logged_id, stock_vendor_items[selected].id);
}

static void test_no_match(void)
{
	uint8_t cdev[0x447];
	unsigned int index;

	reset_fixture(cdev);
	for (index = 0; index < 11; index++)
		tp_ic_vendor_info_l[index].keyword = "not-a-match";
	expect_int("no match return", get_tp_chip_id(), -EIO);
	expect_byte("no match cdev id", cdev[0x446], 0xff);
	expect_int("no match log count", (int)log_count, 2);
}

int main(void)
{
	uint8_t cdev[0x447];
	unsigned int index;

	reset_fixture(cdev);
	expect_int("stock Unknown return", get_tp_chip_id(), 0);
	expect_byte("stock Unknown id", cdev[0x446], 0xff);
	expect_int("stock Unknown log count", (int)log_count, 3);
	expect_byte("stock Unknown logged id", (uint8_t)logged_id, 0xff);

	for (index = 0; index < 11; index++)
		test_selected_vendor(index);
	test_no_match();

	if (failures != 0)
		return 1;
	puts("PASS get_tp_chip_id host tests (13 cases)");
	return 0;
}
