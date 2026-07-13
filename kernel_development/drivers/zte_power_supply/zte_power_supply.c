/*
 * ZTE Power Supply Wrapper Subsystem
 *
 * Copyright (c) 2026, ZTE / Nubia Technology.
 * Reconstructed for Red Magic 11 Pro (NX809J) GKI.
 */

#ifdef ZTE_POWER_SUPPLY_HOST_TEST
#include "tests/host_stubs.h"
#else
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/device.h>
#include <linux/slab.h>
#include <linux/spinlock.h>
#include <linux/workqueue.h>
#include <linux/timer.h>
#include <linux/delay.h>
#include <linux/of.h>
#include <linux/mutex.h>
#include <linux/power_supply.h>
#include <linux/notifier.h>
#include <linux/ctype.h>
#include <linux/ratelimit.h>
#include <linux/sysfs.h>
#endif

#define ZTE_POWER_SUPPLY_CLASS_NAME "zte_power_supply"

struct zte_power_supply;

enum zte_power_supply_property {
	ZTE_POWER_SUPPLY_PROP_STATUS = POWER_SUPPLY_PROP_STATUS,
	ZTE_POWER_SUPPLY_PROP_CHARGE_CONTROL_LIMIT_MAX =
		POWER_SUPPLY_PROP_CHARGE_CONTROL_LIMIT_MAX,
	ZTE_POWER_SUPPLY_PROP_TYPE = POWER_SUPPLY_PROP_TYPE,
};

struct zte_power_supply_desc {
	const char *name;
	enum power_supply_type type;
	char **supplied_to;
	size_t num_supplicants;
	const enum zte_power_supply_property *properties;
	size_t num_properties;
	int (*get_property)(struct zte_power_supply *psy, enum zte_power_supply_property psp, union power_supply_propval *val);
	int (*set_property)(struct zte_power_supply *psy, enum zte_power_supply_property psp, const union power_supply_propval *val);
	int (*property_is_writeable)(struct zte_power_supply *psy, enum zte_power_supply_property psp);
	void (*external_power_changed)(struct zte_power_supply *psy);
	void (*set_charged)(struct zte_power_supply *psy);
	bool no_thermal;
	int use_for_apm;
};

struct zte_power_supply {
	const struct zte_power_supply_desc *desc;
	char **supplied_to;
	size_t num_supplicants;
	const char **supplied_from;
	size_t num_supplies;
	struct device_node *of_node;
	void *drvdata;
	struct device dev;
	struct work_struct changed_work;
	struct delayed_work deferred_register_work;
	spinlock_t lock;
	bool event_pending;
	bool initialized;
	bool removing;
	atomic_t use_cnt;
	struct power_supply_battery_info *battery_info;
	u8 reserved[0x58];
};

static_assert(sizeof(struct zte_power_supply) == 0x4c0);
static_assert(offsetof(struct zte_power_supply, of_node) == 0x28);
static_assert(offsetof(struct zte_power_supply, drvdata) == 0x30);
static_assert(offsetof(struct zte_power_supply, dev) == 0x38);
static_assert(offsetof(struct zte_power_supply, changed_work) == 0x3c8);
static_assert(offsetof(struct zte_power_supply, deferred_register_work) == 0x3e8);
static_assert(offsetof(struct zte_power_supply, lock) == 0x450);
static_assert(offsetof(struct zte_power_supply, event_pending) == 0x454);
static_assert(offsetof(struct zte_power_supply, initialized) == 0x455);
static_assert(offsetof(struct zte_power_supply, removing) == 0x456);
static_assert(offsetof(struct zte_power_supply, use_cnt) == 0x458);

#define to_zte_power_supply(d) container_of(d, struct zte_power_supply, dev)

struct class *zte_power_supply_class;
EXPORT_SYMBOL_GPL(zte_power_supply_class);
static ATOMIC_NOTIFIER_HEAD(zte_power_supply_notifier);

struct power_supply_attr {
	const char *prop_name;
	char attr_name[32];
	struct device_attribute dev_attr;
	const char *const *text_values;
	int text_values_len;
};

static_assert(sizeof(struct power_supply_attr) == 0x58);
static_assert(offsetof(struct power_supply_attr, dev_attr) == 0x28);
static_assert(offsetof(struct power_supply_attr, text_values) == 0x48);

#define _ZTE_PSY_ATTR(_name, _text, _len) \
	[POWER_SUPPLY_PROP_ ## _name] = { \
		.prop_name = #_name, \
		.attr_name = #_name, \
		.text_values = _text, \
		.text_values_len = _len, \
	}

#define ZTE_PSY_ATTR(_name) _ZTE_PSY_ATTR(_name, NULL, 0)
#define ZTE_PSY_ENUM_ATTR(_name, _text) \
	_ZTE_PSY_ATTR(_name, _text, ARRAY_SIZE(_text))

static ssize_t zte_power_supply_show_property(struct device *dev, struct device_attribute *attr, char *buf);
static ssize_t zte_power_supply_store_property(struct device *dev, struct device_attribute *attr, const char *buf, size_t count);

/* Array estático de atributos mapeando as 19 principais propriedades */
/* Mapeamento de strings para enums do sysfs */
static const char *const status_text[] = {
	"Unknown", "Charging", "Discharging", "Not charging", "Full"
};

