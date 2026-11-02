#include <stdbool.h>
#include <stdio.h>

struct gpio_keys_drvdata { unsigned int marker; };
struct device { struct gpio_keys_drvdata *ddata; };
struct device_attribute { unsigned int marker; };

static struct gpio_keys_drvdata *last_ddata;
static const char *last_buf;
static unsigned int last_type;
static unsigned int helper_calls;
static long helper_result;

static void reset_trace(long result)
{
	last_ddata = NULL;
	last_buf = NULL;
	last_type = 0;
	helper_calls = 0;
	helper_result = result;
}

static long gpio_keys_attr_store_helper(struct gpio_keys_drvdata *ddata,
						const char *buf, unsigned int type)
{
	last_ddata = ddata;
	last_buf = buf;
	last_type = type;
	helper_calls++;
	return helper_result;
}

static long gpio_keys_store_disabled_keys(struct device *dev,
						 struct device_attribute *attr,
						 const char *buf, unsigned long count)
{
	long error;
	(void)attr;
	error = gpio_keys_attr_store_helper(dev->ddata, buf, 1);
	return error ? error : (long)count;
}

#define REQUIRE(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "assertion failed at %s:%d: %s\n", \
			__FILE__, __LINE__, #condition); \
		return false; \
	} \
} while (0)

static bool test_returns_count_on_success(void)
{
	struct gpio_keys_drvdata ddata = { .marker = 0x1234 };
	struct device dev = { .ddata = &ddata };
	const char input[] = "1,3";

	reset_trace(0);
	REQUIRE(gpio_keys_store_disabled_keys(&dev, NULL, input, 3) == 3);
	REQUIRE(helper_calls == 1 && last_ddata == &ddata && last_buf == input);
	REQUIRE(last_type == 1);
	return true;
}

static bool test_preserves_helper_error(void)
{
	struct gpio_keys_drvdata ddata = { .marker = 0xabcd };
	struct device dev = { .ddata = &ddata };
	const char input[] = "bad";

	reset_trace(-22);
	REQUIRE(gpio_keys_store_disabled_keys(&dev, NULL, input, 3) == -22);
	REQUIRE(helper_calls == 1 && last_ddata == &ddata && last_type == 1);
	return true;
}

static bool test_preserves_zero_count(void)
{
	struct gpio_keys_drvdata ddata = { .marker = 0xef01 };
	struct device dev = { .ddata = &ddata };

	reset_trace(0);
	REQUIRE(gpio_keys_store_disabled_keys(&dev, NULL, NULL, 0) == 0);
	REQUIRE(helper_calls == 1 && last_ddata == &ddata && last_buf == NULL);
	return true;
}

int main(void)
{
	if (!test_returns_count_on_success() ||
	    !test_preserves_helper_error() ||
	    !test_preserves_zero_count())
		return 1;
	puts("PASS gpio_keys_store_disabled_keys host tests (3 scenarios)");
	return 0;
}
