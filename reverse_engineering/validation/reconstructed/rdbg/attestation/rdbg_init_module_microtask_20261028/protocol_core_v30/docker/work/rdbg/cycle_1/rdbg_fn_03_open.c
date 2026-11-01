// SPDX-License-Identifier: GPL-2.0-only
#include <linux/completion.h>
#include <linux/device.h>
#include <linux/err.h>
#include <linux/errno.h>
#include <linux/fs.h>
#include <linux/interrupt.h>
#include <linux/kernel.h>
#include <linux/mutex.h>
#include <linux/slab.h>
#include <linux/soc/qcom/smem.h>
#include <linux/string.h>

#include "rdbg_reconstruction_layout.h"

extern irqreturn_t on_interrupt_from(int irq, void *dev_id);

#define RDBG_SMQ_MAGIC_INIT     0xff00ff00U
#define RDBG_SMQ_MAGIC_PRODUCER 0xff00ff01U
#define RDBG_SMQ_MAGIC_CONSUMER 0xff00ff02U
#define RDBG_SMQ_VERSION        1
#define RDBG_SMQ_BLOCK_SIZE     128
#define RDBG_SMQ_SUCCESS        0
#define RDBG_SMQ_ENOMEMORY      (-1)
#define RDBG_SMQ_EBADPARM       (-2)

static int check_subsystem_debug_enabled(void *base_addr, int size)
{
	u8 *pb_orig = base_addr;
	u8 *pb = pb_orig + sizeof(struct rdbg_smq_header_layout);
	struct rdbg_smq_layout smq;
	int num_blocks;
	int err = 0;

	pb = PTR_ALIGN(pb, 8);
	size -= pb - pb_orig;
	num_blocks = (size - sizeof(struct rdbg_smq_out_state_layout) -
		      sizeof(struct rdbg_smq_in_state_layout)) /
		     (RDBG_SMQ_BLOCK_SIZE +
		      sizeof(struct rdbg_smq_node_layout) * 2);
	if (num_blocks <= 0) {
		err = RDBG_SMQ_EBADPARM;
		goto bail;
	}

	pb += num_blocks * RDBG_SMQ_BLOCK_SIZE;
	smq.out = (void *)pb;
	pb += sizeof(struct rdbg_smq_out_state_layout) +
	      num_blocks * sizeof(struct rdbg_smq_node_layout);
	smq.in = (void *)pb;
	if (smq.in->s.init != RDBG_SMQ_MAGIC_CONSUMER) {
		pr_err("%s, smq in consumer not initialized\n", __func__);
		err = -ECOMM;
	}

bail:
	return err;
}

static int smq_blockmap_ctor(struct rdbg_smq_block_map_layout *block_map,
			     u32 num_blocks)
{
	if (num_blocks <= 1)
		return RDBG_SMQ_ENOMEMORY;

	block_map->map = kcalloc(num_blocks, sizeof(u8), GFP_KERNEL);
	if (!block_map->map)
		return RDBG_SMQ_ENOMEMORY;
	block_map->num_blocks = num_blocks - 1;
	if (block_map->map) {
		memset(block_map->map, 0, block_map->num_blocks + 1);
		block_map->index_read = 0;
	}
	return RDBG_SMQ_SUCCESS;
}

static int smq_ctor(struct rdbg_smq_layout *smq, void *base_addr, int size,
		    enum rdbg_smq_type_layout type, struct mutex *lock_ptr)
{
	u8 *pb_orig;
	u8 *pb;
	u32 i;
	int num_blocks;
	int err;

	if (smq->initialized == RDBG_SMQ_MAGIC_INIT) {
		err = RDBG_SMQ_EBADPARM;
		goto bail;
	}
	if (!base_addr || !size) {
		err = RDBG_SMQ_EBADPARM;
		goto bail;
	}
	if (type == RDBG_SMQ_PRODUCER)
		smq->lock = lock_ptr;

