#define ZTE_MISC_HOST_TEST 1
#include "../zte_misc.c"

struct fake_state {
	int failures;
	int kstrtoint_result;
	int resistance_raw;
	int kstrtoll_result;
	long long timezone_value;
	int battery_present;
	int battery_property_result;
	int battery_property_value;
	int power_put_calls;
	struct device_node *chosen;
	int register_result;
	int register_calls;
	int unregister_calls;
	struct platform_driver *registered_driver;
};

static struct fake_state fake;
static struct power_supply battery;
static struct property label_property;

#define EXPECT(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "FAIL %s:%d: %s\n", __func__, __LINE__, #condition); \
		fake.failures++; \
	} \
} while (0)

static void reset_fake(void)
{
	int i;
	for (i = 0; i < NODE_OPS_COUNT; i++) {
		node_ops_list[i].set = NULL;
		node_ops_list[i].get = NULL;
		node_ops_list[i].show = NULL;
		node_ops_list[i].priv = NULL;
	}
	memset(&fake, 0, sizeof(fake));
	memset(zte_gpios, 0, sizeof(zte_gpios));
	zte_poweroff_charging = 0;
	zte_poweroff_charging_param = false;
	zte_timezone = 0;
	fake.battery_present = 1;
}

void fake_log(const char *format, ...) { (void)format; }

int kstrtoint(const char *text, unsigned int base, int *result)
{
	(void)text;
	EXPECT(base == 10);
	if (!fake.kstrtoint_result)
		*result = fake.resistance_raw;
	return fake.kstrtoint_result;
}

int kstrtoll(const char *text, unsigned int base, long long *result)
{
	(void)text;
	EXPECT(base == 0);
	if (!fake.kstrtoll_result)
		*result = fake.timezone_value;
	return fake.kstrtoll_result;
}

struct power_supply *power_supply_get_by_name(const char *name)
{
	EXPECT(!strcmp(name, "battery"));
	return fake.battery_present ? &battery : NULL;
}

int power_supply_get_property(struct power_supply *supply, int property,
			      union power_supply_propval *value)
{
	EXPECT(supply == &battery);
	EXPECT(property == 0x16);
	if (!fake.battery_property_result)
		value->intval = fake.battery_property_value;
	return fake.battery_property_result;
}

void power_supply_put(struct power_supply *supply)
{ EXPECT(supply == &battery); fake.power_put_calls++; }

struct device_node *of_find_node_opts_by_path(const char *path, const char *opts)
{
	(void)opts;
	EXPECT(!strcmp(path, "/chosen"));
	return fake.chosen;
}

int of_property_read_string(const struct device_node *node, const char *property,
			    const char **value)
{
	EXPECT(!strcmp(property, "bootargs"));
	if (!node->bootargs)
		return -EINVAL;
	*value = node->bootargs;
	return 0;
}

struct device_node *of_get_next_child(const struct device_node *node,
				      struct device_node *previous)
{
	return previous ? previous->sibling : node->child;
}

struct property *of_find_property(const struct device_node *node,
				  const char *name, int *length)
{
	(void)length;
	EXPECT(!strcmp(name, "label"));
	return node->label ? &label_property : NULL;
}

const void *of_get_property(const struct device_node *node, const char *name,
			    int *length)
{
	(void)length;
	EXPECT(!strcmp(name, "label"));
	return node->label;
}

int of_get_named_gpio(const struct device_node *node, const char *name, int index)
{
	EXPECT(!strcmp(name, "zte-misc"));
	EXPECT(index == 0);
	return node->gpio;
}

char *kstrdup(const char *text, unsigned int flags)
{ (void)flags; return text ? strdup(text) : NULL; }

int platform_driver_register(struct platform_driver *driver)
{
	fake.register_calls++;
	fake.registered_driver = driver;
	return fake.register_result;
}

void platform_driver_unregister(struct platform_driver *driver)
{
	EXPECT(driver == fake.registered_driver);
	fake.unregister_calls++;
}

static int callback_set_value;
static int callback_get_value;
static int callback_result;

static int test_set(const char *value, void *priv)
{
	EXPECT(priv == &callback_set_value);
	callback_set_value = atoi(value);
	return callback_result;
}

static int test_get(char *buffer, void *priv)
{
	EXPECT(priv == &callback_set_value);
	callback_get_value++;
	sprintf(buffer, "%d", callback_set_value);
	return callback_result;
}

static int test_show(char *buffer, void *priv)
{ (void)buffer; (void)priv; return 0; }

static struct zte_node_ops callback = {
	.name = "screen_on",
	.set = test_set,
	.get = test_get,
	.show = test_show,
	.priv = NULL,
};

static void register_test_callback(void)
{
	callback_set_value = 12;
	callback_get_value = 0;
	callback_result = 0;
	EXPECT(zte_misc_register_callback(&callback, &callback_set_value) == 0);
}

