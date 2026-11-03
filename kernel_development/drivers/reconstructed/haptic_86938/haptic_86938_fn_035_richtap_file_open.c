// SPDX-License-Identifier: GPL-2.0
#include <linux/errno.h>
#include <linux/fs.h>
#include <linux/module.h>
#include "haptic_86938_internal.h"

int richtap_file_open(struct inode *inode, struct file *file)
{
	int ret;

	(void)inode;
	if (!try_module_get(THIS_MODULE))
		return -ENODEV;
	ret = haptic_lifetime_file_open(file);
	if (ret)
		module_put(THIS_MODULE);
	return ret;
}
