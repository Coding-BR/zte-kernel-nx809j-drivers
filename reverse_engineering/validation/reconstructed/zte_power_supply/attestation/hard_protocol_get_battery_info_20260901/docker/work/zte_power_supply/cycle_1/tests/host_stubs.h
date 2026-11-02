#ifndef ZTE_POWER_SUPPLY_HOST_STUBS_H
#define ZTE_POWER_SUPPLY_HOST_STUBS_H

#include <ctype.h>
#include <errno.h>
#include <limits.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

typedef uint8_t u8;
typedef uint32_t u32;
typedef uint32_t __be32;
typedef unsigned short umode_t;
typedef unsigned int gfp_t;

#define GFP_KERNEL 0
#define EPROBE_DEFER 517
#define POWER_SUPPLY_OCV_TEMP_MAX 20
#define PSY_EVENT_PROP_CHANGED 0
#define KOBJ_CHANGE 1
#define PAGE_SIZE 4096
#define S_IRUSR 0400
#define S_IWUSR 0200
#define S_IRGRP 0040
#define S_IROTH 0004

#define ARRAY_SIZE(value) (sizeof(value) / sizeof((value)[0]))
#define container_of(pointer, type, member) \
	((type *)((char *)(pointer) - offsetof(type, member)))
#define static_assert(condition, ...) _Static_assert((condition), #condition)
#define noinline __attribute__((noinline))
#define __init
#define __exit
#define EXPORT_SYMBOL_GPL(symbol)
#define MODULE_AUTHOR(value)
#define MODULE_DESCRIPTION(value)
#define MODULE_LICENSE(value)
#define module_init(function)
#define module_exit(function)

#define ERR_PTR(error) ((void *)(intptr_t)(error))
#define PTR_ERR(pointer) ((long)(intptr_t)(pointer))
#define IS_ERR(pointer) ((uintptr_t)(void *)(pointer) >= (uintptr_t)-4095)
#define IS_ERR_OR_NULL(pointer) (!(pointer) || IS_ERR(pointer))

struct device;
struct device_node;
struct class;
struct attribute_group;
struct work_struct;
struct kobj_uevent_env;

struct fwnode_handle {
	struct device_node *node;
};

struct kobject {
	struct device *dev;
};

struct attribute {
	const char *name;
	umode_t mode;
	bool ignore_lockdep;
	u8 reserved[5];
};

struct device_attribute {
	struct attribute attr;
	ssize_t (*show)(struct device *, struct device_attribute *, char *);
	ssize_t (*store)(struct device *, struct device_attribute *, const char *, size_t);
};

struct attribute_group {
	struct attribute **attrs;
	umode_t (*is_visible)(struct kobject *, struct attribute *, int);
};

struct device_type {
	const char *name;
	const struct attribute_group **groups;
	void (*release)(struct device *);
};

struct class {
	int (*dev_uevent)(const struct device *, struct kobj_uevent_env *);
	struct device *devices[16];
	int device_count;
};

struct device {
	struct class *class;
	struct device_type *type;
	struct device *parent;
	const struct attribute_group **groups;
	void *driver_data;
	struct device_node *of_node;
	struct kobject kobj;
	char name[64];
	bool wakeup_capable;
	bool wakeup_enabled;
	bool locked;
	bool added;
	u8 reserved[0x390 - 124];
};
static_assert(sizeof(struct device) == 0x390);

struct work_struct {
	void (*func)(struct work_struct *);
	bool pending;
	u8 reserved[23];
};
static_assert(sizeof(struct work_struct) == 0x20);

struct delayed_work {
	struct work_struct work;
	u8 reserved[0x48];
};
static_assert(sizeof(struct delayed_work) == 0x68);

typedef struct {
	unsigned int value;
} spinlock_t;

typedef struct {
	int counter;
} atomic_t;

struct notifier_block {
	int (*notifier_call)(struct notifier_block *, unsigned long, void *);
};

struct atomic_notifier_head {
	struct notifier_block *block;
};

#define ATOMIC_NOTIFIER_HEAD(name) struct atomic_notifier_head name = { NULL }

struct kobj_uevent_env {
	char vars[32][256];
	int count;
};

struct workqueue_struct {
	const char *name;
};

struct of_phandle_args {
	struct device_node *np;
};

