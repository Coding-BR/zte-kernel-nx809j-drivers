#include <linux/errno.h>
#include <linux/fs.h>
#include <linux/module.h>
#include "haptic_86938_internal.h"

int stock_model(struct inode *inode, struct file *file)
{
	(void)inode;
	if (!try_module_get(THIS_MODULE))
		return -ENODEV;
	file->private_data = g_aw_haptic;
	return 0;
}
