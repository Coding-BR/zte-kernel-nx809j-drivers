/* SPDX-License-Identifier: GPL-2.0-only */

#include <linux/bitops.h>
#include <linux/device.h>
#include <linux/err.h>
#include <linux/fs.h>
#include <linux/limits.h>
#include <linux/list.h>
#include <linux/lockdep.h>
#include <linux/module.h>
#include <linux/mutex.h>
#include <linux/of.h>
#include <linux/overflow.h>
#include <linux/printk.h>
#include <linux/slab.h>
#include <linux/spi/spi.h>
#include <linux/uaccess.h>

#include "zte_ir_abi.h"
#include "zte_ir_driver_state.h"
#include "zte_ir_runtime.h"

int zte_ir_major;
struct class *zte_ir_class;
LIST_HEAD(zte_ir_device_list);
DEFINE_MUTEX(zte_ir_device_list_lock);
unsigned long zte_ir_minors;

#include "../01_spi_get/zte_ir_spi_get.c"
#include "../02_encode_pulses/zte_ir_encode_pulses.c"
#include "../03_write/zte_ir_write.c"
#include "../04_ioctl/zte_ir_ioctl.c"
#include "../05_open/zte_ir_open.c"
#include "../06_release/zte_ir_release.c"
#include "../07_probe/zte_ir_probe.c"
#include "../08_remove/zte_ir_remove.c"

const struct file_operations zte_ir_fops = {
	.owner = THIS_MODULE,
	.llseek = noop_llseek,
	.write = zte_ir_write,
	.unlocked_ioctl = zte_ir_ioctl,
	.compat_ioctl = zte_ir_ioctl,
	.open = zte_ir_open,
	.release = zte_ir_release,
};

const struct of_device_id zte_ir_of_match[] = {
	{ .compatible = ZTE_IR_OF_COMPATIBLE },
	{ }
};
MODULE_DEVICE_TABLE(of, zte_ir_of_match);

struct spi_driver zte_ir_spi_driver = {
	.driver = {
		.name = ZTE_IR_DRIVER_NAME,
		.of_match_table = zte_ir_of_match,
	},
	.probe = zte_ir_probe,
	.remove = zte_ir_remove,
};

#include "../09_init/zte_ir_init.c"
#include "../10_exit/zte_ir_exit.c"

module_init(zte_ir_init);
module_exit(zte_ir_exit);

MODULE_DESCRIPTION("PWM IR Transmitter (reconstructed and hardened)");
MODULE_AUTHOR("xu min <xu.min4@zte.com>; reconstructed by Coding-BR");
MODULE_LICENSE("GPL");
