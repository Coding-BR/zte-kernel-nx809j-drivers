#include <stdarg.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef void (*tcm_data_duplicator_fn)(void);

struct tcm_data_duplicator {
	void *callback_data;
	tcm_data_duplicator_fn callback;
};

struct tcm_dev {
	uint8_t reserved[0x13d8];
	struct tcm_data_duplicator data_duplicators[UINT8_MAX + 1];
};

struct guarded_tcm {
	uint8_t prefix[32];
	struct tcm_dev tcm;
	uint8_t suffix[32];
};

_Static_assert(sizeof(struct tcm_data_duplicator) == 0x10,
	"data duplicator stride must match stock");
_Static_assert(offsetof(struct tcm_dev, data_duplicators) == 0x13d8,
	"data duplicator base offset must match stock");
_Static_assert(sizeof(((struct tcm_dev *)0)->data_duplicators) == 0x1000,
	"data duplicator clear length must match stock");

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
#include "../../../reconstructed/zte_tpd/syna_tcm_clear_data_duplicator.c"
#undef printk

static int all_bytes_are(const uint8_t *bytes, size_t length, uint8_t value)
{
	for (size_t index = 0; index < length; index++) {
		if (bytes[index] != value)
			return 0;
	}
	return 1;
}

static int test_exact_data_duplicator_clear(void)
{
	struct guarded_tcm guarded;
	unsigned int calls_before = printk_calls;

	memset(&guarded, 0xa5, sizeof(guarded));
	if (syna_tcm_clear_data_duplicator(&guarded.tcm) != 0) {
		fprintf(stderr, "non-null path return mismatch\n");
		return 1;
	}
	if (!all_bytes_are((const uint8_t *)guarded.tcm.data_duplicators,
				  sizeof(guarded.tcm.data_duplicators), 0) ||
	    !all_bytes_are(guarded.prefix, sizeof(guarded.prefix), 0xa5) ||
	    !all_bytes_are(guarded.suffix, sizeof(guarded.suffix), 0xa5) ||
	    guarded.tcm.reserved[0] != 0xa5 ||
	    guarded.tcm.reserved[sizeof(guarded.tcm.reserved) - 1] != 0xa5) {
		fprintf(stderr, "clear bounds contract mismatch\n");
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

	if (syna_tcm_clear_data_duplicator(NULL) != -241) {
		fprintf(stderr, "null path return mismatch\n");
		return 1;
	}
	if (printk_calls != calls_before + 1 ||
	    strcmp(captured_format, expected_format) != 0 ||
	    strcmp(captured_name, "syna_tcm_clear_data_duplicator") != 0) {
		fprintf(stderr, "null path printk contract mismatch\n");
		return 1;
	}
	return 0;
}

int main(void)
{
	if (test_exact_data_duplicator_clear() || test_null_tcm())
		return 1;

	printf("PASS syna_tcm_clear_data_duplicator host tests (2 cases)\n");
	return 0;
}
