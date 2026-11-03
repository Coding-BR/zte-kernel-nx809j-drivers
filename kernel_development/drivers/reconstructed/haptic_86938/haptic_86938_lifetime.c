// SPDX-License-Identifier: GPL-2.0
#include <linux/atomic.h>
#include <linux/bitops.h>
#include <linux/device.h>
#include <linux/errno.h>
#include <linux/firmware.h>
#include <linux/fs.h>
#include <linux/gpio.h>
#include <linux/i2c.h>
#include <linux/interrupt.h>
#include <linux/kernel.h>
#include <linux/leds.h>
#include <linux/mm.h>
#include <linux/miscdevice.h>
#include <linux/module.h>
#include <linux/mutex.h>
#include <linux/refcount.h>
#include <linux/slab.h>
#include <linux/wait.h>
#include <linux/workqueue.h>

#include "haptic_86938_internal.h"

struct haptic_lifetime {
	refcount_t refs;
	struct mutex lock;
	wait_queue_head_t idle;
	void *state;
	unsigned int active_ops;
	unsigned int vma_refs;
	unsigned long retired_pages;
	bool dying;
};

struct haptic_ram_request {
	void *state;
};

static DEFINE_MUTEX(haptic_lifetime_registry_lock);
static DEFINE_MUTEX(haptic_ram_callback_lock);
static DEFINE_MUTEX(haptic_irq_stop_lock);
static struct haptic_lifetime *active_lifetime;
static atomic_t haptic_shutdown = ATOMIC_INIT(1);
static atomic_t haptic_ram_callbacks = ATOMIC_INIT(0);
static DECLARE_WAIT_QUEUE_HEAD(haptic_ram_callbacks_idle);

extern int aw_i2c_probe_stock_exact(struct i2c_client *client);
extern irqreturn_t irq_handle_stock_exact(int irq, void *data);
extern void vibrator_work_routine_stock_exact(struct work_struct *work);
extern void rtp_work_routine_stock_exact(struct work_struct *work);
extern void audio_work_routine_stock_exact(struct work_struct *work);
extern long richtap_file_unlocked_ioctl_stock_exact(struct file *file,
							    unsigned int command,
							    unsigned long argument);
extern void ram_load(const struct firmware *firmware, void *context);
extern char *aw_ram_name;

static void haptic_ram_firmware_complete(const struct firmware *firmware,
					 void *context);

static void haptic_release_fifo_pages(unsigned long address)
{
	if (!address)
		return;

	clear_bit(14, &virt_to_page((void *)address)->flags);
	free_pages(address, 2);
}

static void haptic_lifetime_put(struct haptic_lifetime *lifetime)
{
	if (!lifetime || !refcount_dec_and_test(&lifetime->refs))
		return;

	WARN_ON(lifetime->active_ops || lifetime->vma_refs ||
		lifetime->retired_pages || lifetime->state);
	kfree(lifetime);
}

bool haptic_lifetime_is_shutting_down(void)
{
	return atomic_read(&haptic_shutdown) != 0;
}

int aw_i2c_probe(struct i2c_client *client)
{
	int ret;

	mutex_lock(&haptic_lifetime_registry_lock);
	if (active_lifetime || READ_ONCE(g_aw_haptic)) {
		mutex_unlock(&haptic_lifetime_registry_lock);
		return -EBUSY;
	}
	atomic_set(&haptic_shutdown, 0);
	mutex_unlock(&haptic_lifetime_registry_lock);

	ret = aw_i2c_probe_stock_exact(client);
	if (ret)
		atomic_set(&haptic_shutdown, 1);
	return ret;
}

int haptic_lifetime_file_open(struct file *file)
{
	struct haptic_lifetime *lifetime;
	void *state;

	mutex_lock(&haptic_lifetime_registry_lock);
	state = READ_ONCE(g_aw_haptic);
	if (!state || haptic_lifetime_is_shutting_down()) {
		mutex_unlock(&haptic_lifetime_registry_lock);
		return -ENODEV;
	}

	lifetime = active_lifetime;
	if (!lifetime) {
		lifetime = kzalloc(sizeof(*lifetime), GFP_KERNEL);
		if (!lifetime) {
			mutex_unlock(&haptic_lifetime_registry_lock);
			return -ENOMEM;
		}
		refcount_set(&lifetime->refs, 1); /* device ownership */
		mutex_init(&lifetime->lock);
		init_waitqueue_head(&lifetime->idle);
		lifetime->state = state;
		active_lifetime = lifetime;
	}

	mutex_lock(&lifetime->lock);
	if (lifetime->dying || lifetime->state != state) {
		mutex_unlock(&lifetime->lock);
		mutex_unlock(&haptic_lifetime_registry_lock);
		return -ENODEV;
	}
	refcount_inc(&lifetime->refs);
	mutex_unlock(&lifetime->lock);
	file->private_data = lifetime;
	mutex_unlock(&haptic_lifetime_registry_lock);
	return 0;
}

