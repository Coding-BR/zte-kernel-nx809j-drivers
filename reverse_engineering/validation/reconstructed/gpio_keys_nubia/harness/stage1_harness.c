#include <stdbool.h>
#include <stddef.h>
#include <stdio.h>

#define EV_KEY 1U
#define EV_SW 5U

typedef long ssize_t;

struct gpio_keys_drvdata {
	int marker;
};

struct device {
	void *drvdata;
};

struct platform_device {
	struct device dev;
};

struct device_attribute {
	int unused;
};

struct platform_driver {
	int marker;
};

static struct gpio_keys_drvdata *last_ddata;
static char *last_show_buffer;
static const char *last_store_buffer;
static unsigned int last_type;
static bool last_only_disabled;
static ssize_t helper_result;
static struct platform_driver *last_driver;
static int register_result;
static unsigned int register_calls;
static unsigned int unregister_calls;

static struct platform_device *to_platform_device(struct device *dev)
{
	return (struct platform_device *)dev;
}

static void *platform_get_drvdata(struct platform_device *pdev)
{
	return pdev->dev.drvdata;
}

static ssize_t gpio_keys_attr_show_helper(struct gpio_keys_drvdata *ddata,
					  char *buf, unsigned int type,
					  bool only_disabled)
{
	last_ddata = ddata;
	last_show_buffer = buf;
	last_type = type;
	last_only_disabled = only_disabled;
	return helper_result;
}

static ssize_t gpio_keys_attr_store_helper(struct gpio_keys_drvdata *ddata,
					   const char *buf,
					   unsigned int type)
{
	last_ddata = ddata;
	last_store_buffer = buf;
	last_type = type;
	return helper_result;
}

#define ATTR_SHOW_FN(name, type, only_disabled)                        \
static ssize_t gpio_keys_show_##name(struct device *dev,               \
				     struct device_attribute *attr,       \
				     char *buf)                            \
{                                                                      \
	struct platform_device *pdev = to_platform_device(dev);          \
	struct gpio_keys_drvdata *ddata = platform_get_drvdata(pdev);     \
	(void)attr;                                                        \
	return gpio_keys_attr_show_helper(ddata, buf, type, only_disabled); \
}

ATTR_SHOW_FN(keys, EV_KEY, false);
ATTR_SHOW_FN(switches, EV_SW, false);
ATTR_SHOW_FN(disabled_keys, EV_KEY, true);
ATTR_SHOW_FN(disabled_switches, EV_SW, true);

#define ATTR_STORE_FN(name, type)                                      \
static ssize_t gpio_keys_store_##name(struct device *dev,              \
				      struct device_attribute *attr,      \
				      const char *buf, size_t count)      \
{                                                                      \
	struct platform_device *pdev = to_platform_device(dev);          \
	struct gpio_keys_drvdata *ddata = platform_get_drvdata(pdev);     \
	ssize_t error;                                                     \
	(void)attr;                                                        \
	error = gpio_keys_attr_store_helper(ddata, buf, type);            \
	if (error)                                                        \
		return error;                                                \
	return (ssize_t)count;                                            \
}

ATTR_STORE_FN(disabled_keys, EV_KEY);
ATTR_STORE_FN(disabled_switches, EV_SW);

static struct platform_driver gpio_keys_device_driver = { .marker = 0x47504b59 };

static int platform_driver_register(struct platform_driver *driver)
{
	register_calls++;
	last_driver = driver;
	return register_result;
}

static void platform_driver_unregister(struct platform_driver *driver)
{
	unregister_calls++;
	last_driver = driver;
}

static int gpio_keys_init(void)
{
	return platform_driver_register(&gpio_keys_device_driver);
}

static void gpio_keys_exit(void)
{
	platform_driver_unregister(&gpio_keys_device_driver);
}

#define REQUIRE(condition) do {                                      \
	if (!(condition)) {                                             \
		fprintf(stderr, "assertion failed at %s:%d: %s\n",       \
			__FILE__, __LINE__, #condition);                     \
		return false;                                             \
	}                                                               \
} while (0)

static struct platform_device pdev;
static struct gpio_keys_drvdata ddata;
static struct device_attribute attribute;
static char show_buffer[32];
static const char store_buffer[] = "1-3";

