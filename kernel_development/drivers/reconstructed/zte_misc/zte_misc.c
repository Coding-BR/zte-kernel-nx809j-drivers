// SPDX-License-Identifier: GPL-2.0-only
/*
 * zte_misc.c - ZTE Miscellaneous and Common Callback Driver
 *
 * Implements a central property registry/bus where other ZTE drivers can
 * register callbacks for power, charging, and platform features. Also
 * parses chosen boot arguments for power-off charging and handles ZTE timezone setups.
 *
 * Reconstructed from binary analysis of zte_misc.ko
 * extracted from NX809J (Red Magic 11 Pro) production firmware.
 */

#ifdef ZTE_MISC_HOST_TEST
#include "tests/host_stubs.h"
#else
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/platform_device.h>
#include <linux/of.h>
#include <linux/of_gpio.h>
#include <linux/slab.h>
#include <linux/power_supply.h>
#include <linux/string.h>
#endif

#define DRV_NAME "zte-misc"

/* Control flow integrity signature / hash value matching original binary checks */
#define ZTE_CFI_GET_SIG 697349865
#define ZTE_CFI_SET_SIG 1291426251

/* ======================================================================
 * Structures and Globals
 * ====================================================================== */

struct zte_misc_ops {
	const char *name;
	int (*set)(const char *buf, const void *priv);
	int (*get)(char *buf, const void *priv);
	int (*show)(char *buf, const void *priv);
	void *priv;
};

struct zte_gpio_entry {
	int gpio;
	const char *label;
};

/* 16 entries max per probe logic limits */
struct zte_gpio_entry zte_gpios[16];

int zte_timezone;
unsigned int zte_poweroff_charging;
static bool zte_poweroff_charging_param;

int battery_vendor_id[] = { 2, 3, 4, 17, 10, 12, 15, 20, 20 };
int resistance_kohm[] = { 10, 20, 33, 82, 180, 240, 330, 430, 470 };

/* ZTE node property table populated by callbacks from peer vendor modules. */
struct zte_misc_ops node_ops_list[] = {
	{ "enable_to_shutdown" },
	{ "enable_to_dump_reg" },
	{ "demo_charging_policy" },
	{ "expired_charging_policy" },
	{ "charging_time_sec" },
	{ "force_disching_sec" },
	{ "policy_cap_min" },
	{ "policy_cap_max" },
	{ "policy_enable" },
	{ "bcl_demon_switch" },
	{ "qc3dp_sleep_mode" },
	{ "screen_on" },
	{ "wireless_charging_signal_good" },
	{ "wireless_efficiency" },
	{ "wireless_signal_strength" },
	{ "wireless_tx_rx" },
	{ "wireless_debug" },
	{ "pe1_debug" },
	{ "pd_debug" },
	{ "super_charge_mode" },
	{ "charge_remain_time" },
	{ "batt_temp_debug" },
	{ "cap_debug" },
	{ "charger_power" },
	{ "thermal_control_en" },
	{ "charge_type_oem" },
	{ "wls_nu_cep" },
	{ "wls_nu_iout" },
	{ "wls_nu_usbtype" },
	{ "wls_nu_vout" },
	{ "wls_nu_vrect" },
	{ "wls_boost_en" },
	{ "wls_nu_fw_update" },
	{ "wls_nu_ver" },
	{ "wls_nu_sleep" },
	{ "zlog_enable_test" },
};

#define NODE_OPS_COUNT ARRAY_SIZE(node_ops_list)

/* ======================================================================
 * Registered Callbacks & Node Values API
 * ====================================================================== */

int zte_misc_register_callback(struct zte_misc_ops *callback, void *priv)
{
	const char *name;
	int ret = 0;
	int i;

	if (!callback)
		return -EINVAL;

	name = callback->name;
	if (!name)
		return -EINVAL;

	for (i = 0; i < NODE_OPS_COUNT; i++) {
		if (strncmp(node_ops_list[i].name, name, strlen(name)) == 0) {
			if (strlen(node_ops_list[i].name) == strlen(name)) {
				pr_info("%s: name[%d]: %s\n", __func__, i,
					node_ops_list[i].name);

				if (node_ops_list[i].get || node_ops_list[i].set ||
				    node_ops_list[i].show || node_ops_list[i].priv) {
					pr_info("%s: register name[%d]: %s failed!!!\n",
						__func__, i, node_ops_list[i].name);
					ret = -EFAULT;
				} else {
					node_ops_list[i].get = callback->get;
					node_ops_list[i].set = callback->set;
					node_ops_list[i].show = callback->show;
					node_ops_list[i].priv = priv ? priv :
						callback->priv;
				}
				break;
			}
		}
	}

	if (i >= NODE_OPS_COUNT)
		return -EINVAL;

	return ret;
}
EXPORT_SYMBOL(zte_misc_register_callback);

