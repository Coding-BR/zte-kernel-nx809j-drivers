#include <stdint.h>
#include <stdio.h>

struct platform_device {
	uint64_t marker;
};

static struct platform_device *observed_pdev;
static unsigned int remove_calls;
static int failures;

void syna_dev_remove(struct platform_device *pdev)
{
	remove_calls++;
	observed_pdev = pdev;
}

#include "../../../reconstructed/zte_tpd/syna_dev_shutdown.c"

static void expect_unsigned(const char *name, unsigned int actual,
				    unsigned int expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %u expected %u\n", name, actual, expected);
		failures++;
	}
}

static void expect_pointer(const char *name, const void *actual,
			   const void *expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %p expected %p\n", name, actual, expected);
		failures++;
	}
}

static void reset_fixture(void)
{
	observed_pdev = (void *)(uintptr_t)UINT64_C(0x1);
	remove_calls = 0;
}

static void test_forwarding(struct platform_device *pdev)
{
	reset_fixture();
	syna_dev_shutdown(pdev);
	expect_unsigned("syna_dev_remove calls", remove_calls, 1);
	expect_pointer("forwarded platform_device", observed_pdev, pdev);
}

int main(void)
{
	struct platform_device first = { .marker = UINT64_C(0x1122334455667788) };
	struct platform_device second = { .marker = UINT64_C(0x8877665544332211) };

	test_forwarding(NULL);
	test_forwarding(&first);
	test_forwarding(&second);
	if (failures != 0)
		return 1;
	puts("PASS syna_dev_shutdown host tests (3 cases)");
	return 0;
}