void haptic_lifetime_file_release(struct file *file)
{
	struct haptic_lifetime *lifetime = file->private_data;

	file->private_data = NULL;
	haptic_lifetime_put(lifetime);
}

int haptic_lifetime_enter_file(struct file *file,
			       struct haptic_lifetime **lifetime_out,
			       void **state_out)
{
	struct haptic_lifetime *lifetime = file->private_data;

	if (!lifetime)
		return -ENODEV;

	mutex_lock(&lifetime->lock);
	if (lifetime->dying || !lifetime->state) {
		mutex_unlock(&lifetime->lock);
		return -ENODEV;
	}
	lifetime->active_ops++;
	*lifetime_out = lifetime;
	*state_out = lifetime->state;
	mutex_unlock(&lifetime->lock);
	return 0;
}

void haptic_lifetime_exit_file(struct haptic_lifetime *lifetime)
{
	bool idle;

	mutex_lock(&lifetime->lock);
	WARN_ON(!lifetime->active_ops);
	if (lifetime->active_ops)
		lifetime->active_ops--;
	idle = !lifetime->active_ops;
	mutex_unlock(&lifetime->lock);
	if (idle)
		wake_up_all(&lifetime->idle);
}

static void haptic_vma_open(struct vm_area_struct *vma)
{
	struct haptic_lifetime *lifetime = vma->vm_private_data;

	mutex_lock(&lifetime->lock);
	refcount_inc(&lifetime->refs);
	lifetime->vma_refs++;
	mutex_unlock(&lifetime->lock);
}

static void haptic_vma_close(struct vm_area_struct *vma)
{
	struct haptic_lifetime *lifetime = vma->vm_private_data;
	unsigned long pages = 0;

	mutex_lock(&lifetime->lock);
	WARN_ON(!lifetime->vma_refs);
	if (lifetime->vma_refs)
		lifetime->vma_refs--;
	if (!lifetime->vma_refs && lifetime->dying) {
		pages = lifetime->retired_pages;
		lifetime->retired_pages = 0;
	}
	mutex_unlock(&lifetime->lock);

	haptic_release_fifo_pages(pages);
	haptic_lifetime_put(lifetime);
}

static const struct vm_operations_struct haptic_vma_operations = {
	.open = haptic_vma_open,
	.close = haptic_vma_close,
};

void haptic_lifetime_attach_vma(struct haptic_lifetime *lifetime,
				struct vm_area_struct *vma)
{
	mutex_lock(&lifetime->lock);
	refcount_inc(&lifetime->refs);
	lifetime->vma_refs++;
	vma->vm_private_data = lifetime;
	vma->vm_ops = &haptic_vma_operations;
	mutex_unlock(&lifetime->lock);
}

void haptic_lifetime_block_file_access(void *state)
{
	struct haptic_lifetime *lifetime;

	atomic_set(&haptic_shutdown, 1);
	mutex_lock(&haptic_lifetime_registry_lock);
	if (READ_ONCE(g_aw_haptic) == state)
		WRITE_ONCE(g_aw_haptic, NULL);
	lifetime = active_lifetime;
	if (lifetime && lifetime->state == state) {
		mutex_lock(&lifetime->lock);
		lifetime->dying = true;
		mutex_unlock(&lifetime->lock);
	} else {
		lifetime = NULL;
	}
	mutex_unlock(&haptic_lifetime_registry_lock);

	/* misc_open uses the same core mutex, so this also drains in-flight opens. */
	misc_deregister(&richtap_misc);
	if (lifetime)
		wait_event(lifetime->idle, READ_ONCE(lifetime->active_ops) == 0);
}

