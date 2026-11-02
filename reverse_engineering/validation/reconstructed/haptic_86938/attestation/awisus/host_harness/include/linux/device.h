/* SPDX-License-Identifier: GPL-2.0 */
#ifndef AW_I2C_SUSPEND_TEST_LINUX_DEVICE_H
#define AW_I2C_SUSPEND_TEST_LINUX_DEVICE_H
#include <stddef.h>
struct aw_haptic;
struct device {
	unsigned char reserved[0x98];
	struct aw_haptic *driver_data;
};
static inline void *dev_get_drvdata(const struct device *dev)
{
	return dev->driver_data;
}
#endif
