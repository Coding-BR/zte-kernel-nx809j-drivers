#include <limits.h>
#include <stdint.h>
#include <stdio.h>

typedef int64_t loff_t;

struct file {
	uint64_t marker;
};

#include "../../../reconstructed/zte_tpd/syna_cdev_llseek.c"

static int failures;

static void expect_return(const char *name, loff_t actual)
{
	if (actual != -22) {
		fprintf(stderr, "%s: got %lld expected -22\n", name,
			(long long)actual);
		failures++;
	}
}

static void test_llseek(const char *name, struct file *file, loff_t offset,
			int whence)
{
	expect_return(name, syna_cdev_llseek(file, offset, whence));
}

int main(void)
{
	struct file file = { .marker = UINT64_C(0x5a5aa5a5f0f00f0f) };

	test_llseek("null zero", NULL, 0, 0);
	test_llseek("file positive", &file, 1, 1);
	test_llseek("file negative", &file, -1, 2);
	test_llseek("offset minimum", &file, INT64_MIN, INT_MIN);
	test_llseek("offset maximum", &file, INT64_MAX, INT_MAX);
	if (failures != 0)
		return 1;
	puts("PASS syna_cdev_llseek host tests (5 cases)");
	return 0;
}
