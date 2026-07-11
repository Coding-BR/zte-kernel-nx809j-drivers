/* SPDX-License-Identifier: GPL-2.0-only */

#include <linux/printk.h>
#include <linux/spi/spi.h>

#include "zte_ir_runtime.h"
#include "zte_ir_spi_get.c"

static struct spi_device *(*const checked_zte_ir_spi_get)(
	struct zte_ir_runtime *runtime) __used = zte_ir_spi_get;