static void reset_state(void)
{
	pdev.dev.drvdata = &ddata;
	last_ddata = NULL;
	last_show_buffer = NULL;
	last_store_buffer = NULL;
	last_type = 0;
	last_only_disabled = false;
	helper_result = 0;
	last_driver = NULL;
	register_result = 0;
	register_calls = 0;
	unregister_calls = 0;
}

static bool test_init_success(void)
{
	reset_state();
	REQUIRE(gpio_keys_init() == 0);
	REQUIRE(register_calls == 1);
	REQUIRE(last_driver == &gpio_keys_device_driver);
	return true;
}

static bool test_init_error_passthrough(void)
{
	reset_state();
	register_result = -22;
	REQUIRE(gpio_keys_init() == -22);
	REQUIRE(register_calls == 1);
	REQUIRE(last_driver == &gpio_keys_device_driver);
	return true;
}

static bool test_exit_unregisters_driver(void)
{
	reset_state();
	gpio_keys_exit();
	REQUIRE(unregister_calls == 1);
	REQUIRE(last_driver == &gpio_keys_device_driver);
	return true;
}

#define DEFINE_SHOW_TEST(name, function, expected_type, expected_disabled) \
static bool name(void)                                                    \
{                                                                         \
	reset_state();                                                       \
	helper_result = 73;                                                   \
	REQUIRE(function(&pdev.dev, &attribute, show_buffer) == 73);          \
	REQUIRE(last_ddata == &ddata);                                       \
	REQUIRE(last_show_buffer == show_buffer);                             \
	REQUIRE(last_type == expected_type);                                  \
	REQUIRE(last_only_disabled == expected_disabled);                     \
	return true;                                                          \
}

DEFINE_SHOW_TEST(test_show_keys, gpio_keys_show_keys, EV_KEY, false);
DEFINE_SHOW_TEST(test_show_switches, gpio_keys_show_switches, EV_SW, false);
DEFINE_SHOW_TEST(test_show_disabled_keys, gpio_keys_show_disabled_keys, EV_KEY, true);
DEFINE_SHOW_TEST(test_show_disabled_switches, gpio_keys_show_disabled_switches, EV_SW, true);

#define DEFINE_STORE_TEST(name, function, expected_type, result, expected_return) \
static bool name(void)                                                            \
{                                                                                 \
	reset_state();                                                               \
	helper_result = result;                                                       \
	REQUIRE(function(&pdev.dev, &attribute, store_buffer, 17) == expected_return); \
	REQUIRE(last_ddata == &ddata);                                               \
	REQUIRE(last_store_buffer == store_buffer);                                  \
	REQUIRE(last_type == expected_type);                                         \
	return true;                                                                  \
}

DEFINE_STORE_TEST(test_store_disabled_keys_success,
		  gpio_keys_store_disabled_keys, EV_KEY, 0, 17);
DEFINE_STORE_TEST(test_store_disabled_keys_error,
		  gpio_keys_store_disabled_keys, EV_KEY, -16, -16);
DEFINE_STORE_TEST(test_store_disabled_switches_success,
		  gpio_keys_store_disabled_switches, EV_SW, 0, 17);
DEFINE_STORE_TEST(test_store_disabled_switches_error,
		  gpio_keys_store_disabled_switches, EV_SW, -16, -16);

struct test_case {
	const char *name;
	bool (*run)(void);
};

int main(void)
{
	static const struct test_case tests[] = {
		{ "init_success", test_init_success },
		{ "init_error_passthrough", test_init_error_passthrough },
		{ "exit_unregisters_driver", test_exit_unregisters_driver },
		{ "show_keys", test_show_keys },
		{ "show_switches", test_show_switches },
		{ "show_disabled_keys", test_show_disabled_keys },
		{ "show_disabled_switches", test_show_disabled_switches },
		{ "store_disabled_keys_success", test_store_disabled_keys_success },
		{ "store_disabled_keys_error", test_store_disabled_keys_error },
		{ "store_disabled_switches_success", test_store_disabled_switches_success },
		{ "store_disabled_switches_error", test_store_disabled_switches_error },
	};
	size_t index;

	for (index = 0; index < sizeof(tests) / sizeof(tests[0]); index++) {
		if (!tests[index].run()) {
			printf("FAIL %s\n", tests[index].name);
			return 1;
		}
		printf("PASS %s\n", tests[index].name);
	}
	printf("SUMMARY %zu/%zu\n", index, sizeof(tests) / sizeof(tests[0]));
	return 0;
}
