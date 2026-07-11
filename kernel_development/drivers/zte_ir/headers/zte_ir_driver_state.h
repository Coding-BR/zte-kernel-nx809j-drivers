/* SPDX-License-Identifier: GPL-2.0-only */
#ifndef _ZTE_IR_DRIVER_STATE_H
#define _ZTE_IR_DRIVER_STATE_H

#include <linux/device.h>
#include <linux/fs.h>
#include <linux/list.h>
#include <linux/mutex.h>
#include <linux/spi/spi.h>

#define ZTE_IR_FIRST_MINOR 0U
#define ZTE_IR_MINOR_COUNT 1U

extern int zte_ir_major;
extern struct class *zte_ir_class;
extern struct list_head zte_ir_device_list;
extern struct mutex zte_ir_device_list_lock;
extern unsigned long zte_ir_minors;

extern const struct file_operations zte_ir_fops;
extern const struct of_device_id zte_ir_of_match[];
extern struct spi_driver zte_ir_spi_driver;

#endif /* _ZTE_IR_DRIVER_STATE_H */
