#define ZTE_POWER_SUPPLY_HOST_TEST
#include "../zte_power_supply.c"

struct host_state {
	int failures;
	int warnings;
	int bugs;
	int device_adds;
	int device_unregisters;
	int device_releases;
	int devm_allocs;
	int devm_frees;
	int devres_adds;
	int links_created;
	int links_removed;
	int uevents;
	int notifier_calls;
	int external_calls;
	int charged_calls;
	int get_calls;
	int set_calls;
	int fail_device_add;
	int fail_wakeup;
	int fail_devm_alloc;
	int fail_sysfs_link;
};

static struct host_state host;
static struct workqueue_struct normal_wq = { .name = "system" };
static struct workqueue_struct efficient_wq = { .name = "efficient" };
struct workqueue_struct *system_wq = &normal_wq;
struct workqueue_struct *system_power_efficient_wq = &efficient_wq;

#define CHECK(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "FAIL %s:%d: %s\n", __func__, __LINE__, #condition); \
		host.failures++; \
	} \
} while (0)

struct supply_values {
	int values[65];
};

void host_log(const char *format, ...)
{
	(void)format;
}

void host_bug(void)
{
	host.bugs++;
}

int host_warn_on(bool condition)
{
	if (condition)
		host.warnings++;
	return condition;
}

void *host_kzalloc(size_t size, gfp_t flags)
{
	(void)flags;
	return calloc(1, size);
}

void *host_devm_kmalloc(struct device *dev, size_t size, gfp_t flags)
{
	(void)dev;
	(void)flags;
	if (host.fail_devm_alloc)
		return NULL;
	host.devm_allocs++;
	return calloc(1, size);
}

void host_devm_kfree(struct device *dev, const void *pointer)
{
	(void)dev;
	if (pointer) {
		host.devm_frees++;
		free((void *)pointer);
	}
}

char *host_kasprintf(gfp_t flags, const char *format, ...)
{
	char *result;
	va_list args;
	va_list copy;
	int length;

	(void)flags;
	va_start(args, format);
	va_copy(copy, args);
	length = vsnprintf(NULL, 0, format, copy);
	va_end(copy);
	if (length < 0) {
		va_end(args);
		return NULL;
	}
	result = malloc((size_t)length + 1);
	if (result)
		vsnprintf(result, (size_t)length + 1, format, args);
	va_end(args);
	return result;
}

struct class *host_class_create(const char *name)
{
	(void)name;
	return calloc(1, sizeof(struct class));
}

void class_destroy(struct class *class_value)
{
	free(class_value);
}

struct device *class_find_device(struct class *class_value, struct device *start,
				 const void *data, int (*match)(struct device *, const void *))
{
	int i;
	(void)start;
	for (i = 0; i < class_value->device_count; i++)
		if (match(class_value->devices[i], data))
			return class_value->devices[i];
	return NULL;
}

int class_for_each_device(struct class *class_value, struct device *start,
			  void *data, int (*callback)(struct device *, void *))
{
	int i, ret;
	(void)start;
	for (i = 0; i < class_value->device_count; i++) {
		ret = callback(class_value->devices[i], data);
		if (ret)
			return ret;
	}
	return 0;
}

void device_initialize(struct device *dev)
{
	dev->kobj.dev = dev;
}

int device_add(struct device *dev)
{
	if (host.fail_device_add)
		return -EIO;
	dev->added = true;
	dev->class->devices[dev->class->device_count++] = dev;
	host.device_adds++;
	return 0;
}

void device_unregister(struct device *dev)
{
	int i;
	for (i = 0; i < dev->class->device_count; i++) {
		if (dev->class->devices[i] == dev) {
			memmove(&dev->class->devices[i], &dev->class->devices[i + 1],
				(size_t)(dev->class->device_count - i - 1) * sizeof(dev));
			dev->class->device_count--;
			break;
		}
	}
	dev->added = false;
	host.device_unregisters++;
	if (dev->type && dev->type->release) {
		host.device_releases++;
		dev->type->release(dev);
	}
}

