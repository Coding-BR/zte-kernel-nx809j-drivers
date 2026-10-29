// SPDX-License-Identifier: GPL-2.0
#include <linux/fs.h>
#include <linux/module.h>

int richtap_file_release(struct inode *inode, struct file *file)
{
	(void)inode;
	(void)file;
	module_put(THIS_MODULE);
	return 0;
}
