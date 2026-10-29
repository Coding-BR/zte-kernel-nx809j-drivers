#include <linux/fs.h>
#include <linux/module.h>

int richtap_file_release_mutant_nonzero(struct inode *inode, struct file *file)
{
	(void)inode;
	(void)file;
	module_put(THIS_MODULE);
	return -1;
}
