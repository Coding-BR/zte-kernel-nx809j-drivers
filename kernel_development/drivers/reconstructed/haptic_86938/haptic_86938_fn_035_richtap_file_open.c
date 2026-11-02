// SPDX-License-Identifier: GPL-2.0
#include <linux/errno.h>
#include <linux/fs.h>
#include <linux/module.h>
#include "haptic_86938_internal.h"

int richtap_file_open(struct inode *inode, struct file *file)
{
	(void)inode;
	if (!try_module_get(THIS_MODULE))
		return -ENODEV;
	file->private_data = g_aw_haptic;
	return 0;
}
