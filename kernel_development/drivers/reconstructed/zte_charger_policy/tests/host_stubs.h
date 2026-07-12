#ifndef ZTE_CHARGER_POLICY_HOST_STUBS_H
#define ZTE_CHARGER_POLICY_HOST_STUBS_H

#include <errno.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

typedef uint8_t u8;
typedef uint32_t u32;
typedef uint64_t u64;
typedef int64_t s64;
typedef s64 ktime_t;

#define GFP_KERNEL 0u
#define PAGE_SIZE 4096u
#define ALARM_BOOTTIME 1
#define NOTIFY_OK 1
#define POWER_SUPPLY_TYPE_UNKNOWN 0
#define POWER_SUPPLY_STATUS_CHARGING 1
#define POWER_SUPPLY_STATUS_FULL 4
#define __init
#define __exit
#define ARRAY_SIZE(value) (sizeof(value) / sizeof((value)[0]))
#define static_assert(condition) _Static_assert(condition, #condition)
#define container_of(pointer, type, member) ((type *)((char *)(pointer) - offsetof(type, member)))
#define ERR_PTR(error) ((void *)(intptr_t)(error))
#define PTR_ERR(pointer) ((long)(intptr_t)(pointer))
#define IS_ERR(pointer) ((uintptr_t)(pointer) >= (uintptr_t)-4095)
#define barrier() __asm__ volatile("" ::: "memory")

struct timespec64 { s64 tv_sec; long tv_nsec; };
struct device_node { int marker; };
struct device { void *drvdata; struct device_node *of_node; };
struct platform_device { struct device dev; };
struct work_struct { void (*func)(struct work_struct *); };
struct delayed_work { struct work_struct work; int pending; };
struct workqueue_struct { const char *name; };
struct wakeup_source { int active; };
struct notifier_block { int (*notifier_call)(struct notifier_block *, unsigned long, void *); };

enum alarmtimer_restart { ALARMTIMER_NORESTART = 0, ALARMTIMER_RESTART = 1 };
struct alarm { enum alarmtimer_restart (*function)(struct alarm *, ktime_t); ktime_t expires; };

enum power_supply_property {
	POWER_SUPPLY_PROP_STATUS = 0,
	POWER_SUPPLY_PROP_PRESENT = 3,
	POWER_SUPPLY_PROP_ONLINE = 4,
	POWER_SUPPLY_PROP_AUTHENTIC = 5,
	POWER_SUPPLY_PROP_CAPACITY = 47,
	POWER_SUPPLY_PROP_TEMP = 52,
};
union power_supply_propval { int intval; };
struct power_supply;
struct power_supply_desc {
	const char *name;
	int type;
	enum power_supply_property *properties;
	size_t num_properties;
	int (*get_property)(struct power_supply *, enum power_supply_property, union power_supply_propval *);
	int (*set_property)(struct power_supply *, enum power_supply_property, const union power_supply_propval *);
	int (*property_is_writeable)(struct power_supply *, enum power_supply_property);
	void (*external_power_changed)(struct power_supply *);
};
struct power_supply { const struct power_supply_desc *desc; void *drv_data; int values[64]; };
struct power_supply_config { void *drv_data; };

struct of_device_id { const char *compatible; };
struct platform_driver {
	int (*probe)(struct platform_device *);
	void (*remove)(struct platform_device *);
	struct { const char *name; const struct of_device_id *of_match_table; } driver;
};

struct zte_power_supply { int values[64]; };

void host_log(const char *format, ...);
void *host_devm_kzalloc(struct device *dev, size_t size, unsigned int flags);
void host_devm_kfree(struct device *dev, const void *pointer);
int host_of_property_read_u32(struct device_node *node, const char *name, u32 *value);
int host_of_property_read_string(struct device_node *node, const char *name, const char **value);
struct workqueue_struct *host_create_workqueue(const char *name);
void host_init_delayed_work(struct delayed_work *work, void (*func)(struct work_struct *));
bool host_queue_delayed_work(struct workqueue_struct *wq, struct delayed_work *work, unsigned long delay);
bool host_delayed_work_pending(struct delayed_work *work);
unsigned long host_msecs_to_jiffies(unsigned int value);
void host_bug(void);

struct power_supply *power_supply_get_by_name(const char *name);
void power_supply_put(struct power_supply *psy);
int power_supply_get_property(struct power_supply *psy, enum power_supply_property prop, union power_supply_propval *value);
int power_supply_set_property(struct power_supply *psy, enum power_supply_property prop, const union power_supply_propval *value);
void *power_supply_get_drvdata(struct power_supply *psy);
void power_supply_changed(struct power_supply *psy);
int power_supply_reg_notifier(struct notifier_block *nb);
void power_supply_unreg_notifier(struct notifier_block *nb);
struct power_supply *devm_power_supply_register(struct device *dev, const struct power_supply_desc *desc, const struct power_supply_config *config);

struct wakeup_source *wakeup_source_register(struct device *dev, const char *name);
void wakeup_source_unregister(struct wakeup_source *source);
void __pm_stay_awake(struct wakeup_source *source);
void __pm_relax(struct wakeup_source *source);

ktime_t ktime_get_real(void);
s64 ktime_to_ns(ktime_t value);
struct timespec64 ns_to_timespec64(s64 value);
ktime_t ns_to_ktime(s64 value);
void alarm_init(struct alarm *alarm, int type, enum alarmtimer_restart (*callback)(struct alarm *, ktime_t));
int alarm_start_relative(struct alarm *alarm, ktime_t expires);
int alarm_try_to_cancel(struct alarm *alarm);

void platform_set_drvdata(struct platform_device *pdev, void *data);
void *platform_get_drvdata(struct platform_device *pdev);
int platform_driver_register(struct platform_driver *driver);
void platform_driver_unregister(struct platform_driver *driver);

#define pr_info host_log
#define pr_err host_log
#define devm_kzalloc host_devm_kzalloc
#define devm_kfree host_devm_kfree
#define of_property_read_u32 host_of_property_read_u32
#define of_property_read_string host_of_property_read_string
#define create_singlethread_workqueue(name) host_create_workqueue(name)
#define INIT_DELAYED_WORK(work, callback) host_init_delayed_work((work), (callback))
#define queue_delayed_work(wq, work, delay) host_queue_delayed_work((wq), (work), (delay))
#define delayed_work_pending(work) host_delayed_work_pending(work)
#define msecs_to_jiffies(value) host_msecs_to_jiffies(value)
#define BUG() host_bug()
#define EXPORT_SYMBOL(symbol)
#define MODULE_LICENSE(value)
#define MODULE_AUTHOR(value)
#define MODULE_DESCRIPTION(value)
#define MODULE_INFO(tag, value)
#define module_platform_driver(driver) \
	int init_module(void) { return platform_driver_register(&(driver)); } \
	void cleanup_module(void) { platform_driver_unregister(&(driver)); }

#endif
