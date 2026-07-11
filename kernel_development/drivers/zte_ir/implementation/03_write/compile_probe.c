/* SPDX-License-Identifier: GPL-2.0-only */

#include <linux/err.h>
#include <linux/errno.h>
#include <linux/fs.h>
#include <linux/lockdep.h>
#include <linux/overflow.h>
#include <linux/printk.h>
#include <linux/slab.h>
#include <linux/spi/spi.h>
#include <linux/uaccess.h>

#include "zte_ir_abi.h"
#include "zte_ir_runtime.h"
#include "../01_spi_get/zte_ir_spi_get.c"
#include "../02_encode_pulses/zte_ir_encode_pulses.c"
#include "zte_ir_write.c"

static zte_ir_write_signature *const checked_zte_ir_write __used = zte_ir_write;