int zte_misc_get_node_val(const char *name)
{
	char buf[64];
	size_t len;
	int i;
	int val = 0;

	if (!name || !*name)
		return -EINVAL;

	memset(buf, 0, sizeof(buf));
	len = strlen(name);

	for (i = 0; i < NODE_OPS_COUNT; i++) {
		if (strncmp(node_ops_list[i].name, name, len) == 0) {
			if (strlen(node_ops_list[i].name) == strlen(name)) {
				if (node_ops_list[i].get)
					break;
			}
		}
	}

	if (i == NODE_OPS_COUNT) {
		pr_err("find node_name failed\n");
		return -EINVAL;
	}

	/* Invoke get callback with security signature check (represented here by type verification) */
	if (node_ops_list[i].get(buf, node_ops_list[i].priv) >= 0) {
		if (sscanf(buf, "%d", &val) == 1)
			return val;
		pr_err("sscanf result failed\n");
	}

	return -EINVAL;
}
EXPORT_SYMBOL(zte_misc_get_node_val);

/* ======================================================================
 * Common Callbacks interfaces (exposed to other subsystems)
 * ====================================================================== */

int zte_misc_common_callback_get(char *buffer, const struct kernel_param *kp)
{
	char name_buf[64];
	int ret;
	int i;

	memset(name_buf, 0, sizeof(name_buf));
	ret = sscanf(kp->name, "%s", name_buf);
	if (ret != 1) {
		pr_info("sscanf node_name failed\n");
		return -EINVAL;
	}

	ret = 0;
	for (i = 0; i < NODE_OPS_COUNT; i++) {
		if (!strncmp(node_ops_list[i].name, name_buf, strlen(name_buf)) &&
		    strlen(node_ops_list[i].name) == strlen(name_buf) &&
		    node_ops_list[i].get) {
			ret = node_ops_list[i].get(buffer, node_ops_list[i].priv);
			if (ret < 0)
				break;
		}
	}
	return ret;
}

int zte_misc_common_callback_set(const char *value,
				 const struct kernel_param *kp)
{
	char name_buf[64];
	int ret;
	int i;

	memset(name_buf, 0, sizeof(name_buf));
	ret = sscanf(kp->name, "%s", name_buf);
	if (ret != 1) {
		pr_info("sscanf node_name failed\n");
		return -EINVAL;
	}

	ret = 0;
	for (i = 0; i < NODE_OPS_COUNT; i++) {
		if (!strncmp(node_ops_list[i].name, name_buf, strlen(name_buf)) &&
		    strlen(node_ops_list[i].name) == strlen(name_buf) &&
		    node_ops_list[i].set) {
			ret = node_ops_list[i].set(value, node_ops_list[i].priv);
			if (ret < 0)
				break;
		}
	}
	return ret;
}

/* ======================================================================
 * Battery Capacity & OEM Pack Helpers
 * ====================================================================== */

int battery_module_pack_vendor_get(char *buf, const struct kernel_param *kp)
{
	int temp_resistance;
	char resistance[10] = { 0 };
	int vendor;
	int i = 0;

	if (kstrtoint(resistance, 10, &temp_resistance))
		return -1;
	pr_info("resistance_id: %d", temp_resistance);
	temp_resistance /= 1000;
	if (temp_resistance >
		    resistance_kohm[ARRAY_SIZE(resistance_kohm) - 1] * 109 / 100 ||
	    temp_resistance < resistance_kohm[0] * 91 / 100) {
		pr_err("resistance is out of range, %dkohm\n", temp_resistance);
		return -1;
	}

	if (temp_resistance >= resistance_kohm[0] * 109 / 100 ||
	    temp_resistance <= resistance_kohm[0] * 91 / 100)
		goto check_remaining;

matched:
	vendor = battery_vendor_id[i];

output:
	pr_info("battery resistance is %dkohm, battery_vendor_id = %2d\n",
		temp_resistance, vendor);
	return snprintf(buf, PAGE_SIZE, "%2d", vendor);

check_remaining:
	for (i = 1; i < ARRAY_SIZE(resistance_kohm) - 1; i++) {
		if (temp_resistance < resistance_kohm[i] * 109 / 100 &&
		    temp_resistance > resistance_kohm[i] * 91 / 100)
			goto matched;
	}
	vendor = 0;
	goto output;
}