static const char *const charge_type_text[] = {
	"Unknown", "N/A", "Trickle", "Fast", "Standard",
	"Adaptive", "Custom", "Long Life", "Bypass", "Taper"
};

static const char *const health_text[] = {
	"Unknown", "Good", "Overheat", "Dead", "Over voltage",
	"Unspecified failure", "Cold", "Watchdog timer expire",
	"Safety timer expire", "Over current", "Calibration required",
	"Warm", "Cool", "Hot", "No battery"
};

static const char *const technology_text[] = {
	"Unknown", "NiMH", "Li-ion", "Li-poly", "LiFe", "NiCd", "LiMn"
};

static struct power_supply_attr zte_power_supply_attrs[] = {
	ZTE_PSY_ENUM_ATTR(STATUS, status_text),
	ZTE_PSY_ENUM_ATTR(CHARGE_TYPE, charge_type_text),
	ZTE_PSY_ENUM_ATTR(HEALTH, health_text),
	ZTE_PSY_ATTR(PRESENT),
	ZTE_PSY_ATTR(ONLINE),
	ZTE_PSY_ATTR(AUTHENTIC),
	ZTE_PSY_ENUM_ATTR(TECHNOLOGY, technology_text),
	ZTE_PSY_ATTR(CYCLE_COUNT),
	ZTE_PSY_ATTR(VOLTAGE_MAX),
	ZTE_PSY_ATTR(VOLTAGE_MIN),
	ZTE_PSY_ATTR(VOLTAGE_MAX_DESIGN),
	ZTE_PSY_ATTR(VOLTAGE_MIN_DESIGN),
	ZTE_PSY_ATTR(VOLTAGE_NOW),
	ZTE_PSY_ATTR(VOLTAGE_AVG),
	ZTE_PSY_ATTR(VOLTAGE_OCV),
	ZTE_PSY_ATTR(VOLTAGE_BOOT),
	ZTE_PSY_ATTR(CURRENT_MAX),
	ZTE_PSY_ATTR(CURRENT_NOW),
	ZTE_PSY_ATTR(CURRENT_AVG),
};

#define MAX_PSY_ATTRS ((int)ARRAY_SIZE(zte_power_supply_attrs))

/* Procura propriedade no array do driver */
/* Callbacks de get/set/writeable com hooks removidos e CFI cleans */
noinline int zte_power_supply_get_property(struct zte_power_supply *psy, enum zte_power_supply_property psp, union power_supply_propval *val)
{
	if (atomic_read(&psy->use_cnt) <= 0) {
		if (!psy->initialized)
			return -EAGAIN;
		return -ENODEV;
	}

	return psy->desc->get_property(psy, psp, val);
}
EXPORT_SYMBOL_GPL(zte_power_supply_get_property);

noinline int zte_power_supply_set_property(struct zte_power_supply *psy, enum zte_power_supply_property psp, const union power_supply_propval *val)
{
	if (atomic_read(&psy->use_cnt) <= 0 || !psy->desc->set_property)
		return -ENODEV;

	return psy->desc->set_property(psy, psp, val);
}
EXPORT_SYMBOL_GPL(zte_power_supply_set_property);

int zte_power_supply_property_is_writeable(struct zte_power_supply *psy, enum zte_power_supply_property psp)
{
	if (atomic_read(&psy->use_cnt) <= 0 || !psy->desc->property_is_writeable)
		return -ENODEV;

	return psy->desc->property_is_writeable(psy, psp);
}
EXPORT_SYMBOL_GPL(zte_power_supply_property_is_writeable);

/* Sysfs Show / Store */
static struct power_supply_attr *to_psy_attr(struct device_attribute *attr)
{
	return container_of(attr, struct power_supply_attr, dev_attr);
}

static ssize_t zte_power_supply_show_property(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct zte_power_supply *psy = dev_get_drvdata(dev);
	struct power_supply_attr *psy_attr = to_psy_attr(attr);
	enum zte_power_supply_property psp = psy_attr - zte_power_supply_attrs;
	union power_supply_propval val;
	ssize_t ret;

	if (psp == ZTE_POWER_SUPPLY_PROP_TYPE) {
		val.intval = psy->desc->type;
	} else {
		ret = zte_power_supply_get_property(psy, psp, &val);
		if (ret < 0) {
			if (ret != -ENODATA && ret != -ENODEV && ret != -EAGAIN)
				dev_err_ratelimited(dev,
					"driver failed to report `%s' property: %zd\n",
					psy_attr->prop_name, ret);
			return ret;
		}
	}

	if (psy_attr->text_values_len > 0 && val.intval >= 0 &&
	    val.intval < psy_attr->text_values_len)
		return sprintf(buf, "%s\n", psy_attr->text_values[val.intval]);
	return sprintf(buf, "%d\n", val.intval);
}

