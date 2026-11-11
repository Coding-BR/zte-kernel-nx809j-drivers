// SPDX-License-Identifier: GPL-2.0-only
#include <linux/module.h>
#include <linux/mutex.h>

#include "rdbg_reconstruction_layout.h"

DEFINE_MUTEX(rdbg_smem_state_lock);
DEFINE_MUTEX(rdbg_input_irq_lock);
DEFINE_MUTEX(rdbg_file_lifecycle_lock);

struct rdbg_file_context_layout *rdbg_active_file_contexts[16];

MODULE_DESCRIPTION("rdbg module");
MODULE_LICENSE("GPL");
