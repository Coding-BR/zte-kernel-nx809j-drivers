/* SPDX-License-Identifier: GPL-2.0-only */

#include <linux/fs.h>
#include <linux/list.h>
#include <linux/mutex.h>
#include <linux/printk.h>
#include <linux/slab.h>

#include "zte_ir_abi.h"
#include "zte_ir_driver_state.h"
#include "zte_ir_runtime.h"

LIST_HEAD(zte_ir_device_list);
DEFINE_MUTEX(zte_ir_device_list_lock);
int zte_ir_major;
struct class *zte_ir_class;
unsigned long zte_ir_minors;

#include "zte_ir_release.c"

static zte_ir_release_signature *const checked_zte_ir_release __used =
	zte_ir_release;