void put_device(struct device *dev)
{
	if (!dev->added && dev->type && dev->type->release) {
		host.device_releases++;
		dev->type->release(dev);
	}
}

int dev_set_name(struct device *dev, const char *format, ...)
{
	va_list args;
	va_start(args, format);
	vsnprintf(dev->name, sizeof(dev->name), format, args);
	va_end(args);
	return 0;
}

int device_init_wakeup(struct device *dev, bool enabled)
{
	if (host.fail_wakeup)
		return -EIO;
	dev->wakeup_capable = enabled;
	dev->wakeup_enabled = enabled;
	return 0;
}

void device_wakeup_disable(struct device *dev)
{
	dev->wakeup_enabled = false;
}

void device_set_wakeup_capable(struct device *dev, bool capable)
{
	dev->wakeup_capable = capable;
}

bool device_trylock(struct device *dev)
{
	if (dev->locked)
		return false;
	dev->locked = true;
	return true;
}

void device_unlock(struct device *dev)
{
	dev->locked = false;
}

void msleep(unsigned int milliseconds)
{
	(void)milliseconds;
}

int host_of_parse_phandle_with_args(struct device_node *node, const char *property,
				    int index, struct of_phandle_args *args)
{
	if (!node)
		return -ENODEV;
	if (!strcmp(property, "monitored-battery")) {
		if (index || !node->monitored_battery)
			return -ENOENT;
		args->np = node->monitored_battery;
		return 0;
	}
	if (strcmp(property, "power-supplies") || index < 0 ||
	    index >= node->power_supply_count)
		return -ENOENT;
	args->np = node->power_supplies[index];
	return 0;
}

struct device_node *host_of_parse_phandle(struct device_node *node,
					  const char *property, int index)
{
	struct of_phandle_args args = { 0 };
	return host_of_parse_phandle_with_args(node, property, index, &args) ?
		NULL : args.np;
}

int host_of_property_read_string(struct device_node *node, const char *property,
				 const char **value)
{
	if (!node || strcmp(property, "compatible") || !node->compatible)
		return -EINVAL;
	*value = node->compatible;
	return 0;
}

static int basic_property_index(const char *property)
{
	static const char *const names[] = {
		"energy-full-design-microwatt-hours",
		"charge-full-design-microamp-hours",
		"voltage-min-design-microvolt",
		"voltage-max-design-microvolt",
		"precharge-current-microamp",
		"charge-term-current-microamp",
		"constant-charge-current-max-microamp",
		"constant-charge-voltage-max-microvolt",
		"factory-internal-resistance-micro-ohms",
	};
	int i;
	for (i = 0; i < (int)ARRAY_SIZE(names); i++)
		if (!strcmp(property, names[i]))
			return i;
	return -1;
}

int host_of_property_read_u32(struct device_node *node, const char *property,
			      void *value)
{
	int index = basic_property_index(property);
	if (!node || index < 0)
		return -EINVAL;
	*(int *)value = node->basic_values[index];
	return 0;
}

int host_of_property_count_u32_elems(struct device_node *node, const char *property)
{
	if (!node || strcmp(property, "ocv-capacity-celsius"))
		return -EINVAL;
	return node->ocv_temp_count ? node->ocv_temp_count : -EINVAL;
}

int host_of_property_read_u32_array(struct device_node *node, const char *property,
				    void *values, size_t count)
{
	if (!node || strcmp(property, "ocv-capacity-celsius") ||
	    count > (size_t)node->ocv_temp_count)
		return -EINVAL;
	memcpy(values, node->ocv_temps, count * sizeof(int));
	return 0;
}