struct device_node {
	int id;
	const char *compatible;
	struct device_node *monitored_battery;
	struct device_node *power_supplies[8];
	int power_supply_count;
	int ocv_temps[POWER_SUPPLY_OCV_TEMP_MAX];
	int ocv_temp_count;
	__be32 ocv_tables[POWER_SUPPLY_OCV_TEMP_MAX][16];
	int ocv_table_bytes[POWER_SUPPLY_OCV_TEMP_MAX];
	__be32 resist_table[16];
	int resist_table_bytes;
	int basic_values[9];
};

enum power_supply_type {
	POWER_SUPPLY_TYPE_UNKNOWN = 0,
	POWER_SUPPLY_TYPE_BATTERY = 1,
	POWER_SUPPLY_TYPE_USB = 4,
};

enum power_supply_property {
	POWER_SUPPLY_PROP_STATUS = 0,
	POWER_SUPPLY_PROP_CHARGE_TYPE = 1,
	POWER_SUPPLY_PROP_HEALTH = 2,
	POWER_SUPPLY_PROP_PRESENT = 3,
	POWER_SUPPLY_PROP_ONLINE = 4,
	POWER_SUPPLY_PROP_AUTHENTIC = 5,
	POWER_SUPPLY_PROP_TECHNOLOGY = 6,
	POWER_SUPPLY_PROP_CYCLE_COUNT = 7,
	POWER_SUPPLY_PROP_VOLTAGE_MAX = 8,
	POWER_SUPPLY_PROP_VOLTAGE_MIN = 9,
	POWER_SUPPLY_PROP_VOLTAGE_MAX_DESIGN = 10,
	POWER_SUPPLY_PROP_VOLTAGE_MIN_DESIGN = 11,
	POWER_SUPPLY_PROP_VOLTAGE_NOW = 12,
	POWER_SUPPLY_PROP_VOLTAGE_AVG = 13,
	POWER_SUPPLY_PROP_VOLTAGE_OCV = 14,
	POWER_SUPPLY_PROP_VOLTAGE_BOOT = 15,
	POWER_SUPPLY_PROP_CURRENT_MAX = 16,
	POWER_SUPPLY_PROP_CURRENT_NOW = 17,
	POWER_SUPPLY_PROP_CURRENT_AVG = 18,
	POWER_SUPPLY_PROP_CHARGE_CONTROL_LIMIT_MAX = 34,
	POWER_SUPPLY_PROP_TYPE = 64,
};

enum {
	POWER_SUPPLY_STATUS_UNKNOWN,
	POWER_SUPPLY_STATUS_CHARGING,
	POWER_SUPPLY_STATUS_DISCHARGING,
	POWER_SUPPLY_STATUS_NOT_CHARGING,
	POWER_SUPPLY_STATUS_FULL,
};

enum {
	POWER_SUPPLY_TECHNOLOGY_UNKNOWN,
	POWER_SUPPLY_TECHNOLOGY_NiMH,
	POWER_SUPPLY_TECHNOLOGY_LION,
	POWER_SUPPLY_TECHNOLOGY_LIPO,
	POWER_SUPPLY_TECHNOLOGY_LiFe,
	POWER_SUPPLY_TECHNOLOGY_NiCd,
	POWER_SUPPLY_TECHNOLOGY_LiMn,
};

union power_supply_propval {
	int intval;
	const char *strval;
};

struct power_supply_battery_ocv_table {
	int ocv;
	int capacity;
};

struct power_supply_resistance_temp_table {
	int temp;
	int resistance;
};

struct power_supply_maintenance_charge_table { int unused; };
struct power_supply_vbat_ri_table { int unused; };

