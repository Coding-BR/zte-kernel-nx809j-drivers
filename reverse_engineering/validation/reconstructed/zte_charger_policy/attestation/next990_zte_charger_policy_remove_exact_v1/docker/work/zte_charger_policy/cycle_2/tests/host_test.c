#define ZTE_CHARGER_POLICY_HOST_TEST
#include "../zte_charger_policy.c"

struct host_state {
	int failures;
	int fail_standard_get;
	int fail_standard_property;
	int fail_zte_get;
	int fail_zte_property;
	int fail_register_notifier;
	int fail_register_psy;
	int fail_workqueue;
	int fail_wakeup;
	int poweroff_charging;
	int dt_present;
	u32 dt_enable;
	u64 now_ns;
	int put_calls;
	int zte_put_calls;
	int changed_calls;
	int notifier_register_calls;
	int notifier_unregister_calls;
	int queue_calls;
	unsigned long last_delay;
	int stay_awake_calls;
	int relax_calls;
	int alarm_start_calls;
	int alarm_cancel_calls;
	int misc_register_calls;
	int platform_register_calls;
	int platform_unregister_calls;
	int bug_calls;
	struct platform_driver *registered_driver;
	struct workqueue_struct timeout_wq;
	struct workqueue_struct probe_wq;
	struct wakeup_source wakeup;
	struct power_supply usb;
	struct power_supply wireless;
	struct power_supply battery;
	struct power_supply cas;
	struct power_supply policy;
	struct zte_power_supply zte_battery;
	struct zte_power_supply zte_usb;
};

static struct host_state host;
static const struct power_supply_desc usb_desc = { .name = "usb" };
static const struct power_supply_desc wireless_desc = { .name = "wireless" };
static const struct power_supply_desc battery_desc = { .name = "battery" };
static const struct power_supply_desc cas_desc = { .name = "cas" };

#define CHECK(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "FAIL %s:%d: %s\n", __func__, __LINE__, #condition); \
		host.failures++; \
	} \
} while (0)

void host_log(const char *format, ...) { (void)format; }

static void reset_host(void)
{
	memset(&host, 0, sizeof(host));
	host.now_ns = 1000ULL * 1000000000ULL;
	host.usb.desc = &usb_desc;
	host.wireless.desc = &wireless_desc;
	host.battery.desc = &battery_desc;
	host.cas.desc = &cas_desc;
	host.usb.values[POWER_SUPPLY_PROP_ONLINE] = 1;
	host.battery.values[POWER_SUPPLY_PROP_STATUS] = POWER_SUPPLY_STATUS_CHARGING;
	host.battery.values[POWER_SUPPLY_PROP_CAPACITY] = 60;
	host.battery.values[POWER_SUPPLY_PROP_TEMP] = 250;
	host.cas.values[POWER_SUPPLY_PROP_AUTHENTIC] = 0;
	host.zte_battery.values[3] = 1;
	host.zte_battery.values[4] = 1;
	host.zte_usb.values[17] = 0;
	host.zte_usb.values[18] = 1;
	charger_policy_logger_limit_time_pre_0 = 0;
	charger_policy_check_retry_probe_count = 0;
}

void *host_devm_kzalloc(struct device *dev, size_t size, unsigned int flags)
{ (void)dev; (void)flags; return calloc(1, size); }
void host_devm_kfree(struct device *dev, const void *pointer)
{ (void)dev; free((void *)pointer); }

int host_of_property_read_u32(struct device_node *node, const char *name, u32 *value)
{
	(void)node;
	if (!host.dt_present)
		return -EINVAL;
	if (!strcmp(name, "policy,enable"))
		*value = host.dt_enable;
	else if (!strcmp(name, "policy,retry-times"))
		*value = 3;
	else
		return -EINVAL;
	return 0;
}

int host_of_property_read_string(struct device_node *node, const char *name, const char **value)
{ (void)node; (void)name; (void)value; return -EINVAL; }

struct workqueue_struct *host_create_workqueue(const char *name)
{
	if (host.fail_workqueue)
		return NULL;
	if (!strcmp(name, "policy_probe_wq")) { host.probe_wq.name = name; return &host.probe_wq; }
	host.timeout_wq.name = name;
	return &host.timeout_wq;
}

