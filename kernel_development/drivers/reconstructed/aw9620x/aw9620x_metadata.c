// SPDX-License-Identifier: GPL-2.0-only
#include <linux/i2c.h>
#include <linux/module.h>

/* The stock device-id bytes and __mod_i2c alias are preserved in assembly. */
MODULE_ALIAS("i2c:aw9620x_sar");
MODULE_DESCRIPTION("aw9620x SAR Driver");
MODULE_LICENSE("GPL v2");