const __be32 *host_of_get_property(struct device_node *node, const char *property,
					  int *size)
{
	int index;
	if (!node)
		return NULL;
	if (!strcmp(property, "resistance-temp-table")) {
		*size = node->resist_table_bytes;
		return node->resist_table_bytes ? node->resist_table : NULL;
	}
	if (sscanf(property, "ocv-capacity-table-%d", &index) == 1 &&
	    index >= 0 && index < POWER_SUPPLY_OCV_TEMP_MAX) {
		*size = node->ocv_table_bytes[index];
		return *size ? node->ocv_tables[index] : NULL;
	}
	return NULL;
}

void *host_devres_alloc(void (*release)(struct device *, void *), size_t size,
			gfp_t flags)
{
	(void)release;
	(void)flags;
	return calloc(1, size);
}

void devres_add(struct device *dev, void *resource)
{
	(void)dev;
	(void)resource;
	host.devres_adds++;
}

void devres_free(void *resource)
{
	free(resource);
}

int sysfs_create_link(struct kobject *source, struct kobject *target, const char *name)
{
	(void)source;
	(void)target;
	(void)name;
	if (host.fail_sysfs_link)
		return -EIO;
	host.links_created++;
	return 0;
}

void sysfs_remove_link(struct kobject *source, const char *name)
{
	(void)source;
	(void)name;
	host.links_removed++;
}

int add_uevent_var(struct kobj_uevent_env *env, const char *format, ...)
{
	va_list args;
	if (env->count >= (int)ARRAY_SIZE(env->vars))
		return -ENOMEM;
	va_start(args, format);
	vsnprintf(env->vars[env->count], sizeof(env->vars[env->count]), format, args);
	va_end(args);
	env->count++;
	return 0;
}

int atomic_notifier_chain_register(struct atomic_notifier_head *head,
				   struct notifier_block *block)
{
	head->block = block;
	return 0;
}

int atomic_notifier_chain_unregister(struct atomic_notifier_head *head,
				     struct notifier_block *block)
{
	if (head->block == block)
		head->block = NULL;
	return 0;
}

int atomic_notifier_call_chain(struct atomic_notifier_head *head,
			       unsigned long event, void *data)
{
	if (head->block && head->block->notifier_call) {
		host.notifier_calls++;
		return head->block->notifier_call(head->block, event, data);
	}
	return 0;
}

int kobject_uevent(struct kobject *kobject, int action)
{
	(void)kobject;
	(void)action;
	host.uevents++;
	return 0;
}

static int test_get_property(struct zte_power_supply *psy,
			     enum zte_power_supply_property property,
			     union power_supply_propval *value)
{
	struct supply_values *values = psy->drvdata;
	host.get_calls++;
	value->intval = values->values[property];
	return 0;
}

static int test_set_property(struct zte_power_supply *psy,
			     enum zte_power_supply_property property,
			     const union power_supply_propval *value)
{
	struct supply_values *values = psy->drvdata;
	host.set_calls++;
	values->values[property] = value->intval;
	return 0;
}

static int test_property_is_writeable(struct zte_power_supply *psy,
				      enum zte_power_supply_property property)
{
	(void)psy;
	return property == ZTE_POWER_SUPPLY_PROP_STATUS;
}

static void test_external_changed(struct zte_power_supply *psy)
{
	(void)psy;
	host.external_calls++;
}

static void test_set_charged(struct zte_power_supply *psy)
{
	(void)psy;
	host.charged_calls++;
}

static int test_notifier(struct notifier_block *block, unsigned long event, void *data)
{
	(void)block;
	CHECK(event == PSY_EVENT_PROP_CHANGED);
	CHECK(data != NULL);
	return 0;
}

static const enum zte_power_supply_property test_properties[] = {
	ZTE_POWER_SUPPLY_PROP_STATUS,
	(enum zte_power_supply_property)POWER_SUPPLY_PROP_ONLINE,
};

static const struct zte_power_supply_desc battery_desc = {
	.name = "battery",
	.type = POWER_SUPPLY_TYPE_BATTERY,
	.properties = test_properties,
	.num_properties = ARRAY_SIZE(test_properties),
	.get_property = test_get_property,
	.set_property = test_set_property,
	.property_is_writeable = test_property_is_writeable,
	.external_power_changed = test_external_changed,
	.set_charged = test_set_charged,
};

