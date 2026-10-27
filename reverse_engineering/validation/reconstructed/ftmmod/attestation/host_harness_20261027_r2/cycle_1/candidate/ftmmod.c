// SPDX-License-Identifier: GPL-2.0-only
/*
 * Static reconstruction of the NX809J stock ftmmod module.
 *
 * This source follows the reviewed MP0-MP6 contracts. Conditional stock
 * lifetime hazards are documented in the attestation package and are kept
 * faithful here; this file makes no runtime-safety claim.
 */

#include <linux/device.h>
#include <linux/errno.h>
#include <linux/io.h>
#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/of.h>
#include <linux/of_address.h>
#include <linux/platform_device.h>
#include <linux/sysfs.h>
#include <linux/types.h>
#include <asm/barrier.h>
#include <asm/pgtable-prot.h>
#include <soc/qcom/qseecom_scm.h>

/* Preserve the stock local ELF names for the three state objects. */
static char ftm_sysdev_priv_data_0 __asm__("ftm_sysdev_priv_data.0");
static void __iomem *volatile ftm_sysdev_priv_data_1 __asm__("ftm_sysdev_priv_data.1");
static void __iomem *ftm_sysdev_priv_data_2 __asm__("ftm_sysdev_priv_data.2");

/* The target kmparam binary confirms the caller passes the sysfs device in x0. */
extern int is_secboot_device(struct device *dev);

static void ftm_remove(struct platform_device *pdev);
static ssize_t show_secboot_status(struct device *dev,
				   struct device_attribute *attr, char *buf);
static ssize_t show_simlock_status(struct device *dev,
				   struct device_attribute *attr, char *buf);
static ssize_t show_permission_status(struct device *dev,
				      struct device_attribute *attr, char *buf);
static ssize_t show_efs_recovery(struct device *dev,
				 struct device_attribute *attr, char *buf);
static ssize_t store_efs_recovery(struct device *dev,
				  struct device_attribute *attr,
				  const char *buf, size_t count);
static int __init ftm_probe(struct platform_device *pdev);

static struct platform_device ftm_dev = {
	.name = "zte_ftm",
	.id = -1,
};

static struct platform_driver ftm_driver = {
	.remove = ftm_remove,
	.driver = {
		.name = "zte_ftm",
	},
};

static struct attribute *ftm_attrs[];
static struct attribute_group ftm_attr_grp = {
	.name = "zte_ftm",
	.attrs = ftm_attrs,
};

static struct device_attribute dev_attr_secboot_status;
static struct device_attribute dev_attr_simlock_status;
static struct device_attribute dev_attr_perm_status;
static struct device_attribute dev_attr_efs_recovery;

static struct attribute *ftm_attrs[] = {
	&dev_attr_secboot_status.attr,
	&dev_attr_simlock_status.attr,
	&dev_attr_perm_status.attr,
	&dev_attr_efs_recovery.attr,
	NULL,
};

static struct device_attribute dev_attr_secboot_status =
	__ATTR(secboot_status, 0444, show_secboot_status, NULL);
static struct device_attribute dev_attr_simlock_status =
	__ATTR(simlock_status, 0444, show_simlock_status, NULL);
static struct device_attribute dev_attr_perm_status =
	__ATTR(perm_status, 0444, show_permission_status, NULL);
static struct device_attribute dev_attr_efs_recovery =
	__ATTR(efs_recovery, 0644, show_efs_recovery, store_efs_recovery);

static void ftm_remove(struct platform_device *pdev)
{
	(void)pdev;
	pr_info("%s: e\n", __func__);
	pr_info("%s: x\n", __func__);
}

static ssize_t show_secboot_status(struct device *dev,
				   struct device_attribute *attr, char *buf)
{
	(void)attr;
	return snprintf(buf, 0x1000, "%d\n", is_secboot_device(dev));
}

static ssize_t show_simlock_status(struct device *dev,
				   struct device_attribute *attr, char *buf)
{
	struct qseecom_scm_desc desc = { 0 };
	u64 simlock_status;
	int ret;