struct power_supply_battery_info {
	unsigned int technology;
	int energy_full_design_uwh;
	int charge_full_design_uah;
	int voltage_min_design_uv;
	int voltage_max_design_uv;
	int tricklecharge_current_ua;
	int precharge_current_ua;
	int precharge_voltage_max_uv;
	int charge_term_current_ua;
	int charge_restart_voltage_uv;
	int overvoltage_limit_uv;
	int constant_charge_current_max_ua;
	int constant_charge_voltage_max_uv;
	const struct power_supply_maintenance_charge_table *maintenance_charge;
	int maintenance_charge_size;
	int alert_low_temp_charge_current_ua;
	int alert_low_temp_charge_voltage_uv;
	int alert_high_temp_charge_current_ua;
	int alert_high_temp_charge_voltage_uv;
	int factory_internal_resistance_uohm;
	int factory_internal_resistance_charging_uohm;
	int ocv_temp[POWER_SUPPLY_OCV_TEMP_MAX];
	int temp_ambient_alert_min;
	int temp_ambient_alert_max;
	int temp_alert_min;
	int temp_alert_max;
	int temp_min;
	int temp_max;
	struct power_supply_battery_ocv_table *ocv_table[POWER_SUPPLY_OCV_TEMP_MAX];
	int ocv_table_size[POWER_SUPPLY_OCV_TEMP_MAX];
	struct power_supply_resistance_temp_table *resist_table;
	int resist_table_size;
	const struct power_supply_vbat_ri_table *vbat2ri_discharging;
	int vbat2ri_discharging_size;
	const struct power_supply_vbat_ri_table *vbat2ri_charging;
	int vbat2ri_charging_size;
	int bti_resistance_ohm;
	int bti_resistance_tolerance;
};

struct power_supply_config {
	struct device_node *of_node;
	struct fwnode_handle *fwnode;
	void *drv_data;
	const struct attribute_group **attr_grp;
	char **supplied_to;
	size_t num_supplicants;
};

extern struct workqueue_struct *system_wq;
extern struct workqueue_struct *system_power_efficient_wq;

void host_log(const char *format, ...);
void host_bug(void);
int host_warn_on(bool condition);
void *host_kzalloc(size_t size, gfp_t flags);
void *host_devm_kmalloc(struct device *dev, size_t size, gfp_t flags);
void host_devm_kfree(struct device *dev, const void *pointer);
char *host_kasprintf(gfp_t flags, const char *format, ...);

struct class *host_class_create(const char *name);
void class_destroy(struct class *class_value);
struct device *class_find_device(struct class *class_value, struct device *start,
				 const void *data, int (*match)(struct device *, const void *));
int class_for_each_device(struct class *class_value, struct device *start,
			  void *data, int (*callback)(struct device *, void *));
void device_initialize(struct device *dev);
int device_add(struct device *dev);
void device_unregister(struct device *dev);
void put_device(struct device *dev);
int dev_set_name(struct device *dev, const char *format, ...);
int device_init_wakeup(struct device *dev, bool enabled);
void device_wakeup_disable(struct device *dev);
void device_set_wakeup_capable(struct device *dev, bool capable);
bool device_trylock(struct device *dev);
void device_unlock(struct device *dev);
void msleep(unsigned int milliseconds);

int host_of_parse_phandle_with_args(struct device_node *node, const char *property,
				    int index, struct of_phandle_args *args);
struct device_node *host_of_parse_phandle(struct device_node *node,
					  const char *property, int index);
int host_of_property_read_string(struct device_node *node, const char *property,
				 const char **value);
int host_of_property_read_u32(struct device_node *node, const char *property,
			      void *value);
int host_of_property_count_u32_elems(struct device_node *node, const char *property);
int host_of_property_read_u32_array(struct device_node *node, const char *property,
				    void *values, size_t count);
const __be32 *host_of_get_property(struct device_node *node, const char *property,
					  int *size);

void *host_devres_alloc(void (*release)(struct device *, void *), size_t size,
			gfp_t flags);
void devres_add(struct device *dev, void *resource);
void devres_free(void *resource);
int sysfs_create_link(struct kobject *source, struct kobject *target, const char *name);
void sysfs_remove_link(struct kobject *source, const char *name);
int add_uevent_var(struct kobj_uevent_env *env, const char *format, ...);
int atomic_notifier_chain_register(struct atomic_notifier_head *head,
				   struct notifier_block *block);
int atomic_notifier_chain_unregister(struct atomic_notifier_head *head,
				     struct notifier_block *block);
int atomic_notifier_call_chain(struct atomic_notifier_head *head,
			       unsigned long event, void *data);
int kobject_uevent(struct kobject *kobject, int action);

#define kzalloc(size, flags) host_kzalloc((size), (flags))
#define kfree(pointer) free((void *)(pointer))
#define devm_kmalloc(dev, size, flags) host_devm_kmalloc((dev), (size), (flags))
#define devm_kzalloc(dev, size, flags) calloc(1, (size))
#define devm_kcalloc(dev, count, size, flags) calloc((count), (size))
#define devm_kmalloc_array(dev, count, size, flags) calloc((count), (size))
#define devm_kfree(dev, pointer) host_devm_kfree((dev), (pointer))
#define kasprintf(flags, format, ...) host_kasprintf((flags), (format), ##__VA_ARGS__)
#define class_create(name) host_class_create(name)
#define devres_alloc(release, size, flags) host_devres_alloc((release), (size), (flags))

