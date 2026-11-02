// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>
#include <linux/kstrtox.h>
#include <linux/mutex.h>
#include <linux/types.h>

struct aw_haptic;
typedef void (*aw_haptic_u8_op_fn)(struct aw_haptic *haptic, u8 value);

ssize_t index_store(struct device *dev, struct device_attribute *attr,
		    const char *buf, size_t count)
{
	void *driver_data = *(void **)((char *)dev + 0x98);
	struct aw_haptic *haptic;
	void *operations;
	aw_haptic_u8_op_fn set_index;
	u32 index = 0;
	int ret;

	(void)attr;
	ret = kstrtouint(buf, 0, &index);
	if (ret < 0)
		return ret;

	if (index > *(u8 *)((char *)driver_data + 0x3b4)) {
		printk(KERN_ERR "[%s][%04d]%s: input value out of range!\n",
		       "haptic_hv", 0x971, "index_store");
	} else {
		haptic = (struct aw_haptic *)((char *)driver_data - 0xa8);
		printk(KERN_INFO "[%s][%04d]%s: value=%d\n",
		       "haptic_hv", 0x974, "index_store", index);
		mutex_lock((struct mutex *)((char *)driver_data + 0x248));
		*(u32 *)((char *)driver_data - 0x64) = index;
		operations = *(void **)((char *)driver_data + 0x520);
		set_index = *(aw_haptic_u8_op_fn *)((char *)operations + 0xa8);
		set_index(haptic, index);
		mutex_unlock((struct mutex *)((char *)driver_data + 0x248));
	}
	return count;
}
