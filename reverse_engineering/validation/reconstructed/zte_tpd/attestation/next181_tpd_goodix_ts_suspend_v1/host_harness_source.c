#include <stddef.h>
#include <stdint.h>
#include <stdio.h>

typedef int64_t __int64;
typedef uint64_t _QWORD;

struct device {
	int marker;
};

struct pdev_frame {
	uint8_t reserved[8];
	uintptr_t device_base;
};

union device_storage {
	max_align_t alignment;
	uint8_t bytes[16 + sizeof(struct device)];
};

_Static_assert(offsetof(struct pdev_frame, device_base) == 8,
	       "stock reads pdev + 8");

static struct device *observed_device;
static unsigned int suspend_calls;
static int suspend_result;
static int failures;

int syna_dev_suspend(struct device *dev)
{
	suspend_calls++;
	observed_device = dev;
	return suspend_result;
}

#include "../../../reconstructed/zte_tpd/tpd_goodix_ts_suspend.c"

static void expect_int(const char *name, int actual, int expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %d expected %d\n", name, actual, expected);
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

static void test_forwarding(int marker, int expected_result)
{
	struct pdev_frame pdev = { 0 };
	union device_storage storage = { 0 };
	struct device *expected = (struct device *)(void *)(storage.bytes + 16);

	expected->marker = marker;
	pdev.device_base = (uintptr_t)(void *)storage.bytes;
	observed_device = (void *)(uintptr_t)UINT64_C(1);
	suspend_calls = 0;
	suspend_result = expected_result;

	expect_int("suspend result", tpd_goodix_ts_suspend(&pdev), expected_result);
	expect_int("syna_dev_suspend calls", (int)suspend_calls, 1);
	expect_pointer("forwarded device", observed_device, expected);
	expect_int("device marker", observed_device->marker, marker);
}

int main(void)
{
	test_forwarding(17, 0);
	test_forwarding(42, -22);
	if (failures != 0)
		return 1;
	puts("PASS tpd_goodix_ts_suspend host tests (2 cases)");
	return 0;
}