	pb_orig = base_addr;
	smq->hdr = (struct rdbg_smq_header_layout *)pb_orig;
	pb = pb_orig + sizeof(*smq->hdr);
	pb = PTR_ALIGN(pb, 8);
	size -= pb - pb_orig;
	num_blocks = (size - sizeof(struct rdbg_smq_out_state_layout) -
		      sizeof(struct rdbg_smq_in_state_layout)) /
		     (RDBG_SMQ_BLOCK_SIZE +
		      sizeof(struct rdbg_smq_node_layout) * 2);
	if (num_blocks <= 0) {
		err = RDBG_SMQ_ENOMEMORY;
		goto bail;
	}

	smq->blocks = pb;
	smq->num_blocks = num_blocks;
	pb += num_blocks * RDBG_SMQ_BLOCK_SIZE;
	smq->out = (void *)pb;
	pb += sizeof(struct rdbg_smq_out_state_layout) +
	      num_blocks * sizeof(struct rdbg_smq_node_layout);
	smq->in = (void *)pb;
	smq->type = type;

	if (type == RDBG_SMQ_PRODUCER) {
		smq->hdr->producer_version = RDBG_SMQ_VERSION;
		for (i = 0; i < smq->num_blocks; i++)
			smq->out->sent[i].index_block = 0xffff;
		err = smq_blockmap_ctor(&smq->block_map, smq->num_blocks);
		if (err != RDBG_SMQ_SUCCESS)
			goto bail;

		smq->out->s.index_sent_write = 0;
		smq->out->s.index_free_read = 0;
		if (smq->out->s.init == RDBG_SMQ_MAGIC_PRODUCER) {
			smq->out->s.index_check_queue_for_reset += 1;
		} else {
			smq->out->s.index_check_queue_for_reset = 1;
			smq->out->s.init = RDBG_SMQ_MAGIC_PRODUCER;
		}
	} else {
		smq->hdr->consumer_version = RDBG_SMQ_VERSION;
		for (i = 0; i < smq->num_blocks; i++)
			smq->in->free[i].index_block = 0xffff;
		smq->in->s.index_sent_read = 0;
		smq->in->s.index_free_write = 0;
		if (smq->out->s.init == RDBG_SMQ_MAGIC_PRODUCER)
			smq->in->s.index_check_queue_for_reset_ack =
				smq->out->s.index_check_queue_for_reset;
		else
			smq->in->s.index_check_queue_for_reset_ack = 0;
		smq->in->s.init = RDBG_SMQ_MAGIC_CONSUMER;
	}

	smq->initialized = RDBG_SMQ_MAGIC_INIT;
	err = RDBG_SMQ_SUCCESS;
bail:
	return err;
}

static void smq_dtor(struct rdbg_smq_layout *smq)
{
	if (smq->initialized == RDBG_SMQ_MAGIC_INIT) {
		if (smq->type == RDBG_SMQ_PRODUCER) {
			smq->out->s.init = 0;
			kfree(smq->block_map.map);
			smq->block_map.map = NULL;
		} else if (smq->type == RDBG_SMQ_CONSUMER) {
			smq->in->s.init = 0;
		}
		smq->initialized = 0;
	}
}

static int initialize_smq(struct rdbg_data_layout *rdbgdata)
{
	int err = 0;
	u8 *smem_consumer_buffer = rdbgdata->smem_addr;

	smem_consumer_buffer += rdbgdata->smem_size / 2;
	if (smq_ctor(&rdbgdata->producer_smrb, rdbgdata->smem_addr,
		     rdbgdata->smem_size / 2, RDBG_SMQ_PRODUCER,
		     &rdbgdata->write_mutex)) {
		dev_err(rdbgdata->device,
			"%s: smq producer allocation failed\n", __func__);
		err = -ENOMEM;
		goto bail;
	}
	if (smq_ctor(&rdbgdata->consumer_smrb, smem_consumer_buffer,
		     rdbgdata->smem_size / 2, RDBG_SMQ_CONSUMER, NULL)) {
		dev_err(rdbgdata->device,
			"%s: smq consumer allocation failed\n", __func__);
		err = -ENOMEM;
	}
bail:
	return err;
}

