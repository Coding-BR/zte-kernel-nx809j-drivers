#include <stdio.h>

struct device { unsigned int marker; };
struct device_attribute { unsigned int marker; };

static unsigned int printk_calls;
static const char *last_message;

static void reset_trace(void)
{
	printk_calls = 0;
	last_message = NULL;
}

static int _printk(const char *message)
{
	printk_calls++;
	last_message = message;
	return 0;
}

static long gpio_keys_store_GamekeyStatus(struct device *dev,
						  struct device_attribute *attr,
						  const char *buf, unsigned long count)
{
	static const char message[] = "3[gpio-keys_nubia] do not support store GamekeyStatus";
	(void)dev;
	(void)attr;
	(void)buf;
	_printk(message);
	return (long)count;
}

#define REQUIRE(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "assertion failed at %s:%d: %s\n", \
			__FILE__, __LINE__, #condition); \
		return 0; \
	} \
} while (0)

static int test_returns_count_and_logs(void)
{
	struct device dev = { .marker = 1 };
	const char message[] = "ignored";
	reset_trace();
	REQUIRE(gpio_keys_store_GamekeyStatus(&dev, NULL, message, 7) == 7);
	REQUIRE(printk_calls == 1 && last_message != NULL);
	return 1;
}

static int test_preserves_negative_count_value(void)
{
	struct device dev = { .marker = 2 };
	reset_trace();
	REQUIRE(gpio_keys_store_GamekeyStatus(&dev, NULL, NULL, (unsigned long)-1) == (long)(unsigned long)-1);
	REQUIRE(printk_calls == 1);
	return 1;
}

static int test_preserves_zero_count(void)
{
	struct device dev = { .marker = 3 };
	reset_trace();
	REQUIRE(gpio_keys_store_GamekeyStatus(&dev, NULL, NULL, 0) == 0);
	REQUIRE(printk_calls == 1);
	return 1;
}

int main(void)
{
	if (!test_returns_count_and_logs() ||
	    !test_preserves_negative_count_value() ||
	    !test_preserves_zero_count())
		return 1;
	puts("PASS gpio_keys_store_GamekeyStatus host tests (3 scenarios)");
	return 0;
}
