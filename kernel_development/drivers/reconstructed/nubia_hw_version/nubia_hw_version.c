// SPDX-License-Identifier: GPL-2.0-only
#include <linux/delay.h>
#include <linux/err.h>
#include <linux/gpio.h>
#include <linux/gpio/consumer.h>
#include <linux/init.h>
#include <linux/kernel.h>
#include <linux/kobject.h>
#include <linux/module.h>
#include <linux/of.h>
#include <linux/of_gpio.h>
#include <linux/platform_device.h>
#include <linux/slab.h>
#include <linux/string.h>
#include <linux/sysfs.h>

#include "nubia_hw_version.h"

u8 nubia_pcb_gpio1_v;
u8 nubia_pcb_gpio2_v;
u8 nubia_pcb_gpio3_v;
int pcb_gpio3;
u8 nubia_rf_gpio1_v;
u8 nubia_rf_gpio2_v;
static int debug_value;
struct kobject *hw_version_kobj;

static const struct nubia_pcb_gpio_map hw_pcb_gpio_map[] = {
	{ 0, 0, 0, "MB_A" },
	{ 0, 2, 1, "MB_B" },
	{ 2, 0, 2, "MB_C" },
	{ 2, 2, 3, "MB_D" },
	{ 2, 1, 4, "MB_E" },
	{ 1, 2, 5, "MB_E1" },
	{ 1, 0, 6, "MB_F" },
	{ 0, 1, 7, "MB_F1" },
	{ 1, 1, 8, "MB_G" },
	{ 3, 3, 9, "UNKNOW" },
};

static const struct nubia_rf_band_gpio_map hw_rf_band_gpio_map[] = {
	{ 0, 0, "COMMON" },
	{ 0, 2, "CHINA" },
	{ 2, 0, "JAPAN" },
	{ 2, 2, "SAUDI" },
	{ 0, 1, "***" },
	{ 2, 1, "***" },
	{ 1, 0, "***" },
};

static const char charge_version[][4] = { "V2A", "V1A", "V1B" };
static const int hml_config_version[] = { 0, 2, 1 };
static const unsigned long rf_band_gpio1_zero[] = { 0, 1, 2 };
static const unsigned long rf_band_gpio1_two[] = { 3, 4, 5 };

int nubia_gpio_ctrl1(struct platform_device *pdev)
{
	struct nubia_hw_gpio_info *info = platform_get_drvdata(pdev);

	if (!info) {
		dev_err(&pdev->dev, "Cannot get hw gpio info\n");
		return -EINVAL;
	}
	if (!info->pull_down) {
		pr_err("nubia hw pinctrl down state is null\n");
		return -EINVAL;
	}

	return pinctrl_select_state(info->pinctrl, info->pull_down);
}