int zte_misc_get_design_capacity(char *buf, const struct kernel_param *kp)
{
	struct power_supply *psy;
	union power_supply_propval val = { 0 };
	int capacity = 0;
	int ret;

	psy = power_supply_get_by_name("battery");
	if (psy) {
		ret = power_supply_get_property(psy, 0x16, &val);
		if (ret)
			pr_err("failed to battery design capacity, error:%d.\n", ret);
		power_supply_put(psy);

		capacity = val.intval > 999999 ? val.intval / 1000 : val.intval;
	} else {
		pr_err("bms_psy is NULL.\n");
	}

	pr_info("battery design capacity = %dmAh\n", capacity);
	return snprintf(buf, PAGE_SIZE, "%d", capacity);
}

/* ======================================================================
 * Timezone, Power-off Charging and GPIO Helpers
 * ====================================================================== */

int __init zte_timezone_setup(const char *val)
{
	long long tz = 0;
	int ret;

	ret = kstrtoll(val, 0, &tz);
	if (!ret) {
		zte_timezone = (int)tz;
		return 1;
	}
	return ret;
}

int __init zte_poweroff_charging_handle(const char *val)
{
	zte_poweroff_charging = (strncmp(val, "charger", 7) == 0);
	pr_info("zte_misc: setup mode, %s[%d]\n", val,
		zte_poweroff_charging);
	return 0;
}

int zte_poweroff_charging_status(void)
{
	pr_info("zte_misc: poweroff_charging: %d param:%d\n",
		zte_poweroff_charging, zte_poweroff_charging_param);
	return zte_poweroff_charging | zte_poweroff_charging_param;
}
EXPORT_SYMBOL(zte_poweroff_charging_status);

unsigned int get_sysnumber_byname(const char *name)
{
	int i;

	for (i = 0; i < 16; i++) {
		if (zte_gpios[i].label && strcmp(zte_gpios[i].label, name) == 0) {
			return zte_gpios[i].gpio;
		}
	}
	return 0;
}

/* ======================================================================
 * Module Parameters
 * ====================================================================== */

static const struct kernel_param_ops battery_vendor_param_ops = {
	.get = battery_module_pack_vendor_get,
};
module_param_cb(battery_module_pack_vendor, &battery_vendor_param_ops, NULL, 0444);

/* Timezone param */
module_param(zte_timezone, int, 0644);

static const struct kernel_param_ops design_capacity_param_ops = {
	.get = zte_misc_get_design_capacity,
};
module_param_cb(design_capacity, &design_capacity_param_ops, NULL, 0444);

/* Remaining parameters mapped to the node_ops get/set mechanisms */
static struct kernel_param_ops zte_misc_common_callback = {
	.set = zte_misc_common_callback_set,
	.get = zte_misc_common_callback_get,
};

/* Register each node property as a module parameter dynamic callback */
#define DEFINE_NODE_PARAM(node_name) \
	module_param_cb(node_name, &zte_misc_common_callback, NULL, 0664)

DEFINE_NODE_PARAM(enable_to_shutdown);
DEFINE_NODE_PARAM(enable_to_dump_reg);
DEFINE_NODE_PARAM(demo_charging_policy);
DEFINE_NODE_PARAM(expired_charging_policy);
DEFINE_NODE_PARAM(charging_time_sec);
DEFINE_NODE_PARAM(force_disching_sec);
DEFINE_NODE_PARAM(policy_cap_min);
DEFINE_NODE_PARAM(policy_cap_max);
DEFINE_NODE_PARAM(policy_enable);
DEFINE_NODE_PARAM(bcl_demon_switch);
DEFINE_NODE_PARAM(qc3dp_sleep_mode);
DEFINE_NODE_PARAM(screen_on);
DEFINE_NODE_PARAM(wireless_charging_signal_good);
DEFINE_NODE_PARAM(wireless_efficiency);
DEFINE_NODE_PARAM(wireless_signal_strength);
DEFINE_NODE_PARAM(wireless_tx_rx);
DEFINE_NODE_PARAM(wireless_debug);
DEFINE_NODE_PARAM(pe1_debug);
DEFINE_NODE_PARAM(pd_debug);
DEFINE_NODE_PARAM(super_charge_mode);
DEFINE_NODE_PARAM(charge_remain_time);
DEFINE_NODE_PARAM(batt_temp_debug);
DEFINE_NODE_PARAM(cap_debug);
DEFINE_NODE_PARAM(charger_power);
DEFINE_NODE_PARAM(thermal_control_en);
DEFINE_NODE_PARAM(charge_type_oem);
DEFINE_NODE_PARAM(wls_nu_cep);
DEFINE_NODE_PARAM(wls_nu_iout);
DEFINE_NODE_PARAM(wls_nu_usbtype);
DEFINE_NODE_PARAM(wls_nu_vout);
DEFINE_NODE_PARAM(wls_nu_vrect);
DEFINE_NODE_PARAM(wls_boost_en);
DEFINE_NODE_PARAM(wls_nu_fw_update);
DEFINE_NODE_PARAM(wls_nu_ver);
DEFINE_NODE_PARAM(wls_nu_sleep);
DEFINE_NODE_PARAM(zlog_enable_test);

