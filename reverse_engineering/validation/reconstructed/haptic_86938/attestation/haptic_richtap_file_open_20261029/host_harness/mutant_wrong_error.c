#include <linux/errno.h>
#include <linux/fs.h>
#include <linux/module.h>

int richtap_file_open_mutant(struct inode *inode, struct file *file)
{
	(void)inode;
	if (!try_module_get(THIS_MODULE))
		return -EFAULT;
	file->private_data = 0;
	return 0;
}
