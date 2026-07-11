/* SPDX-License-Identifier: GPL-2.0-only */

#include <linux/errno.h>
#include <linux/lockdep.h>
#include <linux/overflow.h>
#include <linux/printk.h>

#include "zte_ir_abi.h"
#include "zte_ir_runtime.h"
#include "zte_ir_encode_pulses.c"

static int (*const checked_zte_ir_encode_pulses)(
	struct zte_ir_runtime *runtime,
	const u32 *pulses,
	size_t pulse_count,
	u32 speed_hz,
	size_t *word_count) __used = zte_ir_encode_pulses;
