#include <linux/fs.h>
#include <linux/module.h>

int stock_model(struct inode *inode, struct file *file)
{
	(void)inode;
	(void)file;
	module_put(&__this_module);
	return 0;
}
