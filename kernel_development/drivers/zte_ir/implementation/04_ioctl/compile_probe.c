/* SPDX-License-Identifier: GPL-2.0-only */

#include <linux/fs.h>
#include <linux/uaccess.h>
#include <linux/mutex.h>
#include <linux/device.h>
#include <linux/spi/spi.h>

#include "zte_ir_abi.h"
#include "zte_ir_layout.h"
#include "zte_ir_runtime.h"
#include "zte_ir_ioctl.c"

static long (*const checked_zte_ir_ioctl)(
	struct file *file,
	unsigned int command,
	unsigned long argument) __used = zte_ir_ioctl;