void host_init_delayed_work(struct delayed_work *work, void (*func)(struct work_struct *))
{ work->work.func = func; work->pending = 0; }
bool host_queue_delayed_work(struct workqueue_struct *wq, struct delayed_work *work, unsigned long delay)
{
	CHECK(wq != NULL);
	host.queue_calls++;
	host.last_delay = delay;
	work->pending = 1;
	return true;
}
bool host_delayed_work_pending(struct delayed_work *work) { return work->pending != 0; }
unsigned long host_msecs_to_jiffies(unsigned int value) { return value / 4; }
void host_bug(void) { host.bug_calls++; }

static struct power_supply *named_supply(const char *name)
{
	if (!strcmp(name, "usb")) return &host.usb;
	if (!strcmp(name, "wireless")) return &host.wireless;
	if (!strcmp(name, "battery")) return &host.battery;
	if (!strcmp(name, "cas")) return &host.cas;
	if (!strcmp(name, "policy")) return host.policy.desc ? &host.policy : NULL;
	return NULL;
}

struct power_supply *power_supply_get_by_name(const char *name)
{ return host.fail_standard_get ? NULL : named_supply(name); }
void power_supply_put(struct power_supply *psy) { CHECK(psy != NULL); host.put_calls++; }
int power_supply_get_property(struct power_supply *psy, enum power_supply_property prop, union power_supply_propval *value)
{
	if (host.fail_standard_property) return -EIO;
	value->intval = psy->values[prop];
	return 0;
}
int power_supply_set_property(struct power_supply *psy, enum power_supply_property prop, const union power_supply_propval *value)
{
	if (host.fail_standard_property) return -EIO;
	psy->values[prop] = value->intval;
	return 0;
}
void *power_supply_get_drvdata(struct power_supply *psy) { return psy->drv_data; }
void power_supply_changed(struct power_supply *psy) { CHECK(psy != NULL); host.changed_calls++; }
int power_supply_reg_notifier(struct notifier_block *nb)
{ (void)nb; host.notifier_register_calls++; return host.fail_register_notifier ? -EIO : 0; }
void power_supply_unreg_notifier(struct notifier_block *nb)
{ (void)nb; host.notifier_unregister_calls++; }
struct power_supply *devm_power_supply_register(struct device *dev, const struct power_supply_desc *desc, const struct power_supply_config *config)
{
	(void)dev;
	if (host.fail_register_psy) return ERR_PTR(-EIO);
	host.policy.desc = desc;
	host.policy.drv_data = config->drv_data;
	return &host.policy;
}

struct wakeup_source *wakeup_source_register(struct device *dev, const char *name)
{ (void)dev; (void)name; return host.fail_wakeup ? NULL : &host.wakeup; }
void wakeup_source_unregister(struct wakeup_source *source) { CHECK(source == &host.wakeup); }
void __pm_stay_awake(struct wakeup_source *source) { CHECK(source != NULL); source->active++; host.stay_awake_calls++; }
void __pm_relax(struct wakeup_source *source) { CHECK(source != NULL); source->active--; host.relax_calls++; }

ktime_t ktime_get_real(void) { return (ktime_t)host.now_ns; }
s64 ktime_to_ns(ktime_t value) { return value; }
struct timespec64 ns_to_timespec64(s64 value)
{ struct timespec64 result = { value / 1000000000LL, value % 1000000000LL }; return result; }
ktime_t ns_to_ktime(s64 value) { return value; }
void alarm_init(struct alarm *alarm, int type, enum alarmtimer_restart (*callback)(struct alarm *, ktime_t))
{ (void)type; alarm->function = callback; alarm->expires = 0; }
int alarm_start_relative(struct alarm *alarm, ktime_t expires)
{ alarm->expires = expires; host.alarm_start_calls++; return 0; }
int alarm_try_to_cancel(struct alarm *alarm)
{ alarm->expires = 0; host.alarm_cancel_calls++; return 0; }

void platform_set_drvdata(struct platform_device *pdev, void *data) { pdev->dev.drvdata = data; }
void *platform_get_drvdata(struct platform_device *pdev) { return pdev->dev.drvdata; }
int platform_driver_register(struct platform_driver *driver)
{ host.registered_driver = driver; host.platform_register_calls++; return 0; }
void platform_driver_unregister(struct platform_driver *driver)
{ CHECK(driver == host.registered_driver); host.platform_unregister_calls++; }

