#include <stdarg.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef uint8_t u8;
typedef void (*tcm_report_dispatcher_fn)(void);

struct tcm_report_dispatcher {
	void *callback_data;
	tcm_report_dispatcher_fn callback;
};

struct tcm_dev {
	uint8_t reserved[0x3d8];
	struct tcm_report_dispatcher report_dispatchers[UINT8_MAX + 1];
};

struct printk_event {
	const char *format;
	const char *name;
	unsigned int code;
	int has_code;
};

_Static_assert(sizeof(struct tcm_report_dispatcher) == 0x10,
	"dispatcher stride must match stock");
_Static_assert(offsetof(struct tcm_dev, report_dispatchers) == 0x3d8,
	"dispatcher base offset must match stock");
_Static_assert(offsetof(struct tcm_report_dispatcher, callback) == 0x8,
	"callback offset must match stock");

static struct printk_event events[8];
static unsigned int printk_calls;

static int host_printk(const char *format, ...)
{
	va_list arguments;
	struct printk_event *event;

	if (printk_calls >= sizeof(events) / sizeof(events[0]))
		return -1;
	event = &events[printk_calls++];
	event->format = format;
	va_start(arguments, format);
	event->name = va_arg(arguments, const char *);
	event->has_code = strstr(format, "%X") != NULL ||
			  strstr(format, "%02X") != NULL;
	if (event->has_code)
		event->code = va_arg(arguments, unsigned int);
	va_end(arguments);
	return 0;
}

#define printk host_printk
#include "../../../reconstructed/zte_tpd/syna_tcm_set_report_dispatcher.c"
#undef printk

static void callback_one(void)
{
}

static void callback_two(void)
{
}

static int expect_event(unsigned int index, const char *format,
				unsigned int code, int has_code)
{
	if (index >= printk_calls || strcmp(events[index].format, format) != 0 ||
	    strcmp(events[index].name, "syna_tcm_set_report_dispatcher") != 0 ||
	    events[index].has_code != has_code ||
	    (has_code && events[index].code != code)) {
		fprintf(stderr, "printk event %u contract mismatch\n", index);
		return 1;
	}
	return 0;
}

static int test_dispatcher_paths(void)
{
	static const char warning_format[] =
		"\0014[warn ] %s: The given code 0x%X may not belongs to report\n";
	static const char info_format[] =
		"\0016[info ] %s: Dispatcher for report 0x%02X is registered\n";
	struct tcm_dev tcm;
	uint32_t low_context;
	uint32_t high_context;
	unsigned int calls_before = printk_calls;

	memset(&tcm, 0, sizeof(tcm));
	if (syna_tcm_set_report_dispatcher(&tcm, 0x0f, callback_one,
					 &low_context) != 0 ||
	    syna_tcm_set_report_dispatcher(&tcm, UINT8_MAX, callback_two,
					 &high_context) != 0 ||
	    tcm.report_dispatchers[0x0f].callback != callback_one ||
	    tcm.report_dispatchers[0x0f].callback_data != &low_context ||
	    tcm.report_dispatchers[UINT8_MAX].callback != callback_two ||
	    tcm.report_dispatchers[UINT8_MAX].callback_data != &high_context) {
		fprintf(stderr, "dispatcher store contract mismatch\n");
		return 1;
	}
	if (printk_calls != calls_before + 3 ||
	    expect_event(calls_before, warning_format, 0x0f, 1) ||
	    expect_event(calls_before + 1, info_format, 0x0f, 1) ||
	    expect_event(calls_before + 2, info_format, UINT8_MAX, 1)) {
		return 1;
	}
	return 0;
}

static int test_null_tcm(void)
{
	static const char error_format[] =
		"\0013[error] %s: Invalid tcm device handle\n";
	unsigned int calls_before = printk_calls;

	if (syna_tcm_set_report_dispatcher(NULL, 0, callback_one, NULL) != -241 ||
	    printk_calls != calls_before + 1 ||
	    expect_event(calls_before, error_format, 0, 0)) {
		fprintf(stderr, "null path contract mismatch\n");
		return 1;
	}
	return 0;
}

int main(void)
{
	if (test_dispatcher_paths() || test_null_tcm())
		return 1;

	printf("PASS syna_tcm_set_report_dispatcher host tests (2 cases)\n");
	return 0;
}