static const struct zte_power_supply_desc usb_desc = {
	.name = "usb",
	.type = POWER_SUPPLY_TYPE_USB,
	.properties = test_properties,
	.num_properties = ARRAY_SIZE(test_properties),
	.get_property = test_get_property,
	.set_property = test_set_property,
	.property_is_writeable = test_property_is_writeable,
	.external_power_changed = test_external_changed,
};

static void reset_host(void)
{
	memset(&host, 0, sizeof(host));
	zte_power_supply_notifier.block = NULL;
}

static void test_interpolation_and_battery_info(void)
{
	struct power_supply_battery_ocv_table ocv[] = {
		{ 4200, 100 }, { 3800, 50 }, { 3400, 0 },
	};
	struct power_supply_resistance_temp_table resist[] = {
		{ 40, 80 }, { 20, 100 }, { 0, 130 },
	};
	struct power_supply_battery_info info = { 0 };
	struct power_supply_battery_ocv_table *found;
	struct zte_power_supply psy = { 0 };
	struct device_node owner = { .id = 1 };
	struct device_node battery = { .id = 2, .compatible = "simple-battery" };
	int length;

	CHECK(zte_power_supply_ocv2cap_simple(ocv, 3, 3900) == 62);
	CHECK(zte_power_supply_ocv2cap_simple(ocv, 3, 4300) == 100);
	CHECK(zte_power_supply_ocv2cap_simple(ocv, 3, 3300) == 0);
	CHECK(zte_power_supply_temp2resist_simple(resist, 3, 30) == 90);

	for (length = 0; length < POWER_SUPPLY_OCV_TEMP_MAX; length++) {
		info.ocv_table[length] = ocv;
		info.ocv_table_size[length] = 3;
		info.ocv_temp[length] = length * 10;
	}
	found = zte_power_supply_find_ocv2cap_table(&info, 92, &length);
	CHECK(found == ocv);
	CHECK(length == 3);
	CHECK(zte_power_supply_batinfo_ocv2cap(&info, 3900, 92) == 62);

	owner.monitored_battery = &battery;
	battery.basic_values[0] = 5000000;
	battery.basic_values[1] = 1200000;
	battery.basic_values[2] = 3400000;
	battery.basic_values[3] = 4400000;
	battery.basic_values[4] = 100000;
	battery.basic_values[5] = 120000;
	battery.basic_values[6] = 3000000;
	battery.basic_values[7] = 4400000;
	battery.basic_values[8] = 150000;
	battery.ocv_temp_count = 1;
	battery.ocv_temps[0] = 25;
	battery.ocv_table_bytes[0] = 16;
	battery.ocv_tables[0][0] = __builtin_bswap32(4200000);
	battery.ocv_tables[0][1] = __builtin_bswap32(100);
	battery.ocv_tables[0][2] = __builtin_bswap32(3400000);
	battery.ocv_tables[0][3] = __builtin_bswap32(0);
	battery.resist_table_bytes = 16;
	battery.resist_table[0] = __builtin_bswap32(25);
	battery.resist_table[1] = __builtin_bswap32(100);
	battery.resist_table[2] = __builtin_bswap32(0);
	battery.resist_table[3] = __builtin_bswap32(130);
	memset(&info, 0, sizeof(info));
	psy.of_node = &owner;
	psy.dev.kobj.dev = &psy.dev;
	CHECK(zte_power_supply_get_battery_info(&psy, &info) == 0);
	CHECK(info.energy_full_design_uwh == 5000000);
	CHECK(info.ocv_table_size[0] == 2);
	CHECK(info.ocv_table[0][0].ocv == 4200000);
	CHECK(info.resist_table_size == 2);
	zte_power_supply_put_battery_info(&psy, &info);
}

