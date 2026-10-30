// SPDX-License-Identifier: GPL-2.0-only
#include <linux/completion.h>
#include <linux/device.h>
#include <linux/errno.h>
#include <linux/fs.h>
#include <linux/kernel.h>
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
	struct rdbg_device_layout *rdbgdevice =
		(struct rdbg_device_layout *)&g_rdbg_instance;
	struct rdbg_data_layout *rdbgdata = NULL;
	int err = 0;

	if (!inode || !rdbgdevice->rdbg_data) {
		pr_err("Memory not allocated yet\n");
		err = -ENODEV;
		goto bail;
	}

	device_id = MINOR(inode->i_rdev);
	rdbgdata = &rdbgdevice->rdbg_data[device_id];
	if (rdbgdata->device_opened == 1) {
		rdbgdata->device_opened = 0;
		complete(&rdbgdata->work);
		rdbg_smq_destroy(&rdbgdevice->rdbg_data[device_id].producer_smrb);
		rdbg_smq_destroy(&rdbgdevice->rdbg_data[device_id].consumer_smrb);
		mutex_destroy(&rdbgdata->write_mutex);
	}
	filp->private_data = NULL;

bail:
	return err;
}
