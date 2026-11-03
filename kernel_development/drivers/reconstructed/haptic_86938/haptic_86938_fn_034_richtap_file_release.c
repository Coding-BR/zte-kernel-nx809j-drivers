// SPDX-License-Identifier: GPL-2.0
#include <linux/fs.h>
#include <linux/module.h>
#include "haptic_86938_internal.h"

int richtap_file_release(struct inode *inode, struct file *file)
{
	(void)inode;
	haptic_lifetime_file_release(file);
	module_put(THIS_MODULE);
	return 0;
}