static ssize_t zte_power_supply_store_property(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	struct zte_power_supply *psy = dev_get_drvdata(dev);
	struct power_supply_attr *psy_attr = to_psy_attr(attr);
	enum zte_power_supply_property psp = psy_attr - zte_power_supply_attrs;
	union power_supply_propval val;
	long long lval;
	int ret;

	ret = -EINVAL;
	if (psy_attr->text_values_len > 0)
		ret = __sysfs_match_string(psy_attr->text_values,
					   psy_attr->text_values_len, buf);
	if (ret < 0) {
		ret = kstrtoll(buf, 10, &lval);
		if (ret < 0)
			return ret;
		ret = lval;
	}

	val.intval = ret;
	ret = zte_power_supply_set_property(psy, psp, &val);
	if (ret < 0)
		return ret;

	return count;
}

/* Visibility Callback */
static umode_t power_supply_attr_is_visible(struct kobject *kobj, struct attribute *attr, int attrno)
{
	struct device *dev = kobj_to_dev(kobj);
	struct zte_power_supply *psy = dev_get_drvdata(dev);
	int i;

	BUG_ON(attrno >= MAX_PSY_ATTRS);
	if (!zte_power_supply_attrs[attrno].prop_name)
		return 0;

	for (i = 0; i < psy->desc->num_properties; i++) {
		int property = psy->desc->properties[i];

		if (property == attrno) {
			if (zte_power_supply_property_is_writeable(psy, property) > 0)
				return 0644;
			return 0444;
		}
	}
	return 0;
}

static struct attribute *zte_power_supply_dev_attrs[MAX_PSY_ATTRS + 1];

static const struct attribute_group zte_power_supply_attr_group = {
	.attrs = zte_power_supply_dev_attrs,
	.is_visible = power_supply_attr_is_visible,
};

static const struct attribute_group *zte_power_supply_groups[] = {
	&zte_power_supply_attr_group,
	NULL,
};

/* Device release */
static void zte_power_supply_dev_release(struct device *dev)
{
	struct zte_power_supply *psy = to_zte_power_supply(dev);
	kfree(psy);
}

static struct device_type zte_power_supply_dev_type = {
	.name = "zte_power_supply",
	.release = zte_power_supply_dev_release,
};

noinline void zte_power_supply_init_attrs(struct device_type *dev_type)
{
	int i;

	dev_type->groups = zte_power_supply_groups;
	pr_info("zte_power_supply: initializing %zu attributes\n",
		ARRAY_SIZE(zte_power_supply_attrs));

	for (i = 0; i < ARRAY_SIZE(zte_power_supply_attrs); i++) {
		struct device_attribute *attr;
		char *name;

		if (!zte_power_supply_attrs[i].prop_name) {
			pr_warn("%s: property %d has no attribute name\n", __func__, i);
			sprintf(zte_power_supply_attrs[i].attr_name, "_err_%d", i);
		} else {
			for (name = zte_power_supply_attrs[i].attr_name; *name; name++)
				*name = tolower(*name);
		}

		attr = &zte_power_supply_attrs[i].dev_attr;
		attr->attr.name = zte_power_supply_attrs[i].attr_name;
		attr->show = zte_power_supply_show_property;
		attr->store = zte_power_supply_store_property;
		zte_power_supply_dev_attrs[i] = &attr->attr;
	}
}

/* Notifier registration */
int zte_power_supply_reg_notifier(struct notifier_block *nb)
{
	return atomic_notifier_chain_register(&zte_power_supply_notifier, nb);
}
EXPORT_SYMBOL_GPL(zte_power_supply_reg_notifier);

void zte_power_supply_unreg_notifier(struct notifier_block *nb)
{
	atomic_notifier_chain_unregister(&zte_power_supply_notifier, nb);
}
EXPORT_SYMBOL_GPL(zte_power_supply_unreg_notifier);

/* Changed Work e Notificações de Eventos */
static int __zte_power_supply_changed_work(struct device *dev, void *data)
{
	struct zte_power_supply *psy = dev_get_drvdata(dev);
	struct zte_power_supply *changed_psy = data;
	int i;

	if (!psy->supplied_from) {
		if (!changed_psy->supplied_to || !changed_psy->num_supplicants ||
		    !psy->desc->name)
			return 0;
		for (i = 0; i < changed_psy->num_supplicants; i++)
			if (!strcmp(changed_psy->supplied_to[i], psy->desc->name))
				goto changed;
		return 0;
	}

	if (!changed_psy->desc->name || !psy->num_supplies)
		return 0;
	for (i = 0; i < psy->num_supplies; i++)
		if (!strcmp(changed_psy->desc->name, psy->supplied_from[i]))
			goto changed;
	return 0;

changed:
	if (psy->desc->external_power_changed)
		psy->desc->external_power_changed(psy);
	return 0;
}

static void zte_power_supply_changed_work(struct work_struct *work)
{
	struct zte_power_supply *psy = container_of(work, struct zte_power_supply, changed_work);
	unsigned long flags;
	bool pending;

	spin_lock_irqsave(&psy->lock, flags);
	pending = psy->event_pending;
	if (pending) {
		psy->event_pending = false;
		spin_unlock_irqrestore(&psy->lock, flags);

		class_for_each_device(zte_power_supply_class, NULL, psy, __zte_power_supply_changed_work);
		atomic_notifier_call_chain(&zte_power_supply_notifier, PSY_EVENT_PROP_CHANGED, psy);
		kobject_uevent(&psy->dev.kobj, KOBJ_CHANGE);

		spin_lock_irqsave(&psy->lock, flags);
	}
	if (!psy->event_pending)
		pm_relax(&psy->dev);
	spin_unlock_irqrestore(&psy->lock, flags);
}

