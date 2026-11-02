// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>
#include <linux/kstrtox.h>
#include <linux/mutex.h>
#include <linux/types.h>

struct aw_haptic;
typedef void (*aw_haptic_op_fn)(struct aw_haptic *haptic);
typedef void (*aw_haptic_u8_op_fn)(struct aw_haptic *haptic, u8 value);

ssize_t auto_boost_store(struct device *dev, struct device_attribute *attr,
			 const char *buf, size_t count)
{
	void *driver_data = *(void **)((char *)dev + 0x98);
	struct aw_haptic *haptic;
	void *operations;
	aw_haptic_op_fn operation_38;
	aw_haptic_u8_op_fn operation_b0;
	u32 value = 0;
	int ret;

	(void)attr;
	ret = kstrtouint(buf, 0, &value);
	if (ret < 0)
		return ret;

	haptic = (struct aw_haptic *)((char *)driver_data - 0xa8);
	mutex_lock((struct mutex *)((char *)driver_data + 0x248));
	operations = *(void **)((char *)driver_data + 0x520);
	operation_38 = *(aw_haptic_op_fn *)((char *)operations + 0x38);
	operation_38(haptic);
	operations = *(void **)((char *)driver_data + 0x520);
	operation_b0 = *(aw_haptic_u8_op_fn *)((char *)operations + 0xb0);
	operation_b0(haptic, value);
	mutex_unlock((struct mutex *)((char *)driver_data + 0x248));
	return count;
}
