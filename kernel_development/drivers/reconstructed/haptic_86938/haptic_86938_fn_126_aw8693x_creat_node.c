// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>
#include <linux/printk.h>
#include <linux/sysfs.h>
#include <linux/types.h>

struct aw_haptic;

ssize_t cont_drv_lvl_show(struct device *dev, struct device_attribute *attr,
			  char *buf);
ssize_t cont_drv_lvl_store(struct device *dev, struct device_attribute *attr,
			   const char *buf, size_t count);
ssize_t cont_drv_time_show(struct device *dev, struct device_attribute *attr,
			   char *buf);
ssize_t cont_drv_time_store(struct device *dev, struct device_attribute *attr,
			    const char *buf, size_t count);
ssize_t cont_brk_time_show(struct device *dev, struct device_attribute *attr,
			   char *buf);
ssize_t cont_brk_time_store(struct device *dev, struct device_attribute *attr,
			    const char *buf, size_t count);
ssize_t trig_show(struct device *dev, struct device_attribute *attr, char *buf);
ssize_t trig_store(struct device *dev, struct device_attribute *attr,
		   const char *buf, size_t count);
ssize_t rtp_auto_sin_show(struct device *dev, struct device_attribute *attr,
			  char *buf);
ssize_t rtp_auto_sin_store(struct device *dev, struct device_attribute *attr,
			   const char *buf, size_t count);

static DEVICE_ATTR_RW(cont_drv_lvl);
static DEVICE_ATTR_RW(cont_drv_time);
static DEVICE_ATTR_RW(cont_brk_time);
static DEVICE_ATTR_RW(trig);
static DEVICE_ATTR_RW(rtp_auto_sin);

static struct attribute *aw8693x_vibrator_attributes[] = {
	&dev_attr_cont_drv_lvl.attr,
	&dev_attr_cont_drv_time.attr,
	&dev_attr_cont_brk_time.attr,
	&dev_attr_trig.attr,
	&dev_attr_rtp_auto_sin.attr,
	NULL,
};

static struct attribute_group aw8693x_vibrator_attribute_group = {
	.attrs = aw8693x_vibrator_attributes,
};

int aw8693x_creat_node(struct aw_haptic *haptic)
{
	int ret;

	ret = sysfs_create_group(*(struct kobject **)((char *)haptic + 0xf8),
				 &aw8693x_vibrator_attribute_group);
	if (ret < 0) {
		printk(KERN_ERR "[%s][%04d]%s: error create aw8693x sysfs attr files\n",
		       "haptic_hv", 0x91a, __func__);
	} else {
		ret = 0;
	}
	return ret;
}