void zte_power_supply_changed(struct zte_power_supply *psy)
{
	unsigned long flags;

	spin_lock_irqsave(&psy->lock, flags);
	psy->event_pending = true;
	pm_stay_awake(&psy->dev);
	spin_unlock_irqrestore(&psy->lock, flags);

	queue_work(system_wq, &psy->changed_work);
}
EXPORT_SYMBOL_GPL(zte_power_supply_changed);

/* Deferred probe e Check supplies */
static int __zte_power_supply_find_supply_from_node(struct device *dev, void *data)
{
	struct zte_power_supply *psy = dev_get_drvdata(dev);
	return psy->of_node == data;
}

static int __zte_power_supply_populate_supplied_from(struct device *dev, void *data)
{
	struct zte_power_supply *psy = dev_get_drvdata(dev);
	struct zte_power_supply *target = data;
	struct of_phandle_args args;
	int index = -1;

	do {
		index++;
		if (of_parse_phandle_with_args(target->of_node, "power-supplies",
					       NULL, index, &args) || !args.np)
			return 0;
		if (args.np == psy->of_node) {
			dev_info(&target->dev, "%s: Found supply : %s\n",
				 target->desc->name, psy->desc->name);
			target->supplied_from[index] = psy->desc->name;
			target->num_supplies++;
			return 0;
		}
	} while (true);
}

static noinline int zte_power_supply_check_supplies(struct zte_power_supply *psy)
{
	struct of_phandle_args args;
	int count = 0, ret;

	if ((psy->supplied_from && psy->num_supplies) || !psy->of_node)
		return 0;

	do {
		ret = of_parse_phandle_with_args(psy->of_node, "power-supplies",
						  NULL, count, &args);
		if (ret || !args.np)
			break;
		count++;
		ret = class_for_each_device(zte_power_supply_class, NULL, args.np,
					    __zte_power_supply_find_supply_from_node);
		if (ret == 1)
			ret = 0;
		else if (!ret)
			ret = -EPROBE_DEFER;
		if (ret) {
			dev_info(&psy->dev, "Failed to find supply!\n");
			return ret;
		}
	} while (true);

	if (count == 0)
		return 0;

	psy->supplied_from = devm_kzalloc(&psy->dev,
					  sizeof(*psy->supplied_from), GFP_KERNEL);
	if (!psy->supplied_from)
		return -ENOMEM;
	psy->supplied_from[0] = devm_kcalloc(&psy->dev, count,
					    sizeof(*psy->supplied_from), GFP_KERNEL);
	if (!psy->supplied_from[0])
		return -ENOMEM;

	ret = class_for_each_device(zte_power_supply_class, NULL, psy,
				    __zte_power_supply_populate_supplied_from);
	dev_info(&psy->dev, "%s %d\n",
		 "zte_power_supply_populate_supplied_from", ret);
	return 0;
}

static void zte_power_supply_deferred_register_work(struct work_struct *work)
{
	struct zte_power_supply *psy = container_of(work, struct zte_power_supply, deferred_register_work.work);
	struct device *parent = psy->dev.parent;

	if (parent) {
		while (!device_trylock(parent)) {
			if (psy->removing)
				return;
			msleep(10);
			parent = psy->dev.parent;
		}
	}

	zte_power_supply_changed(psy);
	if (psy->dev.parent)
		device_unlock(psy->dev.parent);
}

/* Registro de power supplies */
static struct zte_power_supply *
__zte_power_supply_register(struct device *parent, const struct zte_power_supply_desc *desc,
			   const struct power_supply_config *cfg, bool wakeup)
{
	struct zte_power_supply *psy;
	int ret, i;

	if (!parent)
		pr_warn("%s: Expected proper parent device for '%s'\n",
			__func__, desc ? desc->name : NULL);

	if (!desc || !desc->name || !desc->properties || desc->num_properties == 0)
		return ERR_PTR(-EINVAL);

	/* Validação da propriedade 65 (charge control limit max) */
	for (i = 0; i < desc->num_properties; i++) {
		if (desc->properties[i] == ZTE_POWER_SUPPLY_PROP_CHARGE_CONTROL_LIMIT_MAX) {
			if (!desc->supplied_to || desc->num_supplicants == 0)
				return ERR_PTR(-EINVAL);
		}
	}

	psy = kzalloc(sizeof(*psy), GFP_KERNEL);
	if (!psy)
		return ERR_PTR(-ENOMEM);

	device_initialize(&psy->dev);
	psy->dev.class = zte_power_supply_class;
	psy->dev.type = &zte_power_supply_dev_type;
	psy->dev.parent = parent;
	dev_set_drvdata(&psy->dev, psy);
	psy->desc = desc;

	if (cfg) {
		psy->dev.groups = cfg->attr_grp;
		psy->drvdata = cfg->drv_data;
		psy->of_node = cfg->of_node;
		if (cfg->fwnode && is_of_node(cfg->fwnode))
			psy->of_node = to_of_node(cfg->fwnode);
		psy->supplied_to = cfg->supplied_to;
		psy->num_supplicants = cfg->num_supplicants;
	}

	ret = dev_set_name(&psy->dev, "%s", desc->name);
	if (ret)
		goto put_device;

	INIT_WORK(&psy->changed_work, zte_power_supply_changed_work);
	INIT_DELAYED_WORK(&psy->deferred_register_work, zte_power_supply_deferred_register_work);
	ret = zte_power_supply_check_supplies(psy);
	if (ret) {
		dev_info(&psy->dev, "Not all required supplies found, defer probe\n");
		goto put_device;
	}

	spin_lock_init(&psy->lock);
	ret = device_add(&psy->dev);
	if (ret)
		goto put_device;

	ret = device_init_wakeup(&psy->dev, wakeup);
	if (ret)
		goto put_device;

	atomic_inc(&psy->use_cnt);
	psy->initialized = true;
	queue_delayed_work(system_power_efficient_wq,
			   &psy->deferred_register_work, 3);

	return psy;

put_device:
	put_device(&psy->dev);
	return ERR_PTR(ret);
}