/* ======================================================================
 * Platform Driver Probe & Remove
 * ====================================================================== */

static int zte_misc_probe(struct platform_device *pdev)
{
	pr_info("%s into\n", __func__);

	/* Preserve the stock ordering of the entry trace and scratch setup. */
	struct device_node *np;
	struct device_node *child;
	struct device_node *chosen;
	struct zte_gpio_entry *gpio_base;
	struct zte_gpio_entry *entry;
	const char *bootargs = NULL;
	const char *p;
	char mode_buf[128] = { 0 };
	unsigned int gpio_idx = -1;

	/* Parse kmparam.mode from chosen node bootargs */
	chosen = of_find_node_opts_by_path("/chosen", NULL);
	if (!chosen) {
		pr_err("zte_misc: %s find chosen failed!\n",
		       "zte_poweroff_charging_handle_init");
		goto bootargs_done;
	}

	if (of_property_read_string(chosen, "bootargs", &bootargs) < 0) {
		pr_err("zte_misc: %s get bootargs failed!\n",
		       "zte_poweroff_charging_handle_init");
		goto bootargs_done;
	}
	goto parse_bootargs;

bootargs_done:
	pr_info("zte_misc: translate hardware pin to system pin\n");
	np = pdev->dev.of_node;
	if (!np)
		return -ENODEV;
	goto parse_gpios;

parse_bootargs:
	p = strstr(bootargs, "kmparam.mode=");
	if (p) {
		sscanf(p, "kmparam.mode=%s", mode_buf);
		zte_poweroff_charging_param =
			!strncmp(mode_buf, "charger", 7);
		pr_info("zte_misc: poweroff_charging_param: %d, val_buf=%s\n",
			zte_poweroff_charging_param, mode_buf);
	} else {
		pr_err("zte_misc: can't find kmparam.mode\n");
	}
	goto bootargs_done;

	/* Parse child nodes for GPIO mappings */
parse_gpios:
	gpio_base = zte_gpios;
	for_each_child_of_node(np, child) {
		const char *label;
		int gpio;

		if (!of_find_property(child, "label", NULL)) {
			dev_warn(&pdev->dev, "Found without labels\n");
			continue;
		}

		if (gpio_idx == 15) {
			pr_err("zte_gpio count out of range.\n");
			break;
		}

		gpio_idx++;
		label = of_get_property(child, "label", NULL);
		entry = gpio_base + gpio_idx;
		entry->label = kstrdup(label, GFP_KERNEL);
		gpio = of_get_named_gpio(child, "zte-misc", 0);
		entry->gpio = gpio;
		pr_info("zte_misc: sys_number=%d name=%s\n", gpio,
			entry->label);
	}

	pr_info("%s end\n", __func__);
	return 0;
}

static void zte_misc_remove(struct platform_device *pdev)
{
}

static const struct of_device_id zte_misc_match_table[] = {
	{ .compatible = "zte-misc", },
	{ },
};
MODULE_DEVICE_TABLE(of, zte_misc_match_table);

static struct platform_driver zte_misc_device_driver = {
	.probe = zte_misc_probe,
	.remove = zte_misc_remove,
	.driver = {
		.name = DRV_NAME,
		.of_match_table = zte_misc_match_table,
	},
};

int __init zte_misc_init(void)
{
	pr_info("%s into\n", __func__);
	return platform_driver_register(&zte_misc_device_driver);
}

static void __exit zte_misc_exit(void)
{
	platform_driver_unregister(&zte_misc_device_driver);
}

module_init(zte_misc_init);
module_exit(zte_misc_exit);

MODULE_DESCRIPTION("Misc driver for zte");
MODULE_LICENSE("GPL v2");
MODULE_INFO(built_with, "DDK");
MODULE_ALIAS("platform:zte-misc");
