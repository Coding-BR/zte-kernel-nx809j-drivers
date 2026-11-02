// SPDX-License-Identifier: GPL-2.0-only
#include <linux/bitops.h>
#include <linux/bug.h>
#include <linux/device.h>
#include <linux/errno.h>
#include <linux/fs.h>
#include <linux/kernel.h>
#include <linux/mutex.h>
#include <linux/soc/qcom/smem_state.h>
#include <linux/string.h>
#include <linux/uaccess.h>
#include <asm/barrier.h>

#include "rdbg_reconstruction_layout.h"

#define RDBG_SMQ_SUCCESS 0
#define RDBG_SMQ_ENOMEMORY (-1)
#define RDBG_SMQ_EBADPARM (-2)
#define RDBG_SMQ_MAGIC_CONSUMER 0xff00ff02U
#define RDBG_SMQ_VERSION 1
#define RDBG_SMQ_BLOCKSIZE 128
#define RDBG_MAX_RETRIES 20

static int smq_blockmap_get(struct rdbg_smq_block_map_layout *block_map,
			    u32 *block_index, u32 n)
{
	u32 start;
	u32 mark = 0;
	u32 found = 0;
	u32 i = 0;

	start = block_map->index_read;

	if (n == 1) {
		do {
			if (!block_map->map[block_map->index_read]) {
				*block_index = block_map->index_read;
				block_map->map[block_map->index_read] = 1;
				block_map->index_read++;
				block_map->index_read %= block_map->num_blocks;
				return RDBG_SMQ_SUCCESS;
			}
			block_map->index_read++;
		} while (start != (block_map->index_read %=
					 block_map->num_blocks));
	} else {
		mark = block_map->num_blocks;

		do {
			if (!block_map->map[block_map->index_read]) {
				if (mark > block_map->index_read) {
					mark = block_map->index_read;
					start = block_map->index_read;
					found = 0;
				}

				found++;
				if (found == n) {
					*block_index = mark;
					for (i = 0; i < n; i++)
						block_map->map[mark + i] =
							(u8)(n - i);
					block_map->index_read += block_map->map
						[block_map->index_read] - 1;
					return RDBG_SMQ_SUCCESS;
				}
			} else {
				found = 0;
				block_map->index_read += block_map->map
					[block_map->index_read] - 1;
				mark = block_map->num_blocks;
			}
			block_map->index_read++;
		} while (start != (block_map->index_read %=
					 block_map->num_blocks));
	}

	return RDBG_SMQ_ENOMEMORY;
}

static void smq_blockmap_put(struct rdbg_smq_block_map_layout *block_map,
			     u32 i)
{
	u32 num_blocks = block_map->map[i];

	while (num_blocks--) {
		block_map->map[i] = 0;
		i++;
	}
}

static int smq_alloc_send(struct rdbg_smq_layout *smq,
			  const u8 *pcb, int nsize)
{
	void *pv = 0;
	int num_blocks;
	u32 index_block = 0;
	int err = RDBG_SMQ_SUCCESS;
	struct rdbg_smq_node_layout *node = NULL;

	mutex_lock(smq->lock);

	if ((smq->in->s.init == RDBG_SMQ_MAGIC_CONSUMER) &&
	    (smq->hdr->consumer_version == RDBG_SMQ_VERSION)) {
		if (smq->out->s.index_check_queue_for_reset ==
		    smq->in->s.index_check_queue_for_reset_ack) {
			while (smq->out->s.index_free_read !=
			       smq->in->s.index_free_write) {
				node = &smq->in->free[
					smq->out->s.index_free_read];
				if (node->index_block >= smq->num_blocks) {
					err = RDBG_SMQ_EBADPARM;
					goto bail;
				}

				smq->out->s.index_free_read =
					(smq->out->s.index_free_read + 1) %
					smq->num_blocks;

				smq_blockmap_put(&smq->block_map,
						 node->index_block);
				rmb();
			}
		}
	}

	num_blocks = ALIGN(nsize, RDBG_SMQ_BLOCKSIZE) /
		RDBG_SMQ_BLOCKSIZE;
	err = smq_blockmap_get(&smq->block_map, &index_block, num_blocks);
	if (err != RDBG_SMQ_SUCCESS)
		goto bail;

	pv = smq->blocks + (RDBG_SMQ_BLOCKSIZE * index_block);
	err = copy_from_user(pv, pcb, nsize);
	if (err != 0)
		goto bail;

	((struct rdbg_smq_node_layout *)(smq->out->sent +
		smq->out->s.index_sent_write))->index_block =
			(u16)index_block;
	((struct rdbg_smq_node_layout *)(smq->out->sent +
		smq->out->s.index_sent_write))->num_blocks =
			(u16)num_blocks;

	smq->out->s.index_sent_write =
		(smq->out->s.index_sent_write + 1) % smq->num_blocks;

bail:
	if (err != RDBG_SMQ_SUCCESS) {
		if (pv)
			smq_blockmap_put(&smq->block_map, index_block);
	}
	mutex_unlock(smq->lock);
	return err;
}

static void send_interrupt_to_subsystem(struct rdbg_data_layout *rdbgdata)
{
	unsigned int offset = rdbgdata->gpio_out_offset;
	unsigned int val;
	u32 *registers = (u32 *)rdbgdata + 0x52;

	if (offset > 0x1f) {
		asm volatile("brk #0x5512" ::: "memory");
		__builtin_unreachable();
	}
	val = registers[offset] ^ BIT(rdbgdata->out.smem_bit + offset);
	qcom_smem_state_update_bits(rdbgdata->out.smem_state,
				    BIT(rdbgdata->out.smem_bit + offset), val);
	registers[offset] = val;
	rdbgdata->gpio_out_offset = (offset + 1) % 32;
}

ssize_t rdbg_write(struct file *filp, const char __user *buffer, size_t count,
		   loff_t *position)
{
	struct rdbg_data_layout *rdbgdata = filp->private_data;
	int err = 0;
	int num_retries = 0;

	(void)position;
	if (!rdbgdata) {
		pr_err("Invalid argument\n");
		err = -EINVAL;
		goto bail;
	}

	do {
		err = smq_alloc_send(&rdbgdata->producer_smrb,
				    (const u8 *)buffer, count);
		dev_dbg(rdbgdata->device, "%s, smq_alloc_send returned %d.\n",
			__func__, err);
	} while (err != 0 && num_retries++ < RDBG_MAX_RETRIES);

	if (err != 0) {
		pr_err("rdbg: send_interrupt_to_subsystem failed\n");
		err = -ECOMM;
		goto bail;
	}

	send_interrupt_to_subsystem(rdbgdata);
	err = count;

bail:
	return err;
}