struct zte_power_supply *
zte_power_supply_register(struct device *parent, const struct zte_power_supply_desc *desc,
			  const struct power_supply_config *cfg)
{
	return __zte_power_supply_register(parent, desc, cfg, true);
}
EXPORT_SYMBOL_GPL(zte_power_supply_register);

struct zte_power_supply *
zte_power_supply_register_no_ws(struct device *parent, const struct zte_power_supply_desc *desc,
				 const struct power_supply_config *cfg)
{
	return __zte_power_supply_register(parent, desc, cfg, false);
}
EXPORT_SYMBOL_GPL(zte_power_supply_register_no_ws);

void zte_power_supply_unregister(struct zte_power_supply *psy)
{
	WARN_ON(atomic_dec_return(&psy->use_cnt));

	psy->removing = true;
	cancel_work_sync(&psy->changed_work);
	cancel_delayed_work_sync(&psy->deferred_register_work);

	sysfs_remove_link(&psy->dev.kobj, "powers");
	device_wakeup_disable(&psy->dev);
	device_set_wakeup_capable(&psy->dev, false);
	device_unregister(&psy->dev);
}
EXPORT_SYMBOL_GPL(zte_power_supply_unregister);

/* Devres Helpers */
struct zte_devres {
	struct zte_power_supply *psy;
};

static void zte_devm_power_supply_release(struct device *dev, void *res)
{
	struct zte_devres *devres = res;
	zte_power_supply_unregister(devres->psy);
}

struct zte_power_supply *
zte_devm_power_supply_register(struct device *parent, const struct zte_power_supply_desc *desc,
			       const struct power_supply_config *cfg)
{
	struct zte_devres *devres;
	struct zte_power_supply *psy;

	devres = devres_alloc(zte_devm_power_supply_release, sizeof(*devres), GFP_KERNEL);
	if (!devres)
		return ERR_PTR(-ENOMEM);

	psy = zte_power_supply_register(parent, desc, cfg);
	if (IS_ERR(psy)) {
		devres_free(devres);
		return psy;
	}

	devres->psy = psy;
	devres_add(parent, devres);

	return psy;
}
EXPORT_SYMBOL_GPL(zte_devm_power_supply_register);

struct zte_power_supply *
zte_devm_power_supply_register_no_ws(struct device *parent, const struct zte_power_supply_desc *desc,
				      const struct power_supply_config *cfg)
{
	struct zte_devres *devres;
	struct zte_power_supply *psy;

	devres = devres_alloc(zte_devm_power_supply_release, sizeof(*devres), GFP_KERNEL);
	if (!devres)
		return ERR_PTR(-ENOMEM);

	psy = zte_power_supply_register_no_ws(parent, desc, cfg);
	if (IS_ERR(psy)) {
		devres_free(devres);
		return psy;
	}

	devres->psy = psy;
	devres_add(parent, devres);

	return psy;
}
EXPORT_SYMBOL_GPL(zte_devm_power_supply_register_no_ws);

/* Lookup / get por nome ou phandle */
static int zte_power_supply_match_device_by_name(struct device *dev, const void *data)
{
	return strcmp(dev_name(dev), data) == 0;
}

struct zte_power_supply *zte_power_supply_get_by_name(const char *name)
{
	struct device *dev;
	struct zte_power_supply *psy = NULL;

	dev = class_find_device(zte_power_supply_class, NULL, name, zte_power_supply_match_device_by_name);
	if (dev) {
		psy = dev_get_drvdata(dev);
		atomic_inc(&psy->use_cnt);
	}
	return psy;
}
EXPORT_SYMBOL_GPL(zte_power_supply_get_by_name);

void zte_power_supply_put(struct zte_power_supply *psy)
{
	atomic_dec(&psy->use_cnt);
	put_device(&psy->dev);
}
EXPORT_SYMBOL_GPL(zte_power_supply_put);

static int zte_power_supply_match_device_node(struct device *dev, const void *data)
{
	return dev->parent && dev->parent->of_node == data;
}

struct zte_power_supply *zte_power_supply_get_by_phandle(struct device_node *np, const char *property)
{
	struct device_node *target_np;
	struct device *dev;
	struct zte_power_supply *psy = NULL;