struct zte_power_supply *zte_power_supply_get_by_name(const char *name)
{
	if (host.fail_zte_get) return NULL;
	if (!strcmp(name, "zte_battery")) return &host.zte_battery;
	if (!strcmp(name, "zte_usb")) return &host.zte_usb;
	return NULL;
}
void zte_power_supply_put(struct zte_power_supply *psy) { CHECK(psy != NULL); host.zte_put_calls++; }
int zte_power_supply_get_property(struct zte_power_supply *psy, enum power_supply_property prop, union power_supply_propval *value)
{ if (host.fail_zte_property) return -EIO; value->intval = psy->values[prop]; return 0; }
int zte_power_supply_set_property(struct zte_power_supply *psy, enum power_supply_property prop, const union power_supply_propval *value)
{ if (host.fail_zte_property) return -EIO; psy->values[prop] = value->intval; return 0; }
int zte_poweroff_charging_status(void) { return host.poweroff_charging; }
int zte_misc_register_callback(const struct zte_misc_cb *cb, void *priv)
{ CHECK(cb != NULL); CHECK(priv != NULL); host.misc_register_calls++; return 0; }

static void init_policy(struct charger_policy_info *policy)
{
	memset(policy, 0, sizeof(*policy));
	policy->dev = &(struct device){0};
	policy->timeout_wq = &host.timeout_wq;
	policy->probe_wq = &host.probe_wq;
	policy->ws = &host.wakeup;
	policy->battery_phy_name = "battery";
	policy->zte_battery_phy_name = "zte_battery";
	policy->zte_usb_phy_name = "zte_usb";
	policy->cas_phy_name = "cas";
	policy->demo_min_cap = 50;
	policy->demo_max_cap = 70;
	policy->expired_min_cap = 50;
	policy->expired_max_cap = 70;
	policy->timeout_seconds_runtime = 86400;
	policy->force_discharging_sec = 2592000;
	policy->force_discharging_sec_nanoseconds = 30000;
	INIT_DELAYED_WORK(&policy->timeout_work, charger_policy_timeout_handler_work);
	INIT_DELAYED_WORK(&policy->probe_work, charger_policy_probe_work);
	alarm_init(&policy->timeout_alarm, ALARM_BOOTTIME, charger_policy_timeout_alarm_cb);
}

static void test_property_helpers(void)
{
	struct charger_policy_info policy;
	u32 value = 0;
	reset_host();
	init_policy(&policy);
	CHECK(charger_policy_get_prop_by_name("battery", POWER_SUPPLY_PROP_CAPACITY, &value) == 0);
	CHECK(value == 60);
	CHECK(zte_charger_policy_get_prop_by_name("zte_usb", 18, &value) == 0);
	CHECK(value == 1);
	CHECK(zte_charger_policy_set_prop_by_name("zte_battery", 3, 0) == 0);
	CHECK(host.zte_battery.values[3] == 0);
	CHECK(charger_policy_ctrl_charging_enable(&policy, 1, 1) == 1);
	CHECK(charger_policy_disable_cas(&policy, 1) == 0);
	CHECK(host.cas.values[POWER_SUPPLY_PROP_AUTHENTIC] == 1);
	CHECK(charger_policy_check_usb_present(&policy));
	policy.demo_sts = 1;
	CHECK(!charger_policy_check_soc_reach_min(&policy));
	host.battery.values[POWER_SUPPLY_PROP_CAPACITY] = 40;
	CHECK(charger_policy_check_soc_reach_min(&policy));
	host.fail_standard_get = 1;
	CHECK(charger_policy_get_prop_by_name("battery", POWER_SUPPLY_PROP_CAPACITY, &value) == -ENODEV);
}

static void test_state_machine(void)
{
	struct charger_policy_info policy;
	reset_host();
	init_policy(&policy);
	CHECK(charger_policy_status_disable(&policy) == 0);
	policy.demo_sts = 1;
	policy.status = 0;
	CHECK(charger_policy_status_ide(&policy) == 0);
	CHECK(policy.status == 1);
	host.battery.values[POWER_SUPPLY_PROP_CAPACITY] = 80;
	CHECK(charger_policy_status_runchging(&policy) == 0);
	CHECK(policy.status == 2);
	host.battery.values[POWER_SUPPLY_PROP_CAPACITY] = 40;
	CHECK(charger_policy_status_rundischging(&policy) == 0);
	CHECK(policy.status == 1);
	CHECK(charger_policy_status_forcedischging(&policy) == 0);
	policy.status = 0;
	policy.demo_sts = 1;
	policy.timeout_work.pending = 0;
	charger_policy_timeout_handler_work(&policy.timeout_work.work);
	CHECK(host.stay_awake_calls > 0);
}

