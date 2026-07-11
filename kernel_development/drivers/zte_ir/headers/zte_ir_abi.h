/* SPDX-License-Identifier: GPL-2.0-only */
#ifndef _ZTE_IR_RECOVERED_ABI_H
#define _ZTE_IR_RECOVERED_ABI_H

#include <linux/fs.h>
#include <linux/ioctl.h>
#include <linux/spi/spi.h>

#define ZTE_IR_DRIVER_NAME             "zte_ir"
#define ZTE_IR_CLASS_NAME              "zte_ir_class"
#define ZTE_IR_OF_COMPATIBLE           "zte,zte_ir"

#define ZTE_IR_IOC_MAGIC               'i'
#define ZTE_IR_IOC_SET_CARRIER         _IOW(ZTE_IR_IOC_MAGIC, 0x31, int)
#define ZTE_IR_IOC_SET_CARRIER_RAW     0x40046931U

#define ZTE_IR_DEFAULT_CARRIER_HZ      38000U
#define ZTE_IR_DEFAULT_SPI_SPEED_HZ    608000U
#define ZTE_IR_SPI_WORDS_PER_CARRIER   16U
#define ZTE_IR_DT_MAX_SPI_HZ           5000000U

/* Function types make callback declarations mechanically CFI-compatible. */
typedef ssize_t zte_ir_write_signature(struct file *file,
				       const char __user *buffer,
				       size_t count,
				       loff_t *position);
typedef long zte_ir_ioctl_signature(struct file *file,
				    unsigned int command,
				    unsigned long argument);
typedef int zte_ir_open_signature(struct inode *inode, struct file *file);
typedef int zte_ir_release_signature(struct inode *inode, struct file *file);
typedef int zte_ir_probe_signature(struct spi_device *spi);
typedef void zte_ir_remove_signature(struct spi_device *spi);
typedef int zte_ir_init_signature(void);
typedef void zte_ir_exit_signature(void);

#endif /* _ZTE_IR_RECOVERED_ABI_H */
