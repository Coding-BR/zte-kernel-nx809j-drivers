#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define KERN_INFO "\0016"

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

struct inode {
	unsigned long cookie;
};

struct file {
	void *private_data;
};

#define printk host_printk
#include "../../../reconstructed/zte_tpd/syna_open.c"
#undef printk

static int run_case(const char *name, void *inode, void *initial,
		    void *expected)
{
	static const char expected_format[] =
		KERN_INFO "[info ] %s: zte_evice open\n";
	struct file filp = { .private_data = initial };
	unsigned int calls_before = printk_calls;

	if (syna_open(inode, &filp) != 0) {
		fprintf(stderr, "%s: nonzero return\n", name);
		return 1;
	}
	if (filp.private_data != expected) {
		fprintf(stderr, "%s: private_data offset mismatch\n", name);
		return 1;
	}
	if (printk_calls != calls_before + 1 ||
	    strcmp(captured_format, expected_format) != 0 ||
	    strcmp(captured_name, "syna_open") != 0) {
		fprintf(stderr, "%s: printk contract mismatch\n", name);
		return 1;
	}
	return 0;
}

int main(void)
{
	struct inode inode = { .cookie = 0x1234 };
	uint8_t backing[0x1000];

	if (run_case("null_inode", NULL, backing + 0x4a0, backing) ||
	    run_case("non_null_inode", &inode, backing + 0x820,
		     backing + 0x380))
		return 1;

	printf("PASS syna_open host tests (2 cases)\n");
	return 0;
}