	target_np = of_parse_phandle(np, property, 0);
	if (!target_np)
		return ERR_PTR(-ENODEV);

	dev = class_find_device(zte_power_supply_class, NULL, target_np,
				zte_power_supply_match_device_node);
	of_node_put(target_np);
	if (dev) {
		psy = dev_get_drvdata(dev);
		atomic_inc(&psy->use_cnt);
	}
	return psy;
}
EXPORT_SYMBOL_GPL(zte_power_supply_get_by_phandle);

struct zte_match_device_node_array_param {
	struct device_node *parent_of_node;
	struct zte_power_supply **psy;
	ssize_t psy_size;
	ssize_t psy_count;
};

static int zte_power_supply_match_device_node_array(struct device *dev,
						     void *data)
{
	struct zte_match_device_node_array_param *param = data;

	if (!dev->parent || dev->parent->of_node != param->parent_of_node)
		return 0;
	if (param->psy_count >= param->psy_size)
		return -EOVERFLOW;

	param->psy[param->psy_count] = dev_get_drvdata(dev);
	atomic_inc(&param->psy[param->psy_count]->use_cnt);
	param->psy_count++;
	return 0;
}

int zte_power_supply_get_by_phandle_array(struct device_node *np, const char *property,
					  struct zte_power_supply **psy_array, ssize_t size)
{
	struct zte_match_device_node_array_param param;
	struct device_node *target_np;

	if (!psy_array || !size)
		return -EINVAL;

	target_np = of_parse_phandle(np, property, 0);
	if (!target_np)
		return -ENODEV;

	param.parent_of_node = target_np;
	param.psy = psy_array;
	param.psy_size = size;
	param.psy_count = 0;
	class_for_each_device(zte_power_supply_class, NULL, &param,
			      zte_power_supply_match_device_node_array);
	of_node_put(target_np);
	return param.psy_count;
}
EXPORT_SYMBOL_GPL(zte_power_supply_get_by_phandle_array);

void *zte_power_supply_get_drvdata(struct zte_power_supply *psy)
{
	return psy->drvdata;
}
EXPORT_SYMBOL_GPL(zte_power_supply_get_drvdata);

/* Uevent Callback */
int zte_power_supply_uevent(const struct device *dev, struct kobj_uevent_env *env)
{
	struct zte_power_supply *psy = dev_get_drvdata((struct device *)dev);
	char *prop_buf;
	int i, ret;

	if (!psy || !psy->desc)
		return 0;

	ret = add_uevent_var(env, "POWER_SUPPLY_NAME=%s", psy->desc->name);
	if (ret)
		return ret;

	prop_buf = (char *)get_zeroed_page(GFP_KERNEL);
	if (!prop_buf)
		return -ENOMEM;

	for (i = 0; i < psy->desc->num_properties; i++) {
		enum zte_power_supply_property psp = psy->desc->properties[i];
		char *end;

		BUG_ON(psp >= MAX_PSY_ATTRS);
		ret = zte_power_supply_show_property((struct device *)dev,
				&zte_power_supply_attrs[psp].dev_attr, prop_buf);
		if (ret == -ENODATA || ret == -ENODEV)
			continue;
		if (ret < 0)
			goto out;

		end = strchr(prop_buf, '\n');
		if (end)
			*end = '\0';
		ret = add_uevent_var(env, "POWER_SUPPLY_%s=%s",
				     zte_power_supply_attrs[psp].prop_name,
				     prop_buf);
		if (ret)
			goto out;
	}
	ret = 0;

out:
	free_page((unsigned long)prop_buf);
	return ret;
}

/* Additional exported API functions discovered via dynamic validation */
void zte_power_supply_external_power_changed(struct zte_power_supply *psy)
{
	if (atomic_read(&psy->use_cnt) > 0 && psy->desc->external_power_changed)
		psy->desc->external_power_changed(psy);
}
EXPORT_SYMBOL_GPL(zte_power_supply_external_power_changed);

int zte_power_supply_set_battery_charged(struct zte_power_supply *psy)
{
	if (atomic_read(&psy->use_cnt) >= 0 &&
	    psy->desc->type == POWER_SUPPLY_TYPE_BATTERY &&
	    psy->desc->set_charged) {
		psy->desc->set_charged(psy);
		return 0;
	}
	return -EINVAL;
}
EXPORT_SYMBOL_GPL(zte_power_supply_set_battery_charged);

int zte_power_supply_powers(struct zte_power_supply *psy, struct device *dev)
{
	return sysfs_create_link(&psy->dev.kobj, &dev->kobj, "powers");
}
EXPORT_SYMBOL_GPL(zte_power_supply_powers);

/* OCV / Temperature interpolation helpers (from power_supply_core) */
int zte_power_supply_ocv2cap_simple(struct power_supply_battery_ocv_table *table,
				    int table_len, int ocv)
{
	int i;

	if (table_len <= 0)
		return table[0].capacity;

	for (i = 0; i < table_len; i++) {
		if (ocv >= table[i].ocv)
			break;
	}

	if (i > 0 && i < table_len) {
		int dv = table[i - 1].ocv - table[i].ocv;
		int dc = table[i - 1].capacity - table[i].capacity;

		return table[i].capacity +
			(dv ? (ocv - table[i].ocv) * dc / dv : 0);
	}

	if (i == 0)
		return table[0].capacity;

	return table[table_len - 1].capacity;
}
EXPORT_SYMBOL_GPL(zte_power_supply_ocv2cap_simple);

