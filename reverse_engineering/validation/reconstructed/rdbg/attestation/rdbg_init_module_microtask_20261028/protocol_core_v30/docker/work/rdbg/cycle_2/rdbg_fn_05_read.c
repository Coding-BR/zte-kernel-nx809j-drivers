// SPDX-License-Identifier: GPL-2.0-only
#include <asm/barrier.h>

#include <linux/completion.h>
#include <linux/device.h>
#include <linux/errno.h>
#include <linux/fs.h>
#include <linux/kernel.h>
#include <linux/mutex.h>
#include <linux/string.h>
#include <linux/uaccess.h>

#include "rdbg_reconstruction_layout.h"

#define RDBG_SMQ_MAGIC_PRODUCER 0xff00ff01U
#define RDBG_SMQ_TYPE_PRODUCER  1
#define RDBG_SMQ_TYPE_CONSUMER  2
#define RDBG_SMQ_BLOCK_SIZE     128

ssize_t rdbg_read(struct file *filp, char __user *buffer, size_t count,
		  loff_t *position)
{
	struct rdbg_data_layout *rdbgdata = filp->private_data;
	struct rdbg_smq_layout *consumer;
	struct rdbg_smq_layout *producer;
	struct rdbg_smq_node_layout *node;
	struct rdbg_smq_node_layout *free_node;
	u8 *block;
	unsigned long block_size;
	unsigned long copy_size;
	unsigned long copy_error;
	unsigned long slot;
	long byte_offset;
	long rounded_block;
	u32 index;
	u32 max_blocks;
	u32 release_index;
	int reset_index;
	int error;
	int result;

	if (!rdbgdata) {
		pr_err("Invalid argument\n");
		result = -EINVAL;
		goto out;
	}

	error = wait_for_completion_interruptible(&rdbgdata->work);
	if (error) {
		dev_err(rdbgdata->device, "%s: Error in wait\n", "rdbg_read");
		result = error;
		goto out;
	}

	consumer = &rdbgdata->consumer_smrb;
	producer = &rdbgdata->producer_smrb;
	if (consumer->type == RDBG_SMQ_TYPE_CONSUMER &&
	    consumer->out->s.init == RDBG_SMQ_MAGIC_PRODUCER &&
	    consumer->hdr->producer_version == 1) {
		reset_index = consumer->out->s.index_check_queue_for_reset;
		if (consumer->in->s.index_check_queue_for_reset_ack != reset_index) {
			consumer->in->s.index_check_queue_for_reset_ack = reset_index;
			for (slot = 0; slot < consumer->num_blocks; slot++)
				consumer->in->free[slot].index_block = 0xffff;
			consumer->in->s.index_sent_read = 0;
			consumer->in->s.index_free_write = 0;
			if (producer->type == RDBG_SMQ_TYPE_PRODUCER) {
				mutex_lock(producer->lock);
				if (producer->out->s.index_check_queue_for_reset !=
				    reset_index) {
					producer->out->s.index_check_queue_for_reset =
						reset_index;
					for (slot = 0; slot < producer->num_blocks;
					     slot++)
						producer->out->sent[slot].index_block =
							0xffff;
					if (producer->block_map.map) {
						memset(producer->block_map.map, 0,
						       producer->block_map.num_blocks + 1);
						producer->block_map.index_read = 0;
					}
					producer->out->s.index_sent_write = 0;
					producer->out->s.index_free_read = 0;
				}
				mutex_unlock(producer->lock);
			}
		}
	}

	if (consumer->hdr->producer_version == 1 ||
	    consumer->out->s.init == RDBG_SMQ_MAGIC_PRODUCER) {
		index = consumer->in->s.index_sent_read;
		if (index == consumer->out->s.index_sent_write)
			goto smq_error;
		node = &consumer->out->sent[index];
		if (node->index_block >= consumer->num_blocks)
			goto smq_error;

		consumer->in->s.index_sent_read =
			(index + 1) % consumer->num_blocks;
		block_size = (unsigned long)node->num_blocks *
			     RDBG_SMQ_BLOCK_SIZE;
		block = consumer->blocks +
			(unsigned long)node->index_block * RDBG_SMQ_BLOCK_SIZE;
		asm volatile("dsb ld");
		copy_size = min(count, block_size);
		check_object_size(block, copy_size, true);
		if (access_ok(buffer, copy_size))
			copy_error = raw_copy_to_user(buffer, block, copy_size);
		else
			copy_error = copy_size;
		if ((int)copy_error == 0) {
			if (consumer->lock)
				mutex_lock(consumer->lock);
			if (consumer->hdr->producer_version == 1 ||
			    consumer->out->s.init == RDBG_SMQ_MAGIC_PRODUCER) {
				byte_offset = (long)(unsigned long)block -
					      (long)(unsigned long)consumer->blocks;
				rounded_block = byte_offset + 0x7f;
				if (byte_offset >= 0)
					rounded_block = byte_offset;
				asm volatile("ldr %w[max], [%[data], #0xe8]\n\tasr %0, %0, #7"
					     : [rounded] "+r"(rounded_block),
					       [max] "=&r"(max_blocks)
					     : [data] "r"(rdbgdata)
					     : "memory");
				release_index = (u32)rounded_block;
				if (release_index < max_blocks) {
					free_node = &consumer->in->free[
						consumer->in->s.index_free_write];
					free_node->index_block = (u16)release_index;
					free_node->num_blocks = 0;
					consumer->in->s.index_free_write =
						(consumer->in->s.index_free_write + 1) %
						consumer->num_blocks;
				}
			}
			if (consumer->lock)
				mutex_unlock(consumer->lock);
			result = (int)copy_size;
			goto out;
		}

		dev_err(rdbgdata->device,
			"%s: Error in copy_to_user(). Err code = %d\n",
			"rdbg_read", (int)copy_error);
		result = -ENODATA;
		goto out;
	}

smq_error:
	dev_err(rdbgdata->device,
		"%s: Error in smq_recv(). Err code = %d\n", "rdbg_read", 0);
	result = -ENODATA;
out:
	return result;
}