	(void)dev;
	(void)attr;
	desc.args[0] = ftm_sysdev_priv_data_0 ? 0x58030 : 0x30;
	desc.arginfo = 2;
	ret = qcom_scm_qseecom_call(0x02000807, &desc, true);
	if (ret) {
		pr_err("read row %d failed, err code = %d\n", 6, ret);
		simlock_status = 0;
	} else {
		u64 ret_hi = desc.ret[1];
		u32 ret_lo = desc.ret[0];

		simlock_status = ret_lo | ((u64)(u32)ret_hi << 32);
	}
	pr_info("%s: simlock_fuse_status = %16llx\n", __func__,
		(unsigned long long)simlock_status);
	return snprintf(buf, 0x1000, "%d\n",
		((~(u32)simlock_status & 0xc0000000) == 0));
}

static ssize_t show_permission_status(struct device *dev,
				      struct device_attribute *attr, char *buf)
{
	(void)dev;
	(void)attr;
	pr_info("Not be supported for reading e-fus permission status\n");
	return snprintf(buf, 0x1000, "%d\n", 0);
}

static ssize_t show_efs_recovery(struct device *dev,
				 struct device_attribute *attr, char *buf)
{
	u32 enabled;

	(void)dev;
	(void)attr;
	pr_info("%s: e\n", __func__);
	if (!ftm_sysdev_priv_data_2)
		return -EFAULT;
	enabled = *(u32 __force *)((u8 __iomem *)ftm_sysdev_priv_data_2 + 4);
	return snprintf(buf, 0x1000, "%d\n", (int)enabled);
}

static ssize_t store_efs_recovery(struct device *dev,
				  struct device_attribute *attr,
				  const char *buf, size_t count)
{
	int enabled = 0;
	ssize_t ret = count;

	(void)dev;
	(void)attr;
	pr_info("%s: e\n", __func__);
	if (!ftm_sysdev_priv_data_2) {
		ret = -EFAULT;
	} else {
		sscanf(buf, "%d", &enabled);
		pr_info("%s: efs_recovery_enable: %d\n", __func__, enabled);
		*(u32 __force *)((u8 __iomem *)ftm_sysdev_priv_data_2 + 4) =
			(u32)(enabled != 0);
		dsb(sy);
		pr_info("%s: x\n", __func__);
	}
	return ret;
}

static int __init ftm_init(void)
{
	int ret;

	pr_info("%s: e\n", __func__);
	ret = platform_device_register(&ftm_dev);
	if (ret) {
		pr_err("platform_device_register error: %d\n", ret);
		return -ENODEV;
	}
	ret = __platform_driver_probe(&ftm_driver, ftm_probe, THIS_MODULE);
	if (ret)
		pr_err("platform_driver_probe error: %d\n", ret);
	else
		pr_info("%s: x\n", __func__);
	return ret;
}
module_init(ftm_init);

static int __init ftm_probe(struct platform_device *pdev)
{
	struct device_node *node;
	void __iomem *mapped;
	unsigned long prot;
	int ret;

	pr_info("%s: e\n", __func__);
	node = of_find_compatible_node(NULL, NULL,
				       "qcom,msm-imem-efs-golden-copy");
	if (!node) {
		pr_err("unable to find DT imem golden copy node\n");
	} else {
		ftm_sysdev_priv_data_2 = of_iomap(node, 0);
		if (!ftm_sysdev_priv_data_2)
			pr_err("unable to map imem golden copyoffset\n");
	}

	ftm_sysdev_priv_data_0 = 1;
	prot = 0x0068000000000713UL;
	if (arm64_use_ng_mappings)
		prot |= 0x800;
	mapped = ioremap_prot(0x58000, 0x1000, prot);
	ftm_sysdev_priv_data_1 = mapped;
	if (!mapped) {
		pr_err("%s: failed to map memory\n", __func__);
		return -ENOMEM;
	}

	ret = sysfs_create_group(&pdev->dev.kobj, &ftm_attr_grp);
	if (!ret)
		pr_info("%s: x\n", __func__);
	else
		pr_err("cannot create sysfs group err: %d\n", ret);
	return ret;
}

static void __exit ftm_exit(void)
{
	platform_driver_unregister(&ftm_driver);
	platform_device_unregister(&ftm_dev);
}
module_exit(ftm_exit);

MODULE_INFO(built_with, "DDK");
MODULE_DESCRIPTION("ZTE FTM Driver Ver %s1.0");
MODULE_LICENSE("GPL");
