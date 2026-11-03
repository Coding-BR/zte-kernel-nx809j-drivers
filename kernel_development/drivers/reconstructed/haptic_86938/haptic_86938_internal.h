/* SPDX-License-Identifier: GPL-2.0 */
#ifndef HAPTIC_86938_INTERNAL_H
#define HAPTIC_86938_INTERNAL_H

#include <linux/types.h>
#include <linux/interrupt.h>

struct aw_haptic;
struct device;
struct file;
struct i2c_client;
struct miscdevice;
struct vm_area_struct;
struct work_struct;
struct haptic_lifetime;
extern struct aw_haptic *g_aw_haptic;
extern struct miscdevice richtap_misc;

int aw_i2c_probe(struct i2c_client *client);
void haptic_lifetime_transition_begin(void);
void haptic_lifetime_transition_end(void);
irqreturn_t irq_handle(int irq, void *data);
void vibrator_work_routine(struct work_struct *work);
void rtp_work_routine(struct work_struct *work);
void audio_work_routine(struct work_struct *work);
long richtap_file_unlocked_ioctl(struct file *file, unsigned int command,
				 unsigned long argument);

bool haptic_lifetime_is_shutting_down(void);
int haptic_lifetime_file_open(struct file *file);
void haptic_lifetime_file_release(struct file *file);
int haptic_lifetime_enter_file(struct file *file,
			       struct haptic_lifetime **lifetime_out,
			       void **state_out);
void haptic_lifetime_exit_file(struct haptic_lifetime *lifetime);
void haptic_lifetime_attach_vma(struct haptic_lifetime *lifetime,
				struct vm_area_struct *vma);
void haptic_lifetime_block_file_access(void *state);
void haptic_lifetime_retire_state(void *state);
void haptic_lifetime_wait_ram_callbacks(void);
int haptic_lifetime_request_ram_firmware(void *state);
void haptic_lifetime_irq_stop_lock(void);
void haptic_lifetime_irq_stop_unlock(void);

#endif
