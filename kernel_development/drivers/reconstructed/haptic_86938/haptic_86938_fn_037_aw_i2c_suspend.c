// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/mutex.h>

struct aw_haptic;

struct aw8693x_func_list {
	void *reserved[7];
	void (*stop)(struct aw_haptic *haptic);
};

int aw_i2c_suspend(struct device *dev)
{
	struct aw_haptic *haptic = dev_get_drvdata(dev);
	struct mutex *lock = (struct mutex *)((char *)haptic + 0x2f0);
	struct aw8693x_func_list *func_list;

	mutex_lock(lock);
	func_list = *(struct aw8693x_func_list **)((char *)haptic + 0x5c8);
	func_list->stop(haptic);
	mutex_unlock(lock);
	return 0;
}