#define dev_set_drvdata(dev, data) ((dev)->driver_data = (data))
#define dev_get_drvdata(dev) ((dev)->driver_data)
#define dev_name(dev) ((dev)->name)
#define kobj_to_dev(kobject) ((kobject)->dev)
#define INIT_WORK(work, callback) do { (work)->func = (callback); (work)->pending = false; } while (0)
#define INIT_DELAYED_WORK(dwork, callback) INIT_WORK(&(dwork)->work, (callback))
#define spin_lock_init(lock) ((lock)->value = 0)
#define spin_lock_irqsave(lock, flags) do { (void)(lock); (flags) = 0; } while (0)
#define spin_unlock_irqrestore(lock, flags) do { (void)(lock); (void)(flags); } while (0)
#define atomic_set(value, number) ((value)->counter = (number))
#define atomic_read(value) ((value)->counter)
#define atomic_inc(value) (++(value)->counter)
#define atomic_dec(value) (--(value)->counter)
#define atomic_dec_return(value) (--(value)->counter)
#define WARN_ON(condition) host_warn_on(!!(condition))
#define BUG_ON(condition) do { if (condition) host_bug(); } while (0)
#define pr_warn(...) host_log(__VA_ARGS__)
#define pr_info(...) host_log(__VA_ARGS__)
#define dev_info(dev, ...) host_log(__VA_ARGS__)
#define dev_warn(dev, ...) host_log(__VA_ARGS__)
#define dev_err(dev, ...) host_log(__VA_ARGS__)
#define dev_err_ratelimited(dev, ...) host_log(__VA_ARGS__)

#define of_parse_phandle_with_args(node, property, cells, index, args) \
	host_of_parse_phandle_with_args((node), (property), (index), (args))
#define of_parse_phandle(node, property, index) \
	host_of_parse_phandle((node), (property), (index))
#define of_property_read_string(node, property, value) \
	host_of_property_read_string((node), (property), (value))
#define of_property_read_u32(node, property, value) \
	host_of_property_read_u32((node), (property), (value))
#define of_property_count_u32_elems(node, property) \
	host_of_property_count_u32_elems((node), (property))
#define of_property_read_u32_array(node, property, values, count) \
	host_of_property_read_u32_array((node), (property), (values), (count))
#define of_get_property(node, property, size) host_of_get_property((node), (property), (size))
#define of_node_put(node) ((void)(node))
#define is_of_node(fwnode) ((fwnode) && (fwnode)->node)
#define to_of_node(fwnode) ((fwnode)->node)

static inline u32 be32_to_cpu(__be32 value) { return __builtin_bswap32(value); }
static inline void pm_stay_awake(struct device *dev) { (void)dev; }
static inline void pm_relax(struct device *dev) { (void)dev; }
static inline bool queue_work(struct workqueue_struct *queue, struct work_struct *work)
{ (void)queue; work->pending = true; return true; }
static inline bool queue_delayed_work(struct workqueue_struct *queue,
				      struct delayed_work *work, unsigned long delay)
{ (void)queue; (void)delay; work->work.pending = true; return true; }
static inline bool cancel_work_sync(struct work_struct *work)
{ bool pending = work->pending; work->pending = false; return pending; }
static inline bool cancel_delayed_work_sync(struct delayed_work *work)
{ return cancel_work_sync(&work->work); }
static inline int __sysfs_match_string(const char *const *values, size_t count,
				       const char *buffer)
{
	size_t i, length = strcspn(buffer, "\r\n");
	for (i = 0; i < count; i++)
		if (strlen(values[i]) == length && !strncmp(values[i], buffer, length))
			return (int)i;
	return -EINVAL;
}
static inline int kstrtoll(const char *buffer, unsigned int base, long long *value)
{
	char *end;
	errno = 0;
	*value = strtoll(buffer, &end, base);
	return errno || end == buffer ? -EINVAL : 0;
}
static inline unsigned long get_zeroed_page(gfp_t flags)
{ (void)flags; return (unsigned long)(uintptr_t)calloc(1, PAGE_SIZE); }
static inline void free_page(unsigned long page)
{ free((void *)(uintptr_t)page); }

#endif
