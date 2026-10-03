#include <stdbool.h>
#include <stdio.h>

struct gpio_keys_drvdata { unsigned int marker; };
struct device { struct gpio_keys_drvdata *ddata; };
struct device_attribute { unsigned int marker; };

static struct gpio_keys_drvdata *last_ddata;
static char *last_buf;
static unsigned int last_type;
static bool last_only_disabled;
static unsigned int helper_calls;

static void reset_trace(void)
{
	last_ddata = NULL;
	last_buf = NULL;
	last_type = 0;
	last_only_disabled = false;
	helper_calls = 0;
}

static int gpio_keys_attr_show_helper(struct gpio_keys_drvdata *ddata,
					      char *buf, unsigned int type,
					      bool only_disabled)
{
	last_ddata = ddata;
	last_buf = buf;
	last_type = type;
	last_only_disabled = only_disabled;
	helper_calls++;
	return 37;
}

static int gpio_keys_show_disabled_keys(struct device *dev,
						struct device_attribute *attr, char *buf)
{
	(void)attr;
	return gpio_keys_attr_show_helper(dev->ddata, buf, 1, true);
}

#define REQUIRE(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "assertion failed at %s:%d: %s\n", \
			__FILE__, __LINE__, #condition); \
		return false; \
	} \
} while (0)

static bool test_forwards_disabled_key_query(void)
{
	struct gpio_keys_drvdata ddata = { .marker = 0x1234 };
	struct device dev = { .ddata = &ddata };
	struct device_attribute attr = { .marker = 0x5678 };
	char buffer[8];

	reset_trace();
	REQUIRE(gpio_keys_show_disabled_keys(&dev, &attr, buffer) == 37);
	REQUIRE(helper_calls == 1 && last_ddata == &ddata && last_buf == buffer);
	REQUIRE(last_type == 1 && last_only_disabled);
	return true;
}

static bool test_forwards_null_buffer_without_reordering(void)
{
	struct gpio_keys_drvdata ddata = { .marker = 0xabcd };
	struct device dev = { .ddata = &ddata };
	struct device_attribute attr = { .marker = 0xef01 };

	reset_trace();
	REQUIRE(gpio_keys_show_disabled_keys(&dev, &attr, NULL) == 37);
	REQUIRE(helper_calls == 1 && last_ddata == &ddata && last_buf == NULL);
	REQUIRE(last_type == 1 && last_only_disabled);
	return true;
}

int main(void)
{
	if (!test_forwards_disabled_key_query() ||
	    !test_forwards_null_buffer_without_reordering())
		return 1;
	puts("PASS gpio_keys_show_disabled_keys host tests (2 scenarios)");
	return 0;
}
