// SPDX-License-Identifier: GPL-2.0
#include <linux/fs.h>
#include <linux/miscdevice.h>
#include <linux/module.h>
#include <linux/pm_qos.h>

#include "haptic_86938_internal.h"

struct aw_haptic *g_aw_haptic;

/* Shared by the stock RTP, TikTap, and oscillator-calibration workers. */
struct pm_qos_request aw_pm_qos_req_vb;
_Static_assert(sizeof(struct pm_qos_request) == 48,
	       "NX809J CPU-latency QoS request layout");

char *aw_ram_name = "haptic_ram.bin";

extern ssize_t richtap_read(struct file *file, char __user *buffer,
			    size_t count, loff_t *position);
extern ssize_t richtap_write(struct file *file, const char __user *buffer,
			     size_t count, loff_t *position);
extern long richtap_file_unlocked_ioctl(struct file *file,
					unsigned int command,
					unsigned long argument);
extern int richtap_file_mmap(struct file *file, struct vm_area_struct *vma);
extern int richtap_file_open(struct inode *inode, struct file *file);
extern int richtap_file_release(struct inode *inode, struct file *file);

/*
 * Both Richtap callbacks match their stock bodies and occupy their evidenced
 * file_operations slots.
 */
static struct file_operations left_fops = {
	.owner = THIS_MODULE,
	.read = richtap_read,
	.write = richtap_write,
	.unlocked_ioctl = richtap_file_unlocked_ioctl,
	.mmap = richtap_file_mmap,
	.open = richtap_file_open,
	.release = richtap_file_release,
};

struct miscdevice richtap_misc = {
	.minor = MISC_DYNAMIC_MINOR,
	.name = "awinic_haptic",
	.fops = &left_fops,
};
