// SPDX-License-Identifier: GPL-2.0-only
#include <linux/module.h>
#include <linux/mutex.h>

DEFINE_MUTEX(rdbg_smem_state_lock);

MODULE_DESCRIPTION("rdbg module");
MODULE_LICENSE("GPL");