void haptic_lifetime_retire_state(void *state)
{
	struct haptic_lifetime *lifetime;
	unsigned long pages;
	bool defer_pages = false;

	mutex_lock(&haptic_lifetime_registry_lock);
	lifetime = active_lifetime;
	if (lifetime && lifetime->state == state) {
		mutex_lock(&lifetime->lock);
		WARN_ON(lifetime->active_ops);
		pages = *(unsigned long *)((char *)state + 0x610);
		*(unsigned long *)((char *)state + 0x610) = 0;
		lifetime->state = NULL;
		if (lifetime->vma_refs && pages) {
			lifetime->retired_pages = pages;
			defer_pages = true;
		}
		mutex_unlock(&lifetime->lock);
		active_lifetime = NULL;
	} else {
		lifetime = NULL;
		pages = *(unsigned long *)((char *)state + 0x610);
		*(unsigned long *)((char *)state + 0x610) = 0;
	}
	mutex_unlock(&haptic_lifetime_registry_lock);

	if (!defer_pages)
		haptic_release_fifo_pages(pages);
	if (lifetime)
		haptic_lifetime_put(lifetime); /* device ownership */
}

void haptic_lifetime_wait_ram_callbacks(void)
{
	wait_event(haptic_ram_callbacks_idle,
		   atomic_read(&haptic_ram_callbacks) == 0);
}

int haptic_lifetime_request_ram_firmware(void *state)
{
	struct haptic_ram_request *request;
	struct device *device = *(struct device **)((char *)state + 0x320);
	int ret;

	if (haptic_lifetime_is_shutting_down())
		return -ESHUTDOWN;
	request = kmalloc(sizeof(*request), GFP_KERNEL);
	if (!request)
		return -ENOMEM;
	request->state = state;
	atomic_inc(&haptic_ram_callbacks);
	if (haptic_lifetime_is_shutting_down()) {
		if (atomic_dec_and_test(&haptic_ram_callbacks))
			wake_up_all(&haptic_ram_callbacks_idle);
		kfree(request);
		return -ESHUTDOWN;
	}

	ret = request_firmware_nowait(THIS_MODULE, true, aw_ram_name, device,
				      GFP_KERNEL, request,
				      haptic_ram_firmware_complete);
	if (ret) {
		if (atomic_dec_and_test(&haptic_ram_callbacks))
			wake_up_all(&haptic_ram_callbacks_idle);
		kfree(request);
	}
	return ret;
}

static void haptic_ram_firmware_complete(const struct firmware *firmware,
					 void *context)
{
	struct haptic_ram_request *request = context;

	mutex_lock(&haptic_ram_callback_lock);
	if (haptic_lifetime_is_shutting_down())
		release_firmware(firmware);
	else
		ram_load(firmware, request->state);
	mutex_unlock(&haptic_ram_callback_lock);

	kfree(request);
	if (atomic_dec_and_test(&haptic_ram_callbacks))
		wake_up_all(&haptic_ram_callbacks_idle);
}

void haptic_lifetime_irq_stop_lock(void)
{
	mutex_lock(&haptic_irq_stop_lock);
}

void haptic_lifetime_irq_stop_unlock(void)
{
	mutex_unlock(&haptic_irq_stop_lock);
}

irqreturn_t irq_handle(int irq, void *data)
{
	irqreturn_t ret;

	if (haptic_lifetime_is_shutting_down())
		return IRQ_HANDLED;
	mutex_lock(&haptic_irq_stop_lock);
	if (haptic_lifetime_is_shutting_down())
		ret = IRQ_HANDLED;
	else
		ret = irq_handle_stock_exact(irq, data);
	mutex_unlock(&haptic_irq_stop_lock);
	return ret;
}

void vibrator_work_routine(struct work_struct *work)
{
	if (!haptic_lifetime_is_shutting_down())
		vibrator_work_routine_stock_exact(work);
}

void rtp_work_routine(struct work_struct *work)
{
	if (!haptic_lifetime_is_shutting_down())
		rtp_work_routine_stock_exact(work);
}

void audio_work_routine(struct work_struct *work)
{
	if (!haptic_lifetime_is_shutting_down())
		audio_work_routine_stock_exact(work);
}

long richtap_file_unlocked_ioctl(struct file *file, unsigned int command,
				 unsigned long argument)
{
	struct haptic_lifetime *lifetime;
	struct file proxy = {};
	void *state;
	long ret;

	ret = haptic_lifetime_enter_file(file, &lifetime, &state);
	if (ret)
		return ret;
	proxy.private_data = state;
	ret = richtap_file_unlocked_ioctl_stock_exact(&proxy, command, argument);
	haptic_lifetime_exit_file(lifetime);
	return ret;
}