static void test_callbacks(void)
{
	struct charger_policy_info policy;
	char buffer[64];
	union power_supply_propval value;
	reset_host();
	init_policy(&policy);
	CHECK(charger_policy_demo_sts_set("1", &policy) == 0);
	CHECK(charger_policy_demo_sts_get(buffer, &policy) == 1);
	CHECK(charger_policy_expired_sts_get(buffer, &policy) == 1);
	CHECK(charger_policy_expired_sec_set("123", &policy) == 0);
	CHECK(charger_policy_expired_sec_get(buffer, &policy) > 0);
	CHECK(charger_policy_force_disching_sec_set("44", &policy) == 0);
	CHECK(charger_policy_force_disching_sec_get(buffer, &policy) > 0);
	CHECK(charger_policy_cap_min_set("45", &policy) == 0);
	CHECK(charger_policy_cap_min_get(buffer, &policy) > 0);
	CHECK(charger_policy_cap_max_set("75", &policy) == 0);
	CHECK(charger_policy_cap_max_get(buffer, &policy) > 0);
	CHECK(charger_policy_enable_status_set("1", &policy) == 0);
	CHECK(charger_policy_enable_status_get(buffer, &policy) > 0);
	host.policy.drv_data = &policy;
	CHECK(policy_psy_get_property(&host.policy, POWER_SUPPLY_PROP_PRESENT, &value) == 0);
	value.intval = 2;
	CHECK(policy_psy_set_property(&host.policy, POWER_SUPPLY_PROP_ONLINE, &value) == 0);
	CHECK(policy_property_is_writeable(&host.policy, POWER_SUPPLY_PROP_PRESENT));
	policy_external_power_changed(&host.policy);
}

static void test_alarm_notifier_and_status(void)
{
	struct charger_policy_info policy;
	struct notifier_block *nb;
	reset_host();
	init_policy(&policy);
	CHECK(charger_policy_timeout_alarm_cb(&policy.timeout_alarm, 0) == ALARMTIMER_RESTART);
	CHECK(host.alarm_start_calls == 1);
	policy.timeout_work.pending = 0;
	nb = &policy.nb;
	CHECK(charger_policy_notifier_switch(nb, 0, &host.battery) == NOTIFY_OK);
	host.policy.desc = &policy_psy_desc;
	host.policy.values[POWER_SUPPLY_PROP_AUTHENTIC] = 1;
	CHECK(charger_policy_get_status());
}

static void test_probe_remove_and_module(void)
{
	struct platform_device pdev = {0};
	struct device_node node = {0};
	struct charger_policy_info *policy;
	reset_host();
	host.dt_present = 1;
	host.dt_enable = 1;
	pdev.dev.of_node = &node;
	CHECK(charger_policy_probe(&pdev) == 0);
	policy = platform_get_drvdata(&pdev);
	CHECK(policy != NULL);
	CHECK(policy->probe_work.work.func == charger_policy_probe_work);
	policy->probe_work.pending = 0;
	policy->probe_work.work.func(&policy->probe_work.work);
	CHECK(host.misc_register_calls == 7);
	CHECK(policy->policy_psy == &host.policy);
	charger_policy_remove(&pdev);
	CHECK(host.notifier_unregister_calls > 0);
	CHECK(init_module() == 0);
	cleanup_module();
	CHECK(host.platform_register_calls == 1);
	CHECK(host.platform_unregister_calls == 1);
}

static void test_failure_paths(void)
{
	struct charger_policy_info policy;
	char buffer[32];
	reset_host();
	init_policy(&policy);
	CHECK(charger_policy_demo_sts_get(buffer, NULL) == 11);
	CHECK(charger_policy_expired_sts_get(buffer, NULL) == 11);
	CHECK(charger_policy_cap_min_get(buffer, NULL) == 11);
	host.fail_zte_property = 1;
	CHECK(charger_policy_ctrl_charging_enable(&policy, 0, 0) == 0);
	host.fail_zte_property = 0;
	host.fail_standard_property = 1;
	CHECK(charger_policy_disable_cas(&policy, 1) == -EIO);
	host.fail_standard_property = 0;
	policy.policy_disabled = 1;
	charger_policy_timeout_handler_work(&policy.timeout_work.work);
	CHECK(policy.status == 0);
}

int main(void)
{
	test_property_helpers();
	test_state_machine();
	test_callbacks();
	test_alarm_notifier_and_status();
	test_probe_remove_and_module();
	test_failure_paths();
	if (host.failures)
		return 1;
	puts("PASS zte_charger_policy host tests");
	return 0;
}
