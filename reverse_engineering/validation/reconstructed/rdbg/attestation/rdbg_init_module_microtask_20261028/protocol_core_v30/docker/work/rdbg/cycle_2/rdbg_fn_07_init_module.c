// SPDX-License-Identifier: GPL-2.0-only
#include <linux/cdev.h>
#include <linux/device.h>
#include <linux/err.h>
#include <linux/errno.h>
#include <linux/fs.h>
#include <linux/init.h>
#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/of.h>
#include <linux/platform_device.h>
#include <linux/slab.h>

#include "rdbg_reconstruction_layout.h"

extern int rdbg_probe(struct platform_device *pdev);
extern int rdbg_open(struct inode *inode, struct file *filp);
extern int rdbg_release(struct inode *inode, struct file *filp);
extern ssize_t rdbg_read(struct file *filp, char __user *buffer,
			size_t count, loff_t *position);
extern ssize_t rdbg_write(struct file *filp, const char __user *buffer,
			 size_t count, loff_t *position);

struct rdbg_module_storage g_rdbg_instance __used = {
	.count = 16,
};

static const struct of_device_id rdbg_match_table[] __used = {
	{ .compatible = "qcom,smp2p-interrupt-rdbg-2-out" },
	{ .compatible = "qcom,smp2p-interrupt-rdbg-2-in" },
	{ .compatible = "qcom,smp2p-interrupt-rdbg-5-out" },
	{ .compatible = "qcom,smp2p-interrupt-rdbg-5-in" },
	{ }
};
static const struct file_operations rdbg_fops __used = {
	.read = rdbg_read,
	.write = rdbg_write,
	.open = rdbg_open,
	.release = rdbg_release,
};

const struct rdbg_proc_info_layout proc_info[16] __used = {
	[1] = { .name = "rdbg_modem" },
	[2] = {
		.name = "rdbg_adsp",
		.smem_buffer_addr = 470,
		.smem_buffer_size = 16384,
	},
	[4] = { .name = "rdbg_wcnss" },
	[5] = {
		.name = "rdbg_cdsp",
		.smem_buffer_addr = 470,
		.smem_buffer_size = 16384,
	},
};

static struct platform_driver rdbg_driver __used = {
	.probe = rdbg_probe,
	.driver = {
		.name = "rdbg",
		.of_match_table = rdbg_match_table,
	},
};

static int __init rdbg_init(void)
{
	struct device *device;
	dev_t major;
	int index;
	int devices_created = 0;
	int ret;

	if (g_rdbg_instance.count - 0x11U < 0xfffffff0U) {
		pr_err("rgdb: invalid num_devices\n");
		return -EDOM;
	}
	g_rdbg_instance.clients = kcalloc(g_rdbg_instance.count,
					 sizeof(struct rdbg_data_layout), GFP_KERNEL);
	if (!g_rdbg_instance.clients)
		return -ENOMEM;
	ret = platform_driver_register(&rdbg_driver);
	if (ret)
		return ret;
	ret = alloc_chrdev_region(&g_rdbg_instance.devt, 0,
				 g_rdbg_instance.count, "rdbgctl");
	if (ret) {
		pr_err("Error in alloc_chrdev_region.\n");
		goto free_clients;
	}
	major = g_rdbg_instance.devt & 0xfff00000U;
	cdev_init(&g_rdbg_instance.cdev, &rdbg_fops);
	g_rdbg_instance.cdev.owner = THIS_MODULE;
	ret = cdev_add(&g_rdbg_instance.cdev, major, g_rdbg_instance.count);
	if (ret) {
		pr_err("Error in cdev_add\n");
		goto unregister_cdev;
	}
	g_rdbg_instance.class = class_create("rdbg");
	if (!IS_ERR(g_rdbg_instance.class)) {
		for (index = 0; index < g_rdbg_instance.count; index++) {
			if (!proc_info[index].name)
				continue;
			((struct rdbg_data_layout *)g_rdbg_instance.clients)[index].device =
				device_create(g_rdbg_instance.class, NULL, major | index,
					      NULL, "%s", proc_info[index].name);
			device = ((struct rdbg_data_layout *)g_rdbg_instance.clients)[index].device;
			if (IS_ERR(device)) {
				ret = PTR_ERR(device);
				pr_err("Error in device_create\n");
				for (--index; index >= 0; --index) {
					if (((struct rdbg_data_layout *)g_rdbg_instance.clients)[index].device_initialized == 1)
						device_destroy(g_rdbg_instance.class,
							       (g_rdbg_instance.devt & 0xfff00000U) | index);
				}
				goto destroy_class;
			}
			devices_created++;
			((struct rdbg_data_layout *)g_rdbg_instance.clients)[index].device_initialized = 1;
		}
		if (devices_created)
			return 0;
		pr_err("No device tree entries found\n");
		ret = -EINVAL;
destroy_class:
		class_destroy(g_rdbg_instance.class);
	} else {
		ret = PTR_ERR(g_rdbg_instance.class);
		pr_err("Error in class_create\n");
	}
	cdev_del(&g_rdbg_instance.cdev);
unregister_cdev:
	unregister_chrdev_region(g_rdbg_instance.devt, g_rdbg_instance.count);
free_clients:
	kfree(g_rdbg_instance.clients);
	return ret;
}
module_init(rdbg_init);
