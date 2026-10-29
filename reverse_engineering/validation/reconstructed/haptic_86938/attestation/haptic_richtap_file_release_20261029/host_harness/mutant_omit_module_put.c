#include <linux/fs.h>

int richtap_file_release_mutant_omit(struct inode *inode, struct file *file)
{
	(void)inode;
	(void)file;
	return 0;
}
