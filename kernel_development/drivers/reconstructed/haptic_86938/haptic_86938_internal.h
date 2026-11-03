/* SPDX-License-Identifier: GPL-2.0 */
#ifndef HAPTIC_86938_INTERNAL_H
#define HAPTIC_86938_INTERNAL_H

#include <linux/types.h>
#include <linux/interrupt.h>
#include <linux/compiler.h>

#define HAPTIC_RICHTAP_FIFO_BYTES 0x4000U
#define HAPTIC_RICHTAP_FIFO_NODE_BYTES 0x400U
#define HAPTIC_RICHTAP_FIFO_NODE_COUNT 16U
#define HAPTIC_RICHTAP_FIFO_PAYLOAD_OFFSET 0x18U
#define HAPTIC_RICHTAP_FIFO_PAYLOAD_BYTES 1000U
#define HAPTIC_RICHTAP_RTP_BUFFER_BYTES 16000U

static inline bool haptic_richtap_fifo_head_valid(const void *head)
{
	return head && (((unsigned long)head &
			 (HAPTIC_RICHTAP_FIFO_BYTES - 1U)) == 0UL);
}

static inline bool haptic_richtap_fifo_node_valid(const void *head,
						  const void *node)
{
	unsigned long base = (unsigned long)head;
	unsigned long address = (unsigned long)node;
	unsigned long offset;

	if (!haptic_richtap_fifo_head_valid(head) || !node || address < base)
		return false;
	offset = address - base;
	return offset < HAPTIC_RICHTAP_FIFO_BYTES &&
	       (offset & (HAPTIC_RICHTAP_FIFO_NODE_BYTES - 1U)) == 0UL;
}

static inline bool haptic_richtap_fifo_next_valid(const void *head,
						  const void *node,
						  const void *next)
{
	unsigned long offset;
	const void *expected;

	if (!haptic_richtap_fifo_node_valid(head, node))
		return false;
	offset = (unsigned long)node - (unsigned long)head;
	expected = offset == HAPTIC_RICHTAP_FIFO_BYTES -
			    HAPTIC_RICHTAP_FIFO_NODE_BYTES ?
		   head : (const void *)((unsigned long)node +
					 HAPTIC_RICHTAP_FIFO_NODE_BYTES);
	return next == expected;
}

struct aw_haptic;
struct attribute_group;
struct device;
struct file;
struct i2c_client;
struct miscdevice;
struct vm_area_struct;
struct work_struct;
struct haptic_lifetime;
extern struct aw_haptic *g_aw_haptic;
extern struct miscdevice richtap_misc;
extern struct attribute_group vibrator_attribute_group;

int aw_i2c_probe(struct i2c_client *client);
void aw_remove(struct i2c_client *client);
int aw8693x_creat_node(struct aw_haptic *haptic);
bool haptic_lifetime_aw_node_creation_allowed(void);
void haptic_lifetime_transition_begin(void);
void haptic_lifetime_transition_end(void);
int haptic_lifetime_misc_register(struct miscdevice *misc);
void haptic_lifetime_free_probe_irq_if_requested(struct device *dev,
						 unsigned int irq, void *dev_id);
irqreturn_t irq_handle(int irq, void *data);
void vibrator_work_routine(struct work_struct *work);
void rtp_work_routine(struct work_struct *work);
void audio_work_routine(struct work_struct *work);
long richtap_file_unlocked_ioctl(struct file *file, unsigned int command,
				 unsigned long argument);

bool haptic_lifetime_is_shutting_down(void);
bool haptic_lifetime_is_probe_complete(void);
int haptic_lifetime_file_open(struct file *file);
void haptic_lifetime_file_release(struct file *file);
int haptic_lifetime_enter_file(struct file *file,
			       struct haptic_lifetime **lifetime_out,
			       void **state_out);
void haptic_lifetime_exit_file(struct haptic_lifetime *lifetime);
void haptic_lifetime_attach_vma(struct haptic_lifetime *lifetime,
				struct vm_area_struct *vma);
bool haptic_lifetime_block_file_access(void *state);
void haptic_lifetime_retire_state(void *state);
void haptic_lifetime_wait_ram_callbacks(void);
int haptic_lifetime_request_ram_firmware(void *state);
void haptic_lifetime_irq_stop_lock(void);
void haptic_lifetime_irq_stop_unlock(void);
void haptic_lifetime_richtap_stream_lock(void);
void haptic_lifetime_richtap_stream_unlock(void);
void haptic_lifetime_richtap_fifo_reset(void *state);

#endif
