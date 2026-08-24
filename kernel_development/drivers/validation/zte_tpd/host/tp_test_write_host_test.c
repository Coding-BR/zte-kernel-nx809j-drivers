#include <stdarg.h>
#include <stddef.h>
#include <stdio.h>

typedef long ssize_t;
typedef unsigned long size_t_kernel;
typedef long long loff_t;
typedef long long __int64;

struct file {
	int unused;
};

#define __user

static unsigned int printk_calls;

static int printk_stub(const char *format, ...)
{
	(void)format;
	++printk_calls;
	return 0;
}

#define printk printk_stub
#define size_t size_t_kernel
#define unk_39D11 "tpd: reserved no use"

#include "../../../reconstructed/zte_tpd/tp_test_write.c"

#undef size_t
#undef printk
#undef unk_39D11

static int expect_write(const char *name, const char *buffer,
			       size_t_kernel count, ssize_t expected)
{
	const unsigned int calls_before = printk_calls;
	const ssize_t result = tp_test_write(NULL, buffer, count, NULL);

	if (result != expected || printk_calls != calls_before + 1U) {
		(void)fprintf(stderr, "%s: result=%ld expected=%ld calls=%u\n",
			      name, result, expected, printk_calls - calls_before);
		return 1;
	}
	return 0;
}

int main(void)
{
	static const char payload[] = "BBAT";
	int failures = 0;

	failures += expect_write("payload", payload, sizeof(payload) - 1U,
				 (ssize_t)(sizeof(payload) - 1U));
	failures += expect_write("null-buffer", NULL, 7U, 7L);
	failures += expect_write("zero-count", payload, 0U, 0L);
	failures += expect_write("large-count", payload, 0x100000UL, 0x100000L);

	if (failures != 0) {
		return 1;
	}
	(void)printf("tp_test_write host contract: PASS (%u printk calls)\n",
		     printk_calls);
	return 0;
}
