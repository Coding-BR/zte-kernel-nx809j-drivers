#include <stdarg.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef void (*tcm_custom_touch_callback_fn)(void);

struct tcm_dev {
	uint8_t reserved[0x3b8];
	void *custom_touch_callback_data;
	tcm_custom_touch_callback_fn custom_touch_callback;
};

_Static_assert(offsetof(struct tcm_dev, custom_touch_callback_data) == 0x3b8,
	"custom touch callback data offset must match stock");
_Static_assert(offsetof(struct tcm_dev, custom_touch_callback) == 0x3c0,
	"custom touch callback offset must match stock");

static unsigned int printk_calls;
static const char *captured_format;
static const char *captured_name;

static int host_printk(const char *format, ...)
{
	va_list arguments;

	printk_calls++;
	captured_format = format;
	va_start(arguments, format);
	captured_name = va_arg(arguments, const char *);
	va_end(arguments);
	return 0;
}

#define printk host_printk
#include "../../../reconstructed/zte_tpd/syna_tcm_set_custom_touch_entity_callback.c"
#undef printk

static void callback_one(void)
{
}

static void callback_two(void)
{
}

static int test_store_and_overwrite(void)
{
	struct tcm_dev tcm;
	uint32_t first_context;
	uint32_t second_context;
	unsigned int calls_before = printk_calls;

	memset(&tcm, 0, sizeof(tcm));
	if (syna_tcm_set_custom_touch_entity_callback(&tcm, callback_one,
					 &first_context) != 0 ||
	    tcm.custom_touch_callback != callback_one ||
	    tcm.custom_touch_callback_data != &first_context) {
		fprintf(stderr, "store contract mismatch\n");
		return 1;
	}
	if (syna_tcm_set_custom_touch_entity_callback(&tcm, callback_two,
					 &second_context) != 0 ||
	    tcm.custom_touch_callback != callback_two ||
	    tcm.custom_touch_callback_data != &second_context) {
		fprintf(stderr, "overwrite contract mismatch\n");
		return 1;
	}
	if (printk_calls != calls_before) {
		fprintf(stderr, "non-null path logged unexpectedly\n");
		return 1;
	}
	return 0;
}

static int test_null_tcm(void)
{
	static const char expected_format[] =
		"\0013[error] %s: Invalid tcm device handle\n";
	unsigned int calls_before = printk_calls;

	if (syna_tcm_set_custom_touch_entity_callback(NULL, callback_one, NULL) != -241) {
		fprintf(stderr, "null path return mismatch\n");
		return 1;
	}
	if (printk_calls != calls_before + 1 ||
	    strcmp(captured_format, expected_format) != 0 ||
	    strcmp(captured_name, "syna_tcm_set_custom_touch_entity_callback") != 0) {
		fprintf(stderr, "null path printk contract mismatch\n");
		return 1;
	}
	return 0;
}

int main(void)
{
	if (test_store_and_overwrite() || test_null_tcm())
		return 1;

	printf("PASS syna_tcm_set_custom_touch_entity_callback host tests (2 cases)\n");
	return 0;
}
