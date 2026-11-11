// SPDX-License-Identifier: GPL-2.0-only
#include <linux/completion.h>
#include <linux/device.h>
#include <linux/errno.h>
#include <linux/fs.h>
#include <linux/kernel.h>
#include <linux/interrupt.h>
#include <linux/mutex.h>
#include <linux/slab.h>

#include "rdbg_reconstruction_layout.h"

#define RDBG_SMQ_MAGIC_INIT 0xff00ff00

static void rdbg_smq_blockmap_destroy(struct rdbg_smq_block_map_layout *block_map)
{
	kfree(block_map->map);
	block_map->map = NULL;
}

static void rdbg_smq_destroy(struct rdbg_smq_layout *smq)
{
	if (smq->initialized == RDBG_SMQ_MAGIC_INIT) {
		if (smq->type == RDBG_SMQ_PRODUCER) {
			smq->out->s.init = 0;
			rdbg_smq_blockmap_destroy(&smq->block_map);
		} else if (smq->type == RDBG_SMQ_CONSUMER) {
			smq->in->s.init = 0;
		}
		smq->initialized = 0;
	}
}

int rdbg_release(struct inode *inode, struct file *filp)
{
	int device_id = -1;
	int requested_irq;
	struct rdbg_device_layout *rdbgdevice =
		(struct rdbg_device_layout *)&g_rdbg_instance;
	struct rdbg_data_layout *rdbgdata = NULL;
	struct rdbg_file_context_layout *file_context;
	int err = 0;

	if (!inode || !rdbgdevice->rdbg_data) {
		pr_err("Memory not allocated yet\n");
		err = -ENODEV;
		goto bail;
	}

	device_id = MINOR(inode->i_rdev);
	if (device_id < 0 || device_id >= rdbgdevice->num_devices) {
		err = -ENODEV;
		goto bail;
	}

	mutex_lock(&rdbg_file_lifecycle_lock);
	file_context = filp->private_data;
	if (!file_context || !file_context->rdbgdata) {
		err = -ENODEV;
		goto out_unlock;
	}
	rdbgdata = file_context->rdbgdata;
	if (rdbgdata->device_opened == 1) {
		complete(&rdbgdata->work);
		requested_irq = file_context->requested_irq;
		if (requested_irq >= 0) {
			/* free_irq() also waits for any running handler to finish. */
			free_irq(requested_irq, rdbgdata);
			WRITE_ONCE(file_context->requested_irq, -1);
		}
		rdbg_smq_destroy(&rdbgdevice->rdbg_data[device_id].producer_smrb);
		rdbg_smq_destroy(&rdbgdevice->rdbg_data[device_id].consumer_smrb);
		mutex_destroy(&rdbgdata->write_mutex);
		rdbgdata->device_opened = 0;
	}
	if (rdbg_active_file_contexts[device_id] == file_context)
		rdbg_active_file_contexts[device_id] = NULL;
	filp->private_data = NULL;
	if (file_context) {
		mutex_destroy(&file_context->read_mutex);
		kfree(file_context);
	}

out_unlock:
	mutex_unlock(&rdbg_file_lifecycle_lock);
bail:
	return err;
}
