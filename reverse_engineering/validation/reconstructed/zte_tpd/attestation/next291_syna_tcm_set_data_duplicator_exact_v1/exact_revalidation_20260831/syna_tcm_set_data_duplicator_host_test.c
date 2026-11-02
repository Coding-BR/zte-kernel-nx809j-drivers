#include <stdarg.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef uint8_t u8;
typedef void (*tcm_data_duplicator_fn)(void);

struct tcm_data_duplicator {
	void *callback_data;
	tcm_data_duplicator_fn callback;
};

struct tcm_dev {
	uint8_t reserved[0x13d8];
	struct tcm_data_duplicator data_duplicators[UINT8_MAX + 1];
};

_Static_assert(sizeof(struct tcm_data_duplicator) == 0x10,
	"data duplicator stride must match stock");
_Static_assert(offsetof(struct tcm_dev, data_duplicators) == 0x13d8,
	"data duplicator base offset must match stock");
_Static_assert(offsetof(struct tcm_data_duplicator, callback) == 0x8,
	"callback offset must match stock");

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
#include "../../../reconstructed/zte_tpd/syna_tcm_set_data_duplicator.c"
#undef printk

static void callback_one(void)
{
}

static void callback_two(void)
{
}

static int test_indexed_stores(void)
{
	struct tcm_dev tcm;
	uint32_t first_context;
	uint32_t last_context;
	unsigned int calls_before = printk_calls;

	memset(&tcm, 0, sizeof(tcm));
	if (syna_tcm_set_data_duplicator(&tcm, 0, callback_one,
					 &first_context) != 0 ||
	    tcm.data_duplicators[0].callback != callback_one ||
	    tcm.data_duplicators[0].callback_data != &first_context) {
		fprintf(stderr, "index zero store contract mismatch\n");
		return 1;
	}
	if (syna_tcm_set_data_duplicator(&tcm, UINT8_MAX, callback_two,
					 &last_context) != 0 ||
	    tcm.data_duplicators[UINT8_MAX].callback != callback_two ||
	    tcm.data_duplicators[UINT8_MAX].callback_data != &last_context) {
		fprintf(stderr, "maximum index store contract mismatch\n");
		return 1;
	}
	if (tcm.data_duplicators[0].callback != callback_one ||
	    tcm.data_duplicators[0].callback_data != &first_context) {
		fprintf(stderr, "maximum index modified entry zero\n");
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
	uint32_t callback_context;
	unsigned int calls_before = printk_calls;

	if (syna_tcm_set_data_duplicator(NULL, UINT8_MAX, callback_one,
					 &callback_context) != -241) {
		fprintf(stderr, "null path return mismatch\n");
		return 1;
	}
	if (printk_calls != calls_before + 1 ||
	    strcmp(captured_format, expected_format) != 0 ||
	    strcmp(captured_name, "syna_tcm_set_data_duplicator") != 0) {
		fprintf(stderr, "null path printk contract mismatch\n");
		return 1;
	}
	return 0;
}

int main(void)
{
	if (test_indexed_stores() || test_null_tcm())
		return 1;

	printf("PASS syna_tcm_set_data_duplicator host tests (2 cases)\n");
	return 0;
}
