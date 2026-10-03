#include <stdarg.h>
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
	unsigned long cookie;
};

#define printk host_printk
#include "../../../reconstructed/zte_tpd/syna_release.c"
#undef printk

static int run_case(const char *name, void *inode, void *filp)
{
	static const char expected_format[] =
		KERN_INFO "[info ] %s: zte_evice close\n";
	unsigned int calls_before = printk_calls;

	if (syna_release(inode, filp) != 0) {
		fprintf(stderr, "%s: nonzero return\n", name);
		return 1;
	}
	if (printk_calls != calls_before + 1 ||
	    strcmp(captured_format, expected_format) != 0 ||
	    strcmp(captured_name, "syna_release") != 0) {
		fprintf(stderr, "%s: printk contract mismatch\n", name);
		return 1;
	}
	return 0;
}

int main(void)
{
	struct inode inode = { .cookie = 0x1234 };
	struct file filp = { .cookie = 0x5678 };

	if (run_case("null_arguments", NULL, NULL) ||
	    run_case("inode_only", &inode, NULL) ||
	    run_case("both_arguments", &inode, &filp))
		return 1;

	printf("PASS syna_release host tests (3 cases)\n");
	return 0;
}
