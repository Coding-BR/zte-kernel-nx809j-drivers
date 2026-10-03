#include <stdbool.h>
#include <stdio.h>

struct platform_device { unsigned char bytes[16]; };
static struct platform_device *last_device;
static unsigned int remove_calls;

static void syna_dev_remove(struct platform_device *pdev)
{
	last_device = pdev;
	remove_calls++;
}

#include "../../../reconstructed/zte_tpd/syna_dev_shutdown.c"

static int failures;

static void expect_true(const char *name, bool value)
{
	if (!value) { fprintf(stderr, "%s: condition failed\n", name); failures++; }
}

static void test_forwards_device(void)
{
	struct platform_device device = {{0}};
	last_device = NULL; remove_calls = 0;
	syna_dev_shutdown(&device);
	expect_true("remove called once", remove_calls == 1);
	expect_true("same device forwarded", last_device == &device);
}

static void test_forwards_null_without_rewrite(void)
{
	last_device = NULL; remove_calls = 0;
	syna_dev_shutdown(NULL);
	expect_true("remove called for null", remove_calls == 1);
	expect_true("null forwarded", last_device == NULL);
}

int main(void)
{
	test_forwards_device();
	test_forwards_null_without_rewrite();
	if (failures) return 1;
	puts("PASS syna_dev_shutdown host tests (2 scenarios)");
	return 0;
}
