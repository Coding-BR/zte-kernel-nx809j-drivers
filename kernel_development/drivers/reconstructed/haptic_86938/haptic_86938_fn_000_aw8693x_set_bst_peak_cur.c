// SPDX-License-Identifier: GPL-2.0
#include <linux/init.h>
#include <linux/module.h>

struct aw_haptic;

void aw8693x_set_bst_peak_cur(struct aw_haptic *aw)
{
	(void)aw;
}

static int __init haptic_86938_microtask_init(void)
{
	return 0;
}

static void __exit haptic_86938_microtask_exit(void)
{
}

module_init(haptic_86938_microtask_init);
module_exit(haptic_86938_microtask_exit);

MODULE_LICENSE("GPL v2");