int zte_power_supply_temp2resist_simple(struct power_supply_resistance_temp_table *table,
					int table_len, int temp)
{
	int i;

	if (table_len <= 0)
		return table[0].resistance;

	for (i = 0; i < table_len; i++) {
		if (temp >= table[i].temp)
			break;
	}

	if (i > 0 && i < table_len) {
		int dt = table[i - 1].temp - table[i].temp;
		int dr = table[i - 1].resistance - table[i].resistance;

		return table[i].resistance +
			(dt ? (temp - table[i].temp) * dr / dt : 0);
	}

	if (i == 0)
		return table[0].resistance;

	return table[table_len - 1].resistance;
}
EXPORT_SYMBOL_GPL(zte_power_supply_temp2resist_simple);

void zte_power_supply_put_battery_info(struct zte_power_supply *psy,
				       struct power_supply_battery_info *info)
{
	int i;

	for (i = 0; i < POWER_SUPPLY_OCV_TEMP_MAX; i++) {
		if (info->ocv_table[i])
			devm_kfree(&psy->dev, info->ocv_table[i]);
	}
	if (info->resist_table)
		devm_kfree(&psy->dev, info->resist_table);
}
EXPORT_SYMBOL_GPL(zte_power_supply_put_battery_info);

int zte_power_supply_get_battery_info(struct zte_power_supply *psy,
				      struct power_supply_battery_info *info)
{
	struct power_supply_resistance_temp_table *resist_table;
	struct device_node *battery_np;
	const __be32 *list;
	const char *value;
	int err, len, index;

	info->energy_full_design_uwh = -EINVAL;
	info->charge_full_design_uah = -EINVAL;
	info->voltage_min_design_uv = -EINVAL;
	info->voltage_max_design_uv = -EINVAL;
	info->precharge_current_ua = -EINVAL;
	info->charge_term_current_ua = -EINVAL;
	info->constant_charge_current_max_ua = -EINVAL;
	info->constant_charge_voltage_max_uv = -EINVAL;
	info->factory_internal_resistance_uohm = -EINVAL;
	info->resist_table = NULL;

	for (index = 0; index < POWER_SUPPLY_OCV_TEMP_MAX; index++) {
		info->ocv_temp[index] = -EINVAL;
		info->ocv_table[index] = NULL;
		info->ocv_table_size[index] = -EINVAL;
	}

	if (!psy->of_node) {
		dev_warn(&psy->dev, "%s currently only supports devicetree\n",
			 __func__);
		return -ENXIO;
	}

	battery_np = of_parse_phandle(psy->of_node, "monitored-battery", 0);
	if (!battery_np)
		return -ENODEV;

	err = of_property_read_string(battery_np, "compatible", &value);
	if (err)
		goto out_put_node;
	if (strcmp("simple-battery", value)) {
		err = -ENODEV;
		goto out_put_node;
	}

	of_property_read_u32(battery_np, "energy-full-design-microwatt-hours",
			     &info->energy_full_design_uwh);
	of_property_read_u32(battery_np, "charge-full-design-microamp-hours",
			     &info->charge_full_design_uah);
	of_property_read_u32(battery_np, "voltage-min-design-microvolt",
			     &info->voltage_min_design_uv);
	of_property_read_u32(battery_np, "voltage-max-design-microvolt",
			     &info->voltage_max_design_uv);
	of_property_read_u32(battery_np, "precharge-current-microamp",
			     &info->precharge_current_ua);
	of_property_read_u32(battery_np, "charge-term-current-microamp",
			     &info->charge_term_current_ua);
	of_property_read_u32(battery_np, "constant-charge-current-max-microamp",
			     &info->constant_charge_current_max_ua);
	of_property_read_u32(battery_np, "constant-charge-voltage-max-microvolt",
			     &info->constant_charge_voltage_max_uv);
	of_property_read_u32(battery_np, "factory-internal-resistance-micro-ohms",
			     &info->factory_internal_resistance_uohm);

	len = of_property_count_u32_elems(battery_np, "ocv-capacity-celsius");
	if (len < 0 && len != -EINVAL) {
		err = len;
		goto out_put_node;
	}
	if (len > POWER_SUPPLY_OCV_TEMP_MAX) {
		dev_err(&psy->dev, "Too many temperature values\n");
		err = -EINVAL;
		goto out_put_node;
	}
	if (len > 0)
		of_property_read_u32_array(battery_np, "ocv-capacity-celsius",
					   info->ocv_temp, len);

	for (index = 0; index < len; index++) {
		struct power_supply_battery_ocv_table *table;
		char *propname;
		int i, size;

		propname = kasprintf(GFP_KERNEL, "ocv-capacity-table-%d", index);
		if (!propname)
			goto out_nomem_ocv;
		list = of_get_property(battery_np, propname, &size);
		if (!list || !size) {
			dev_err(&psy->dev, "failed to get %s\n", propname);
			kfree(propname);
			goto out_bad_ocv;
		}
		kfree(propname);

		info->ocv_table_size[index] = size / (2 * sizeof(__be32));
		table = devm_kcalloc(&psy->dev, info->ocv_table_size[index],
				      sizeof(*table), GFP_KERNEL);
		info->ocv_table[index] = table;
		if (!table)
			goto out_nomem_ocv;

		for (i = 0; i < info->ocv_table_size[index]; i++) {
			table[i].ocv = be32_to_cpu(*list++);
			table[i].capacity = be32_to_cpu(*list++);
		}
	}

