// SPDX-License-Identifier: GPL-2.0
#include <linux/i2c.h>
#include <linux/init.h>
#include <linux/module.h>
#include <linux/of.h>
#include <linux/pm.h>
#include <linux/printk.h>

#define HAPTIC_86938_VERSION "v0.5.0.15"

extern int aw_i2c_probe(struct i2c_client *client);
extern void aw_remove(struct i2c_client *client);
extern int aw_i2c_suspend(struct device *dev);
extern int aw_i2c_resume(struct device *dev);

static const struct i2c_device_id aw_i2c_id[] = {
	{ "haptic_hv", 0 },
	{ }
};
MODULE_DEVICE_TABLE(i2c, aw_i2c_id);

static const struct of_device_id aw_dt_match[] = {
	{ .compatible = "awinic,haptic_hv" },
	{ }
};

static const struct dev_pm_ops aw_pm_ops = {
	SET_SYSTEM_SLEEP_PM_OPS(aw_i2c_suspend, aw_i2c_resume)
};

struct i2c_driver aw_i2c_driver = {
	.driver = {
		.name = "haptic_hv",
		.owner = THIS_MODULE,
		.of_match_table = aw_dt_match,
		.pm = &aw_pm_ops,
	},
	.probe = aw_i2c_probe,
	.remove = aw_remove,
	.id_table = aw_i2c_id,
};

static int __init haptic_86938_i2c_init(void)
{
	int ret;

	pr_info("[haptic_hv]aw_haptic driver version %s", HAPTIC_86938_VERSION);
	ret = i2c_register_driver(THIS_MODULE, &aw_i2c_driver);
	if (ret)
		pr_err("fail to add aw_haptic[haptic_hv] device into i2c");
	return ret;
}

static void __exit haptic_86938_i2c_exit(void)
{
	i2c_del_driver(&aw_i2c_driver);
}

module_init(haptic_86938_i2c_init);
module_exit(haptic_86938_i2c_exit);

MODULE_DESCRIPTION("AWINIC Haptic Driver");
MODULE_LICENSE("GPL v2");