int rdbg_open(struct inode *inode, struct file *filp)
{
	int device_id = -1;
	struct rdbg_device_layout *device =
		(struct rdbg_device_layout *)&g_rdbg_instance;
	struct rdbg_data_layout *rdbgdata = NULL;
	int err = 0;

	if (!inode || !device->rdbg_data) {
		pr_err("Memory not allocated yet\n");
		err = -ENODEV;
		goto bail;
	}

	device_id = MINOR(inode->i_rdev);
	rdbgdata = &device->rdbg_data[device_id];
	if (rdbgdata->device_opened) {
		dev_err(rdbgdata->device, "%s: Device already opened\n",
			__func__);
		err = -EEXIST;
		goto bail;
	}
	if (unlikely(device_id > 15)) {
		asm volatile(".inst 0xd42aa240");
		unreachable();
	}

	rdbgdata->smem_size = proc_info[device_id].smem_buffer_size;
	if (!rdbgdata->smem_size) {
		dev_err(rdbgdata->device, "%s: smem not initialized\n",
			__func__);
		err = -ENOMEM;
		goto bail;
	}

	rdbgdata->smem_addr = qcom_smem_get(0xffffffff,
					    proc_info[device_id].smem_buffer_addr,
					    &rdbgdata->smem_size);
	if (IS_ERR(rdbgdata->smem_addr)) {
		pr_err("rdbg: Can't retrieve data from common SMEM region.\n"
		       "Retrieving data from device specific partition.\n");
		if (PTR_ERR(rdbgdata->smem_addr) == -ENOENT)
			rdbgdata->smem_addr = qcom_smem_get(device_id,
							    proc_info[device_id].smem_buffer_addr,
							    &rdbgdata->smem_size);
	}
	if (!rdbgdata->smem_addr) {
		dev_err(rdbgdata->device,
			"%s: Could not allocate smem memory\n", __func__);
		pr_err("rdbg:Could not allocate smem memory\n");
		err = -ENOMEM;
		goto bail;
	}

	if (check_subsystem_debug_enabled(rdbgdata->smem_addr,
					  rdbgdata->smem_size / 2)) {
		dev_err(rdbgdata->device,
			"%s: Subsystem %s is not debug enabled\n", __func__,
			proc_info[device_id].name);
		pr_err("rdbg:Sub system debug is not enabled\n");
		err = -ECOMM;
		goto bail;
	}

	init_completion(&rdbgdata->work);
	err = request_threaded_irq(rdbgdata->in.irq_base_id, NULL,
				   on_interrupt_from,
				   IRQF_ONESHOT | IRQF_TRIGGER_RISING |
					   IRQF_TRIGGER_FALLING,
				   proc_info[device_id].name,
				   &device->rdbg_data[device_id]);
	if (err) {
		dev_err(rdbgdata->device,
			"%s: Failed to register interrupt.Err=%d,irqid=%d.\n",
			__func__, err, rdbgdata->in.irq_base_id);
		pr_err("rdbg : Failed to register interrupt %d\n", err);
		goto bail;
	}

	mutex_init(&rdbgdata->write_mutex);
	err = initialize_smq(rdbgdata);
	if (err) {
		dev_err(rdbgdata->device, "Error initializing smq. Err=%d\n",
			err);
		pr_err("rdbg: initialize_smq() failed with err %d\n", err);
		goto smq_bail;
	}

	rdbgdata->device_opened = 1;
	filp->private_data = rdbgdata;
	return 0;

smq_bail:
	smq_dtor(&rdbgdata->producer_smrb);
	smq_dtor(&rdbgdata->consumer_smrb);
	mutex_destroy(&rdbgdata->write_mutex);
bail:
	return err;
}