int nubia_gpio_ctrl(struct platform_device *pdev)
{
	struct nubia_hw_gpio_info *info;
	int ret;

	info = devm_kzalloc(&pdev->dev, sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	info->pinctrl = devm_pinctrl_get(&pdev->dev);
	if (IS_ERR_OR_NULL(info->pinctrl)) {
		dev_err(&pdev->dev, "Cannot get hw gpio pinctrl\n");
		ret = PTR_ERR(info->pinctrl);
		goto err_free;
	}

	info->pull_up = pinctrl_lookup_state(info->pinctrl,
					     "pull_up_default");
	if (IS_ERR_OR_NULL(info->pull_up)) {
		dev_err(&pdev->dev,
			"Cannot get hw gpio pullup pinctrl state\n");
		ret = PTR_ERR(info->pull_up);
		goto err_put;
	}

	info->pull_down = pinctrl_lookup_state(info->pinctrl,
					       "pull_down_default");
	if (IS_ERR_OR_NULL(info->pull_down)) {
		dev_err(&pdev->dev,
			"Cannot get hw gpio pulldown pinctrl state\n");
		ret = PTR_ERR(info->pull_down);
		goto err_put;
	}

	ret = pinctrl_select_state(info->pinctrl, info->pull_up);
	if (ret)
		dev_err(&pdev->dev, "set hw gpio pullup state fail:\n");

	platform_set_drvdata(pdev, info);
	return 0;

err_put:
	devm_pinctrl_put(info->pinctrl);
err_free:
	devm_kfree(&pdev->dev, info);
	return ret;
}

struct nubia_pcb_gpio_map *
nubia_get_pcb_table_item_by_gpio(struct nubia_pcb_gpio_map *table,
				 unsigned int count)
{
	unsigned int i;

	if (!table || !count)
		return NULL;

	for (i = 0; i < count; i++) {
		if (table[i].gpio1 == nubia_pcb_gpio1_v &&
		    table[i].gpio2 == nubia_pcb_gpio2_v)
			return &table[i];
	}

	return NULL;
}

int nubia_get_hw_id(void)
{
	struct nubia_pcb_gpio_map *item;

	item = nubia_get_pcb_table_item_by_gpio(
		(struct nubia_pcb_gpio_map *)hw_pcb_gpio_map,
		ARRAY_SIZE(hw_pcb_gpio_map));
	if (!item)
		return 9;

	if (debug_value == 1)
		pr_info("[nubia_hw_version]pcb_type=%x\n", item->hw_id);

	return item->hw_id;
}
EXPORT_SYMBOL_GPL(nubia_get_hw_id);

void nubia_get_hw_pcb_version(char *result)
{
	struct nubia_pcb_gpio_map *item;

	item = nubia_get_pcb_table_item_by_gpio(
		(struct nubia_pcb_gpio_map *)hw_pcb_gpio_map,
		ARRAY_SIZE(hw_pcb_gpio_map));
	if (!result)
		return;
	if (item)
		strcpy(result, item->pcb_version);
	else
		memcpy(result, "unknow", sizeof("unknow"));
}
EXPORT_SYMBOL_GPL(nubia_get_hw_pcb_version);

int charger_100W(void)
{
	return nubia_pcb_gpio3_v == 0;
}
EXPORT_SYMBOL(charger_100W);

int charger_80W(void)
{
	return nubia_pcb_gpio3_v == 2;
}
EXPORT_SYMBOL(charger_80W);

char *nubia_get_rf_band_by_gpio(struct nubia_rf_band_gpio_map *table,
				unsigned int count)
{
	unsigned int i;

	if (!table || !count)
		return "unknow";

	for (i = 0; i < count; i++) {
		if (table[i].gpio1 == nubia_rf_gpio1_v &&
		    table[i].gpio2 == nubia_rf_gpio2_v)
			return table[i].rf_band;
	}

	return "unknow";
}
EXPORT_SYMBOL_GPL(nubia_get_rf_band_by_gpio);

static int nubia_get_gpio_status(int gpio)
{
	struct gpio_desc *desc;
	int value;

	desc = gpio_to_desc(gpio);
	gpiod_direction_input(desc);
	msleep(1);
	value = gpiod_get_raw_value(gpio_to_desc(gpio));
	if (debug_value == 1)
		pr_info("[nubia_hw_version]read_gpio=%x\n", value & 0xff);

	return value;
}

static int nubia_hw_ver_probe(struct platform_device *pdev)
{
	struct device_node *node;
	struct gpio_desc *desc;
	struct nubia_pcb_gpio_map *pcb_item;
	int pcb_gpio1;
	int pcb_gpio2 = 0;
	int rf_gpio1;
	int rf_gpio2;
	int ret;

	node = pdev->dev.of_node;

	if (debug_value == 1)
		pr_info("[nubia_hw_version]nubia_hw_ver_probe\n");

	if (!pdev) {
		pr_err("pdev is null\n");
		return -EPROBE_DEFER;
	}

	pcb_gpio1 = of_get_named_gpio(node, "qcom,pcb-gpio1", 0);
	if (pcb_gpio1 < 0) {
		if (debug_value == 1)
			pr_info("[nubia_hw_version]TLMM pcb gpio1 not found\n");
		dev_err(&pdev->dev, "parse pcb_gpio error!!\n");
		return -EPROBE_DEFER;
	}
	ret = gpio_request(pcb_gpio1, "NUBIA_HW_PCB_GPIO1");
	if (ret < 0)
		pr_err("Failed to request GPIO:%d, ERRNO:%d", pcb_gpio1,
		       ret);

	pcb_gpio2 = of_get_named_gpio(node, "qcom,pcb-gpio2", 0);
	if (pcb_gpio2 < 0) {
		if (debug_value == 1)
			pr_info("[nubia_hw_version]TLMM pcb gpio2 not found\n");
		pcb_gpio2 = 0;
	} else {
		ret = gpio_request(pcb_gpio2, "NUBIA_HW_PCB_GPIO2");
		if (ret < 0)
			pr_err("Failed to request GPIO:%d, ERRNO:%d\n",
			       pcb_gpio2, ret);

		pcb_gpio3 = of_get_named_gpio(node, "qcom,pcb-gpio3", 0);
		if (pcb_gpio3 < 0) {
			if (debug_value == 1)
				pr_info("[nubia_hw_version]TLMM pcb gpio3 not found\n");
		} else {
			ret = gpio_request(pcb_gpio3, "NUBIA_HW_PCB_GPIO3");
			if (ret < 0)
				pr_err("Failed to request GPIO:%d, ERRNO:%d\n",
				       pcb_gpio3, ret);
		}
	}

	rf_gpio1 = of_get_named_gpio(node, "qcom,rf-gpio1", 0);
	if (rf_gpio1 < 0) {
		if (debug_value == 1)
			pr_info("[nubia_hw_version]TLMM rf gpio1 not found\n");
		goto err_rf;
	}
	rf_gpio2 = of_get_named_gpio(node, "qcom,rf-gpio2", 0);
	if (rf_gpio2 < 0) {
		if (debug_value == 1)
			pr_info("[nubia_hw_version]TLMM rf gpio2 not found\n");
		goto err_rf;
	}

	ret = gpio_request(rf_gpio1, "NUBIA_RF_PCB_GPIO1");
	if (ret < 0)
		pr_err("Failed to request GPIO:%d, ERRNO:%d", rf_gpio1, ret);
	ret = gpio_request(rf_gpio2, "NUBIA_HW_RF_GPIO2");
	if (ret < 0)
		pr_err("Failed to request GPIO:%d, ERRNO:%d\n", rf_gpio2,
		       ret);

	ret = nubia_gpio_ctrl(pdev);
	if (ret)
		return -ENODEV;

	desc = gpio_to_desc(pcb_gpio1);
	gpiod_direction_input(desc);
	msleep(1);
	nubia_pcb_gpio1_v = gpiod_get_raw_value(gpio_to_desc(pcb_gpio1));
	if (debug_value == 1)
		pr_info("[nubia_hw_version]read_gpio=%x\n", nubia_pcb_gpio1_v);

	desc = gpio_to_desc(pcb_gpio2);
	gpiod_direction_input(desc);
	msleep(1);
	nubia_pcb_gpio2_v = gpiod_get_raw_value(gpio_to_desc(pcb_gpio2));
	if (debug_value == 1)
		pr_info("[nubia_hw_version]read_gpio=%x\n", nubia_pcb_gpio2_v);

	desc = gpio_to_desc(pcb_gpio3);
	gpiod_direction_input(desc);
	msleep(1);
	nubia_pcb_gpio3_v = gpiod_get_raw_value(gpio_to_desc(pcb_gpio3));
	if (debug_value == 1)
		pr_info("[nubia_hw_version]read_gpio=%x\n", nubia_pcb_gpio3_v);

	desc = gpio_to_desc(rf_gpio1);
	gpiod_direction_input(desc);
	msleep(1);
	nubia_rf_gpio1_v = gpiod_get_raw_value(gpio_to_desc(rf_gpio1));
	if (debug_value == 1)
		pr_info("[nubia_hw_version]read_gpio=%x\n", nubia_rf_gpio1_v);

	desc = gpio_to_desc(rf_gpio2);
	gpiod_direction_input(desc);
	msleep(1);
	nubia_rf_gpio2_v = gpiod_get_raw_value(gpio_to_desc(rf_gpio2));
	if (debug_value == 1)
		pr_info("[nubia_hw_version]read_gpio=%x\n", nubia_rf_gpio2_v);

	msleep(20);
	ret = nubia_gpio_ctrl1(pdev);
	if (ret)
		return -ENODEV;

	nubia_pcb_gpio1_v += nubia_get_gpio_status(pcb_gpio1);
	nubia_pcb_gpio2_v += nubia_get_gpio_status(pcb_gpio2);
	nubia_pcb_gpio3_v += nubia_get_gpio_status(pcb_gpio3);
	if (debug_value == 1)
		pr_info("[nubia_hw_version]nubia_pcb_gpio1_v=%x,nubia_pcb_gpio2_v=%x,nubia_pcb_gpio3_v=%x\n",
			nubia_pcb_gpio1_v, nubia_pcb_gpio2_v,
			nubia_pcb_gpio3_v);

	pcb_item = nubia_get_pcb_table_item_by_gpio(
		(struct nubia_pcb_gpio_map *)hw_pcb_gpio_map,
		ARRAY_SIZE(hw_pcb_gpio_map));
	if (pcb_item)
		pr_err("pcb version: %s", pcb_item->pcb_version);
	else
		pr_err("pcb version: unknown");

	nubia_rf_gpio1_v += nubia_get_gpio_status(rf_gpio1);
	nubia_rf_gpio2_v += nubia_get_gpio_status(rf_gpio2);
	if (debug_value == 1)
		pr_info("[nubia_hw_version]nubia_rf_gpio1_v=%x,nubia_rf_gpio2_v=%x\n",
			nubia_rf_gpio1_v, nubia_rf_gpio2_v);

	return 0;

err_rf:
	dev_err(&pdev->dev, "parse rf_gpio error!!\n");
	return -EPROBE_DEFER;
}

static void nubia_hw_ver_remove(struct platform_device *pdev)
{
	struct nubia_hw_gpio_info *info = platform_get_drvdata(pdev);

	if (info && info->pinctrl)
		devm_pinctrl_put(info->pinctrl);
	devm_kfree(&pdev->dev, info);
}

static ssize_t debug_value_show(struct kobject *kobj,
				struct kobj_attribute *attr, char *buf)
{
	return snprintf(buf, 5, "%d", debug_value);
}

static ssize_t debug_value_store(struct kobject *kobj,
				 struct kobj_attribute *attr, const char *buf,
				 size_t count)
{
	sscanf(buf, "%d", &debug_value);
	return count;
}

static ssize_t nubia_hw_pcb_version_show(struct kobject *kobj,
					 struct kobj_attribute *attr, char *buf)
{
	if (!buf)
		return 0;

	nubia_get_hw_pcb_version(buf);
	if (debug_value == 1)
		pr_info("[nubia_hw_version]pcb_ver=%s\n", buf);

	return snprintf(buf, NUBIA_VERSION_LEN, "%s", buf);
}

static ssize_t nubia_hw_rf_band_show(struct kobject *kobj,
				     struct kobj_attribute *attr, char *buf)
{
	const char *band;
	u8 gpio1;
	long gpio2;
	long index;

	if (!buf)
		return 0;

	gpio1 = nubia_rf_gpio1_v;
	gpio2 = (s8)nubia_rf_gpio2_v;
	if (gpio1 == 2)
		goto gpio1_two;
	if (gpio1 == 1)
		goto gpio1_one;
	if (gpio1 != 0)
		goto unknown;
	if ((unsigned long)gpio2 >= ARRAY_SIZE(rf_band_gpio1_zero))
		goto unknown;
	index = rf_band_gpio1_zero[gpio2];
	goto selected;

gpio1_one:
	if (gpio2 != 0)
		goto unknown;
	index = 6;
	goto selected;

gpio1_two:
	if ((unsigned long)gpio2 >= ARRAY_SIZE(rf_band_gpio1_two))
		goto unknown;
	index = rf_band_gpio1_two[gpio2];
	goto selected;

unknown:
	band = "unknow";
	goto report;

selected:
	band = (const char *)hw_rf_band_gpio_map +
		index * sizeof(hw_rf_band_gpio_map[0]) +
		offsetof(struct nubia_rf_band_gpio_map, rf_band);

report:
	if (debug_value == 1)
		pr_info("[nubia_hw_version]hw_rf_band=%s\n", band);

	return snprintf(buf, NUBIA_VERSION_LEN, "%s", band);
}

static ssize_t nubia_charge_version_show(struct kobject *kobj,
					 struct kobj_attribute *attr, char *buf)
{
	if (!buf)
		return 0;

	if (nubia_pcb_gpio3_v < ARRAY_SIZE(charge_version))
		*(u32 *)buf = *(const u32 *)charge_version[nubia_pcb_gpio3_v];
	if (debug_value == 1)
		pr_info("[nubia_hw_version]nubia_charge_version=%s\n", buf);

	return snprintf(buf, NUBIA_VERSION_LEN, "%s", buf);
}

static ssize_t hml_config_version_show(struct kobject *kobj,
				       struct kobj_attribute *attr, char *buf)
{
	int version = -1;

	if (!buf)
		return 0;

	if (nubia_pcb_gpio3_v < ARRAY_SIZE(hml_config_version))
		version = hml_config_version[nubia_pcb_gpio3_v];
	if (debug_value == 1)
		pr_info("[nubia_hw_version]hml_config_version=%d\n", version);

	return snprintf(buf, 5, "%d", version);
}

static struct kobj_attribute debug_value_attr =
	__ATTR(debug_value, 0664, debug_value_show, debug_value_store);
static struct kobj_attribute pcb_version_attr =
	__ATTR(pcb_version, 0664, nubia_hw_pcb_version_show, NULL);
static struct kobj_attribute hw_rf_band_attr =
	__ATTR(rf_version, 0664, nubia_hw_rf_band_show, NULL);
static struct kobj_attribute charge_version_attr =
	__ATTR(charge_version, 0664, nubia_charge_version_show, NULL);
static struct kobj_attribute hml_config_attr =
	__ATTR(hml_version, 0664, hml_config_version_show, NULL);

static struct attribute *nubia_hw_version_attrs[] = {
	&debug_value_attr.attr,
	&pcb_version_attr.attr,
	&hw_rf_band_attr.attr,
	&charge_version_attr.attr,
	&hml_config_attr.attr,
	NULL,
};

static const struct attribute_group nubia_hw_version_attr_group = {
	.attrs = nubia_hw_version_attrs,
};

static const struct of_device_id of_match[] = {
	{ .compatible = "nubia_hw_gpio_ctrl" },
	{ }
};

static struct platform_driver hardware_ver_driver = {
	.probe = nubia_hw_ver_probe,
	.remove = nubia_hw_ver_remove,
	.driver = {
		.name = "nubia_hw_ver_gpio",
		.owner = THIS_MODULE,
		.of_match_table = of_match,
	},
};

int __init nubia_hw_version_init(void)
{
	int ret;

	if (debug_value == 1)
		pr_info("[nubia_hw_version]nubia_hw_version creat attributes start \n");

	platform_driver_register(&hardware_ver_driver);
	hw_version_kobj = kobject_create_and_add("nubia_hw_version", NULL);
	if (!hw_version_kobj) {
		pr_err("%s: nubia_hw_version kobj create error\n",
		       "nubia_hw_version_init");
		return -ENOMEM;
	}

	ret = sysfs_create_group(hw_version_kobj,
				 &nubia_hw_version_attr_group);
	if (ret)
		pr_err("%s: failed to create nubia_hw_version group attributes\n",
		       "nubia_hw_version_init");
	if (debug_value == 1)
		pr_info("[nubia_hw_version]nubia_hw_version creat attributes end \n");

	return ret;
}

static void __exit nubia_hw_version_exit(void)
{
	sysfs_remove_group(hw_version_kobj, &nubia_hw_version_attr_group);
	kobject_put(hw_version_kobj);
}

module_init(nubia_hw_version_init);
module_exit(nubia_hw_version_exit);

MODULE_DESCRIPTION("nubia_hw_version driver");
MODULE_LICENSE("GPL v2");
MODULE_ALIAS("platform:nubia_hw_version");