	list = of_get_property(battery_np, "resistance-temp-table", &len);
	err = 0;
	if (!list || !len)
		goto out_put_node;

	info->resist_table_size = len / (2 * sizeof(__be32));
	resist_table = devm_kcalloc(&psy->dev, info->resist_table_size,
				    sizeof(*resist_table), GFP_KERNEL);
	info->resist_table = resist_table;
	if (!resist_table) {
		zte_power_supply_put_battery_info(psy, info);
		err = -ENOMEM;
		goto out_put_node;
	}

	for (index = 0; index < info->resist_table_size; index++) {
		resist_table[index].temp = be32_to_cpu(*list++);
		resist_table[index].resistance = be32_to_cpu(*list++);
	}
	goto out_put_node;

out_bad_ocv:
	for (index = 0; index < POWER_SUPPLY_OCV_TEMP_MAX; index++)
		if (info->ocv_table[index])
			devm_kfree(&psy->dev, info->ocv_table[index]);
	err = -EINVAL;
	goto out_free_resist;

out_nomem_ocv:
	info->ocv_table[index] = NULL;
	for (index = 0; index < POWER_SUPPLY_OCV_TEMP_MAX; index++)
		if (info->ocv_table[index])
			devm_kfree(&psy->dev, info->ocv_table[index]);
	err = -ENOMEM;

out_free_resist:
	if (info->resist_table)
		devm_kfree(&psy->dev, info->resist_table);
out_put_node:
	of_node_put(battery_np);
	return err;
}
EXPORT_SYMBOL_GPL(zte_power_supply_get_battery_info);

struct power_supply_battery_ocv_table *
zte_power_supply_find_ocv2cap_table(struct power_supply_battery_info *info,
				    int temp, int *table_len)
{
	int i, best_delta = INT_MAX, best_idx = 0;

	if (!info->ocv_table[0])
		return NULL;

	for (i = 0; i < POWER_SUPPLY_OCV_TEMP_MAX; i++) {
		int delta = abs(temp - info->ocv_temp[i]);

		if (delta < best_delta) {
			best_delta = delta;
			best_idx = i;
		}
	}

	*table_len = info->ocv_table_size[best_idx];
	return info->ocv_table[best_idx];
}
EXPORT_SYMBOL_GPL(zte_power_supply_find_ocv2cap_table);

int zte_power_supply_batinfo_ocv2cap(struct power_supply_battery_info *info,
				     int ocv, int temp)
{
	struct power_supply_battery_ocv_table *table;
	int table_len;

	table = zte_power_supply_find_ocv2cap_table(info, temp, &table_len);
	if (!table)
		return -EINVAL;

	return zte_power_supply_ocv2cap_simple(table, table_len, ocv);
}
EXPORT_SYMBOL_GPL(zte_power_supply_batinfo_ocv2cap);

/* Devres get_by_phandle */
static void zte_devm_power_supply_put(struct device *dev, void *res)
{
	struct zte_power_supply **psy_ptr = res;
	zte_power_supply_put(*psy_ptr);
}

struct zte_power_supply *
zte_devm_power_supply_get_by_phandle(struct device *dev, const char *property)
{
	struct zte_power_supply **devres_ptr;
	struct zte_power_supply *psy;
	struct device_node *np = dev->of_node;

	if (!np)
		return ERR_PTR(-ENODEV);

	devres_ptr = devres_alloc(zte_devm_power_supply_put, sizeof(*devres_ptr), GFP_KERNEL);
	if (!devres_ptr)
		return ERR_PTR(-ENOMEM);

	psy = zte_power_supply_get_by_phandle(np, property);
	if (IS_ERR_OR_NULL(psy)) {
		devres_free(devres_ptr);
		return psy;
	}

	*devres_ptr = psy;
	devres_add(dev, devres_ptr);

	return psy;
}
EXPORT_SYMBOL_GPL(zte_devm_power_supply_get_by_phandle);

/* Modulo Init / Exit */
static int __init zte_power_supply_init(void)
{
	zte_power_supply_class = class_create(ZTE_POWER_SUPPLY_CLASS_NAME);
	if (IS_ERR(zte_power_supply_class))
		return PTR_ERR(zte_power_supply_class);

	zte_power_supply_class->dev_uevent = zte_power_supply_uevent;
	zte_power_supply_init_attrs(&zte_power_supply_dev_type);

	return 0;
}

static void __exit zte_power_supply_exit(void)
{
	class_destroy(zte_power_supply_class);
}

module_init(zte_power_supply_init);
module_exit(zte_power_supply_exit);

MODULE_AUTHOR("ZTE Corporation / Nubia");
MODULE_DESCRIPTION("Nubia/ZTE Power Supply Control Wrapper Subsystem");
MODULE_LICENSE("GPL");
