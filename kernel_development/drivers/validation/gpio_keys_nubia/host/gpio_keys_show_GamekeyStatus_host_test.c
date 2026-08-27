#include <stdbool.h>
#include <stdio.h>
#include <string.h>

#define EV_SW 5U

struct gpio_desc { int marker; };
struct input_dev { unsigned int type; };
struct gpio_button_data {
	struct input_dev *button;
	unsigned short *code;
	void *gpiod;
	unsigned int gpion;
};
struct gpio_keys_platform_data { unsigned int nbuttons; };
struct gpio_keys_drvdata {
	struct gpio_keys_platform_data *pdata;
	struct gpio_button_data *data;
};
struct platform_device { struct gpio_keys_drvdata *ddata; };
struct device { struct platform_device *pdev; };
struct device_attribute { unsigned int marker; };

static int sleep_value;
static int raw_value;
static unsigned int sleep_calls;
static unsigned int raw_calls;
static unsigned int desc_calls;

static void reset_trace(void)
{
	sleep_value = 0;
	raw_value = 0;
	sleep_calls = 0;
	raw_calls = 0;
	desc_calls = 0;
}

static int gpiod_get_value_cansleep(void *desc)
{
	(void)desc;
	sleep_calls++;
	return sleep_value;
}

static struct gpio_desc *gpio_to_desc(unsigned int gpio)
{
	static struct gpio_desc desc;
	desc.marker = (int)gpio;
	desc_calls++;
	return &desc;
}

static int gpiod_get_raw_value(struct gpio_desc *desc)
{
	(void)desc;
	raw_calls++;
	return raw_value;
}

static int gpio_keys_show_GamekeyStatus(struct device *dev,
						struct device_attribute *attr, char *buf)
{
	struct platform_device *pdev = dev->pdev;
	struct gpio_keys_drvdata *ddata = pdev->ddata;
	int state = -1;

	(void)attr;
	for (unsigned int i = 0; i < ddata->pdata->nbuttons; i++) {
		struct gpio_button_data *bdata = &ddata->data[i];
		if (bdata->button && *bdata->code == 0xf &&
		    bdata->button->type == EV_SW) {
			int gpios_state = gpiod_get_value_cansleep(bdata->gpiod);
			int gpion_state = gpiod_get_raw_value(gpio_to_desc(bdata->gpion));
			state = !gpios_state && gpion_state;
			break;
		}
	}
	return snprintf(buf, 4, "%d\n", state);
}

#define REQUIRE(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "assertion failed at %s:%d: %s\n", \
			__FILE__, __LINE__, #condition); \
		return false; \
	} \
} while (0)

static bool test_no_gamekey_reports_minus_one(void)
{
	struct gpio_keys_platform_data pdata = { .nbuttons = 0 };
	struct gpio_keys_drvdata ddata = { .pdata = &pdata };
	struct platform_device pdev = { .ddata = &ddata };
	struct device dev = { .pdev = &pdev };
	char buffer[4] = { 0 };

	reset_trace();
	REQUIRE(gpio_keys_show_GamekeyStatus(&dev, NULL, buffer) == 3);
	REQUIRE(strcmp(buffer, "-1\n") == 0);
	REQUIRE(sleep_calls == 0 && raw_calls == 0 && desc_calls == 0);
	return true;
}

static bool test_active_gamekey_reports_one(void)
{
	struct input_dev input = { .type = EV_SW };
	unsigned short code = 0xf;
	struct gpio_button_data button = { .button = &input, .code = &code,
		.gpiod = &input, .gpion = 17 };
	struct gpio_keys_platform_data pdata = { .nbuttons = 1 };
	struct gpio_keys_drvdata ddata = { .pdata = &pdata, .data = &button };
	struct platform_device pdev = { .ddata = &ddata };
	struct device dev = { .pdev = &pdev };
	char buffer[4] = { 0 };

	reset_trace();
	sleep_value = 0;
	raw_value = 1;
	REQUIRE(gpio_keys_show_GamekeyStatus(&dev, NULL, buffer) == 2);
	REQUIRE(strcmp(buffer, "1\n") == 0);
	REQUIRE(sleep_calls == 1 && raw_calls == 1 && desc_calls == 1);
	return true;
}

static bool test_inactive_or_nonmatching_gamekey_reports_zero(void)
{
	struct input_dev input = { .type = EV_SW };
	unsigned short code = 0xe;
	struct gpio_button_data button = { .button = &input, .code = &code,
		.gpiod = &input, .gpion = 18 };
	struct gpio_keys_platform_data pdata = { .nbuttons = 1 };
	struct gpio_keys_drvdata ddata = { .pdata = &pdata, .data = &button };
	struct platform_device pdev = { .ddata = &ddata };
	struct device dev = { .pdev = &pdev };
	char buffer[4] = { 0 };

	reset_trace();
	sleep_value = 1;
	raw_value = 1;
	REQUIRE(gpio_keys_show_GamekeyStatus(&dev, NULL, buffer) == 3);
	REQUIRE(strcmp(buffer, "-1\n") == 0);
	REQUIRE(sleep_calls == 0 && raw_calls == 0 && desc_calls == 0);
	code = 0xf;
	reset_trace();
	REQUIRE(gpio_keys_show_GamekeyStatus(&dev, NULL, buffer) == 2);
	REQUIRE(strcmp(buffer, "0\n") == 0);
	REQUIRE(sleep_calls == 1 && raw_calls == 1 && desc_calls == 1);
	return true;
}

int main(void)
{
	if (!test_no_gamekey_reports_minus_one() ||
	    !test_active_gamekey_reports_one() ||
	    !test_inactive_or_nonmatching_gamekey_reports_zero())
		return 1;
	puts("PASS gpio_keys_show_GamekeyStatus host tests (3 scenarios)");
	return 0;
}
