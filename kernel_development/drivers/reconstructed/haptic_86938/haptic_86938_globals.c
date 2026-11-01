// SPDX-License-Identifier: GPL-2.0
#include <linux/fs.h>
#include <linux/miscdevice.h>
#include <linux/module.h>

#include "haptic_86938_internal.h"

struct aw_haptic *g_aw_haptic;

char *aw_ram_name = "haptic_ram.bin";

extern ssize_t richtap_read(struct file *file, char __user *buffer,
			    size_t count, loff_t *position);
extern ssize_t richtap_write(struct file *file, const char __user *buffer,
			     size_t count, loff_t *position);
extern int richtap_file_open(struct inode *inode, struct file *file);
extern int richtap_file_release(struct inode *inode, struct file *file);

/*
 * The stock table also contains ioctl and mmap handlers. Those two function
 * bodies are not reconstructed yet, so their slots intentionally remain NULL.
 */
static struct file_operations left_fops = {
	.owner = THIS_MODULE,
	.read = richtap_read,
	.write = richtap_write,
	.open = richtap_file_open,
	.release = richtap_file_release,
};

struct miscdevice richtap_misc = {
	.minor = MISC_DYNAMIC_MINOR,
	.name = "awinic_haptic",
	.fops = &left_fops,
};
