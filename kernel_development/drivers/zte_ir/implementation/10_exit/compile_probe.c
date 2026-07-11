/* SPDX-License-Identifier: GPL-2.0-only */

#include <linux/device.h>
#include <linux/fs.h>
#include <linux/list.h>
#include <linux/module.h>
#include <linux/mutex.h>
#include <linux/printk.h>
#include <linux/spi/spi.h>

#include "zte_ir_abi.h"
#include "zte_ir_driver_state.h"

LIST_HEAD(zte_ir_device_list);
DEFINE_MUTEX(zte_ir_device_list_lock);
int zte_ir_major;
struct class *zte_ir_class;
unsigned long zte_ir_minors;
const struct file_operations zte_ir_fops = { .owner = THIS_MODULE };
const struct of_device_id zte_ir_of_match[] = { { } };
struct spi_driver zte_ir_spi_driver = {
	.driver = { .name = ZTE_IR_DRIVER_NAME },
};

#include "zte_ir_exit.c"

static zte_ir_exit_signature *const checked_zte_ir_exit __used = zte_ir_exit;
