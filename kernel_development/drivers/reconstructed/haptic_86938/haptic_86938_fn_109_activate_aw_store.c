// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/hrtimer.h>
#include <linux/kernel.h>
#include <linux/kstrtox.h>
#include <linux/mutex.h>
#include <linux/types.h>
#include <linux/workqueue.h>

ssize_t activate_aw_store(struct device *dev, struct device_attribute *attr,
			  const char *buf, size_t count)
{
	void *driver_data = *(void **)((char *)dev + 0x98);
	unsigned int activate_mode = 0;
	int result;

	(void)attr;
	result = kstrtouint(buf, 0, &activate_mode);
	if (result < 0)
		return result;

	printk(KERN_INFO "[%s][%04d]%s: value=%d\n",
	       "haptic_hv", 0x92d, "activate_aw_store", activate_mode);
	if ((*(u8 *)((char *)driver_data - 0xa2) & 1U) == 0) {
		printk(KERN_ERR
		       "[%s][%04d]%s: ram init failed, not allow to play!\n",
		       "haptic_hv", 0x92f, "activate_aw_store");
	} else {
		mutex_lock((struct mutex *)((char *)driver_data + 0x248));
		hrtimer_cancel((struct hrtimer *)((char *)driver_data + 0x288));
		*(u32 *)((char *)driver_data - 0x68) = activate_mode;
		mutex_unlock((struct mutex *)((char *)driver_data + 0x248));
		queue_work_on(
			0x20,
			*(struct workqueue_struct **)((char *)driver_data + 0x3a0),
			(struct work_struct *)((char *)driver_data + 0x380));
	}

	return count;
}
