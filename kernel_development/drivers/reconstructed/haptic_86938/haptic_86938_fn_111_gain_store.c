// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>
#include <linux/kstrtox.h>
#include <linux/mutex.h>
#include <linux/types.h>

struct aw_haptic;
typedef void (*set_gain_fn)(struct aw_haptic *haptic, u8 gain);

ssize_t gain_store(struct device *dev, struct device_attribute *attr,
		   const char *buf, size_t count)
{
	void *driver_data = *(void **)((char *)dev + 0x98);
	struct aw_haptic *haptic;
	set_gain_fn set_gain;
	void *function_table;
	u32 gain = 0;
	int ret;

	(void)attr;
	ret = kstrtouint(buf, 0, &gain);
	if (ret < 0)
		return ret;

	haptic = (struct aw_haptic *)((char *)driver_data - 0xa8);
	printk(KERN_INFO "[%s][%04d]%s: value=0x%02x\n",
	       "haptic_hv", 0x9b0, "gain_store", gain);
	mutex_lock((struct mutex *)((char *)driver_data + 0x248));
	*(u32 *)((char *)driver_data - 0x74) = gain;
	function_table = *(void **)((char *)driver_data + 0x520);
	set_gain = *(set_gain_fn *)((char *)function_table + 0x88);
	set_gain(haptic, gain);
	mutex_unlock((struct mutex *)((char *)driver_data + 0x248));
	return count;
}
