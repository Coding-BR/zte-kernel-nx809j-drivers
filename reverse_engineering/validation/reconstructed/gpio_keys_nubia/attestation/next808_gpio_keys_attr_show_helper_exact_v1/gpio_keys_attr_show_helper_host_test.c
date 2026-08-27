#include <stdbool.h>
#include <stdio.h>
#include <string.h>

#define EV_KEY 1U
#define EV_SW 5U
#define ENOMEM 12
#define MAX_BUTTONS 8
#define MAX_BITS 768

struct gpio_button {
	unsigned int type;
	unsigned short code;
	unsigned char disabled;
};

struct gpio_keys_drvdata {
	unsigned int n_events;
	struct gpio_button buttons[MAX_BUTTONS];
};

static bool allocation_fails;
static unsigned int alloc_bits;
static unsigned int alloc_gfp;
static unsigned int printk_type;
static unsigned int scnprintf_size;
static const char *scnprintf_format;
static unsigned int scnprintf_calls;
static unsigned int free_calls;
static bool selected[MAX_BITS];

static void reset_trace(void)
{
	allocation_fails = false;
	alloc_bits = 0;
	alloc_gfp = 0;
	printk_type = 0;
	scnprintf_size = 0;
	scnprintf_format = NULL;
	scnprintf_calls = 0;
	free_calls = 0;
	memset(selected, 0, sizeof(selected));
}

static bool *bitmap_zalloc(unsigned int bits, unsigned int gfp)
{
	alloc_bits = bits;
	alloc_gfp = gfp;
	return allocation_fails ? NULL : selected;
}

static void bitmap_free(bool *bitmap)
{
	(void)bitmap;
	free_calls++;
}

static int fake_printk(const char *format, unsigned int type)
{
	(void)format;
	printk_type = type;
	return 0;
}

static int fake_scnprintf(char *buf, unsigned int size, const char *format,
			  unsigned int bits, bool *bitmap)
{
	unsigned int i;
	unsigned int written = 0;

	scnprintf_size = size;
	scnprintf_format = format;
	scnprintf_calls++;
	if (size != 0) {
		for (i = 0; i < bits && written + 2 < size; i++) {
			if (bitmap[i])
				written += (unsigned int)snprintf(buf + written,
						size - written, "%u,", i);
		}
		if (written)
			buf[written - 1] = '\0';
	}
	return (int)written;
}

static int gpio_keys_attr_show_helper(struct gpio_keys_drvdata *ddata,
					      char *buf, unsigned int type,
					      bool only_disabled)
{
	unsigned int bits = type == EV_KEY ? 0x300U : 0x11U;
	unsigned int i;
	int written;

	/* The stock body traps for types other than EV_KEY and EV_SW. */
	if (type != EV_KEY && type != EV_SW)
		return -1;
	fake_printk("gpio_keys_attr_show_helper", bits);
	if (!bitmap_zalloc(bits, 0xcc0U))
		return -ENOMEM;
	for (i = 0; i < ddata->n_events; i++) {
		struct gpio_button *button = &ddata->buttons[i];

		if (button->type == type &&
		    (!only_disabled || button->disabled == 1))
			selected[button->code] = true;
	}
	written = fake_scnprintf(buf, 0xfffU, "%*pbl", bits, selected);
	buf[written] = '\n';
	bitmap_free(selected);
	return written + 1;
}

#define REQUIRE(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "assertion failed at %s:%d: %s\n", \
			__FILE__, __LINE__, #condition); \
		return false; \
	} \
} while (0)

static bool test_selects_matching_key_events(void)
{
	struct gpio_keys_drvdata ddata = {
		.n_events = 4,
		.buttons = {
			{ .type = EV_KEY, .code = 1, .disabled = 0 },
			{ .type = EV_KEY, .code = 3, .disabled = 1 },
			{ .type = EV_SW, .code = 5, .disabled = 0 },
			{ .type = EV_KEY, .code = 9, .disabled = 0 },
		},
	};
	char buffer[32] = { 0 };
	int result;

	reset_trace();
	result = gpio_keys_attr_show_helper(&ddata, buffer, EV_KEY, false);
	REQUIRE(result == 7);
	REQUIRE(alloc_bits == 0x300U && alloc_gfp == 0xcc0U);
	REQUIRE(printk_type == 0x300U && selected[1] && selected[3]);
	REQUIRE(selected[9] && !selected[5]);
	REQUIRE(scnprintf_calls == 1 && scnprintf_size == 0xfffU);
	REQUIRE(strcmp(scnprintf_format, "%*pbl") == 0);
	REQUIRE(buffer[6] == '\n' && free_calls == 1);
	return true;
}

static bool test_filters_to_disabled_switches(void)
{
	struct gpio_keys_drvdata ddata = {
		.n_events = 3,
		.buttons = {
			{ .type = EV_SW, .code = 2, .disabled = 0 },
			{ .type = EV_SW, .code = 4, .disabled = 1 },
			{ .type = EV_KEY, .code = 6, .disabled = 1 },
		},
	};
	char buffer[32] = { 0 };
	int result;

	reset_trace();
	result = gpio_keys_attr_show_helper(&ddata, buffer, EV_SW, true);
	REQUIRE(result == 3);
	REQUIRE(alloc_bits == 0x11U && printk_type == 0x11U);
	REQUIRE(!selected[2] && selected[4] && !selected[6]);
	REQUIRE(buffer[2] == '\n' && free_calls == 1);
	return true;
}

static bool test_allocation_failure_short_circuits(void)
{
	struct gpio_keys_drvdata ddata = { .n_events = 0 };
	char buffer[8] = { 0 };

	reset_trace();
	allocation_fails = true;
	REQUIRE(gpio_keys_attr_show_helper(&ddata, buffer, EV_KEY, false) == -ENOMEM);
	REQUIRE(alloc_bits == 0x300U && printk_type == 0x300U);
	REQUIRE(scnprintf_calls == 0 && free_calls == 0);
	return true;
}

int main(void)
{
	if (!test_selects_matching_key_events() ||
	    !test_filters_to_disabled_switches() ||
	    !test_allocation_failure_short_circuits())
		return 1;

	puts("PASS gpio_keys_attr_show_helper host tests (3 scenarios)");
	return 0;
}