static void test_registry_and_values(void)
{
	struct zte_node_ops unknown = { .name = "missing" };
	char value[64];
	struct kernel_param parameter = { .name = "screen_on" };

	reset_fake();
	EXPECT(zte_misc_register_callback(NULL, NULL) == -EINVAL);
	EXPECT(zte_misc_register_callback(&unknown, NULL) == -EINVAL);
	register_test_callback();
	EXPECT(zte_misc_register_callback(&callback, NULL) == -EBUSY);
	EXPECT(zte_misc_get_node_val("screen_on") == 12);
	EXPECT(zte_misc_get_node_val("") == -EINVAL);
	EXPECT(zte_misc_get_node_val("missing") == -EINVAL);
	EXPECT(zte_misc_common_callback_set("31", &parameter) == 0);
	EXPECT(callback_set_value == 31);
	memset(value, 0, sizeof(value));
	EXPECT(zte_misc_common_callback_get(value, &parameter) == 0);
	EXPECT(!strcmp(value, "31"));
	callback_result = -EIO;
	EXPECT(zte_misc_common_callback_set("32", &parameter) == -EIO);
}

static void test_battery_vendor(void)
{
	char output[64] = { 0 };
	struct kernel_param parameter = { .name = "battery_module_pack_vendor" };

	reset_fake();
	fake.kstrtoint_result = -EINVAL;
	EXPECT(battery_module_pack_vendor_get(output, &parameter) == -1);
	fake.kstrtoint_result = 0;
	fake.resistance_raw = 33000;
	EXPECT(battery_module_pack_vendor_get(output, &parameter) == 2);
	EXPECT(!strcmp(output, " 4"));
	fake.resistance_raw = 470000;
	EXPECT(battery_module_pack_vendor_get(output, &parameter) == 2);
	EXPECT(!strcmp(output, " 0"));
	fake.resistance_raw = 1000000;
	EXPECT(battery_module_pack_vendor_get(output, &parameter) == -1);
}

static void test_design_capacity(void)
{
	char output[64] = { 0 };
	struct kernel_param parameter = { .name = "design_capacity" };

	reset_fake();
	fake.battery_property_value = 5000000;
	EXPECT(zte_misc_get_design_capacity(output, &parameter) == 4);
	EXPECT(!strcmp(output, "5000"));
	EXPECT(fake.power_put_calls == 1);
	reset_fake();
	fake.battery_present = 0;
	EXPECT(zte_misc_get_design_capacity(output, &parameter) == 1);
	EXPECT(!strcmp(output, "0"));
	reset_fake();
	fake.battery_property_result = -EIO;
	EXPECT(zte_misc_get_design_capacity(output, &parameter) == 1);
	EXPECT(!strcmp(output, "0"));
}

static void test_power_and_timezone(void)
{
	reset_fake();
	EXPECT(zte_poweroff_charging_handle("charger") == 0);
	EXPECT(zte_poweroff_charging_status() == 1);
	EXPECT(zte_poweroff_charging_handle("normal") == 0);
	zte_poweroff_charging_param = true;
	EXPECT(zte_poweroff_charging_status() == 1);
	fake.timezone_value = -180;
	EXPECT(zte_timezone_setup("-180") == 1);
	EXPECT(zte_timezone == -180);
	fake.kstrtoll_result = -EINVAL;
	EXPECT(zte_timezone_setup("bad") == -EINVAL);
}

static void test_probe_and_gpio_lookup(void)
{
	struct device_node chosen = { .path = "/chosen", .bootargs = "x kmparam.mode=charger" };
	struct device_node root = { 0 };
	struct device_node child_a = { .label = "charge_en", .gpio = 23 };
	struct device_node child_b = { .label = NULL, .gpio = 99 };
	struct platform_device device = { .dev = { .of_node = &root } };
	struct platform_device missing = { 0 };

	reset_fake();
	fake.chosen = &chosen;
	root.child = &child_a;
	child_a.sibling = &child_b;
	EXPECT(zte_misc_probe(&device) == 0);
	EXPECT(zte_poweroff_charging_param);
	EXPECT(get_sysnumber_byname("charge_en") == 23);
	EXPECT(get_sysnumber_byname("missing") == 0);
	zte_misc_remove(&device);
	EXPECT(get_sysnumber_byname("charge_en") == 23);
	EXPECT(zte_misc_probe(&missing) == -ENODEV);
}

static void test_lifecycle(void)
{
	reset_fake();
	EXPECT(init_module() == 0);
	EXPECT(fake.register_calls == 1);
	EXPECT(!strcmp(fake.registered_driver->driver.name, "zte-misc"));
	cleanup_module();
	EXPECT(fake.unregister_calls == 1);
	reset_fake();
	fake.register_result = -EIO;
	EXPECT(init_module() == -EIO);
}

int main(void)
{
	test_registry_and_values();
	test_battery_vendor();
	test_design_capacity();
	test_power_and_timezone();
	test_probe_and_gpio_lookup();
	test_lifecycle();
	if (fake.failures)
		return 1;
	puts("PASS zte_misc host tests");
	return 0;
}