static void test_property_sysfs_and_uevent(void)
{
	struct supply_values values = { 0 };
	struct zte_power_supply psy = { 0 };
	struct kobj_uevent_env env = { 0 };
	union power_supply_propval value = { 0 };
	char buffer[128];
	ssize_t result;

	values.values[ZTE_POWER_SUPPLY_PROP_STATUS] = POWER_SUPPLY_STATUS_CHARGING;
	values.values[POWER_SUPPLY_PROP_ONLINE] = 1;
	psy.desc = &battery_desc;
	psy.drvdata = &values;
	psy.dev.driver_data = &psy;
	psy.dev.kobj.dev = &psy.dev;
	atomic_set(&psy.use_cnt, 1);
	psy.initialized = true;

	CHECK(zte_power_supply_get_property(&psy, ZTE_POWER_SUPPLY_PROP_STATUS, &value) == 0);
	CHECK(value.intval == POWER_SUPPLY_STATUS_CHARGING);
	value.intval = POWER_SUPPLY_STATUS_FULL;
	CHECK(zte_power_supply_set_property(&psy, ZTE_POWER_SUPPLY_PROP_STATUS, &value) == 0);
	CHECK(zte_power_supply_property_is_writeable(&psy, ZTE_POWER_SUPPLY_PROP_STATUS) == 1);

	zte_power_supply_init_attrs(&zte_power_supply_dev_type);
	result = zte_power_supply_show_property(&psy.dev,
		&zte_power_supply_attrs[POWER_SUPPLY_PROP_STATUS].dev_attr, buffer);
	CHECK(result > 0);
	CHECK(!strcmp(buffer, "Full\n"));
	result = zte_power_supply_store_property(&psy.dev,
		&zte_power_supply_attrs[POWER_SUPPLY_PROP_STATUS].dev_attr,
		"Charging\n", strlen("Charging\n"));
	CHECK(result == (ssize_t)strlen("Charging\n"));
	CHECK(values.values[ZTE_POWER_SUPPLY_PROP_STATUS] == POWER_SUPPLY_STATUS_CHARGING);
	CHECK(power_supply_attr_is_visible(&psy.dev.kobj,
		&zte_power_supply_attrs[0].dev_attr.attr, 0) == 0644);
	CHECK(zte_power_supply_uevent(&psy.dev, &env) == 0);
	CHECK(env.count == 3);
	CHECK(!strcmp(env.vars[0], "POWER_SUPPLY_NAME=battery"));

	zte_power_supply_external_power_changed(&psy);
	CHECK(host.external_calls == 1);
	CHECK(zte_power_supply_set_battery_charged(&psy) == 0);
	CHECK(host.charged_calls == 1);
	CHECK(zte_power_supply_get_drvdata(&psy) == &values);
}

