#include <linux/fs.h>
#include "haptic_86938_internal.h"

int richtap_file_open_mutant(struct inode *inode, struct file *file)
{
	(void)inode;
	file->private_data = g_aw_haptic;
	return 0;
}
