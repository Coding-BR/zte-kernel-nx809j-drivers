// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>
#include <linux/kstrtox.h>
#include <linux/mutex.h>
#include <linux/types.h>

struct aw_haptic;
typedef void (*set_vmax_fn)(struct aw_haptic *haptic, u8 value);

ssize_t vmax_store(struct device *dev, struct device_attribute *attr,
		   const char *buf, size_t count)
{
	void *driver_data = *(void **)((char *)dev + 0x98);
	struct aw_haptic *haptic;
	set_vmax_fn set_vmax;
	void *function_table;
	u32 value = 0;
	int ret;

	(void)attr;
	ret = kstrtouint(buf, 0, &value);
	if (ret < 0)
		return ret;

	haptic = (struct aw_haptic *)((char *)driver_data - 0xa8);
	printk(KERN_INFO "[%s][%04d]%s: value=%d\n",
	       "haptic_hv", 0x992, "vmax_store", value);
	mutex_lock((struct mutex *)((char *)driver_data + 0x248));
	*(u32 *)((char *)driver_data - 0x78) = value;
	function_table = *(void **)((char *)driver_data + 0x520);
	set_vmax = *(set_vmax_fn *)((char *)function_table + 0xa0);
	set_vmax(haptic, value);
	mutex_unlock((struct mutex *)((char *)driver_data + 0x248));
	return count;
}