static void test_register_lookup_change_and_unregister(void)
{
	struct supply_values usb_values = { 0 };
	struct supply_values battery_values = { 0 };
	struct device_node usb_node = { .id = 10 };
	struct device_node battery_node = { .id = 11 };
	struct device_node holder = { .id = 12 };
	struct device usb_parent = { .of_node = &usb_node };
	struct device battery_parent = { .of_node = &battery_node };
	struct power_supply_config usb_cfg = { .of_node = &usb_node, .drv_data = &usb_values };
	struct power_supply_config battery_cfg = { .of_node = &holder, .drv_data = &battery_values };
	struct zte_power_supply *usb;
	struct zte_power_supply *battery;
	struct zte_power_supply *found;
	struct zte_power_supply *array[2] = { 0 };
	struct notifier_block notifier = { .notifier_call = test_notifier };

	CHECK(zte_power_supply_init() == 0);
	usb_parent.kobj.dev = &usb_parent;
	battery_parent.kobj.dev = &battery_parent;
	usb = zte_power_supply_register(&usb_parent, &usb_desc, &usb_cfg);
	CHECK(!IS_ERR(usb));

	holder.power_supplies[0] = &usb_node;
	holder.power_supply_count = 1;
	battery = zte_power_supply_register(&battery_parent, &battery_desc, &battery_cfg);
	CHECK(!IS_ERR(battery));
	CHECK(battery->num_supplies == 1);
	CHECK(!strcmp(battery->supplied_from[0], "usb"));

	found = zte_power_supply_get_by_name("usb");
	CHECK(found == usb);
	CHECK(atomic_read(&usb->use_cnt) == 2);
	zte_power_supply_put(found);

	holder.monitored_battery = &usb_node;
	found = zte_power_supply_get_by_phandle(&holder, "monitored-battery");
	CHECK(found == usb);
	zte_power_supply_put(found);
	CHECK(zte_power_supply_get_by_phandle_array(&holder, "monitored-battery", array, 2) == 1);
	CHECK(array[0] == usb);
	zte_power_supply_put(array[0]);
	CHECK(zte_devm_power_supply_get_by_phandle(&battery_parent,
		"monitored-battery") == ERR_PTR(-ENODEV));

	CHECK(zte_power_supply_reg_notifier(&notifier) == 0);
	zte_power_supply_changed(usb);
	CHECK(usb->changed_work.pending);
	usb->changed_work.func(&usb->changed_work);
	CHECK(host.external_calls >= 1);
	CHECK(host.notifier_calls == 1);
	CHECK(host.uevents >= 1);
	zte_power_supply_unreg_notifier(&notifier);

	CHECK(zte_power_supply_powers(usb, &battery_parent) == 0);
	usb->deferred_register_work.work.func(&usb->deferred_register_work.work);
	CHECK(!usb_parent.locked);

	zte_power_supply_unregister(battery);
	zte_power_supply_unregister(usb);
	CHECK(host.device_unregisters == 2);
	CHECK(host.links_removed == 2);
	zte_power_supply_exit();
}

static void test_failure_paths_and_devm(void)
{
	struct supply_values values = { 0 };
	struct device_node node = { .id = 20 };
	struct device parent = { .of_node = &node };
	struct power_supply_config cfg = { .of_node = &node, .drv_data = &values };
	struct zte_power_supply psy = { .desc = &battery_desc };
	struct zte_power_supply *result;
	union power_supply_propval value;

	atomic_set(&psy.use_cnt, 0);
	CHECK(zte_power_supply_get_property(&psy, ZTE_POWER_SUPPLY_PROP_STATUS, &value) == -EAGAIN);
	psy.initialized = true;
	CHECK(zte_power_supply_get_property(&psy, ZTE_POWER_SUPPLY_PROP_STATUS, &value) == -ENODEV);
	CHECK(zte_power_supply_set_property(&psy, ZTE_POWER_SUPPLY_PROP_STATUS, &value) == -ENODEV);

	CHECK(zte_power_supply_init() == 0);
	host.fail_device_add = 1;
	result = zte_power_supply_register(&parent, &battery_desc, &cfg);
	CHECK(IS_ERR(result) && PTR_ERR(result) == -EIO);
	host.fail_device_add = 0;
	result = zte_devm_power_supply_register(&parent, &battery_desc, &cfg);
	CHECK(!IS_ERR(result));
	CHECK(host.devres_adds >= 1);
	zte_power_supply_unregister(result);

	result = zte_devm_power_supply_register_no_ws(&parent, &battery_desc, &cfg);
	CHECK(!IS_ERR(result));
	CHECK(!result->dev.wakeup_enabled);
	zte_power_supply_unregister(result);
	zte_power_supply_exit();
}

int main(void)
{
	reset_host();
	test_interpolation_and_battery_info();
	test_property_sysfs_and_uevent();
	test_register_lookup_change_and_unregister();
	test_failure_paths_and_devm();
	if (host.failures) {
		fprintf(stderr, "zte_power_supply host tests: %d failure(s)\n", host.failures);
		return 1;
	}
	printf("zte_power_supply host tests: PASS\n");
	return 0;
}
