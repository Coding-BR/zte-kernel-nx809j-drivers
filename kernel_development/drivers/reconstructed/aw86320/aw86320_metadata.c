// SPDX-License-Identifier: GPL-2.0-only

#include <linux/i2c.h>
#include <linux/module.h>

/*
 * The executable callbacks and the driver's data tables are lifted from the
 * stock module.  This small translation unit supplies only the kernel module
 * metadata and the device-table symbol required by the stock relocation
 * surface; it is not presented as an independently inferred implementation.
 */
static const struct i2c_device_id aw_i2c_id_device_table[] = {
	{ "aw86320", 0 },
	{ }
};
MODULE_DEVICE_TABLE(i2c, aw_i2c_id_device_table);

MODULE_DESCRIPTION("AWINIC Haptic Driver");
MODULE_LICENSE("GPL v2");
