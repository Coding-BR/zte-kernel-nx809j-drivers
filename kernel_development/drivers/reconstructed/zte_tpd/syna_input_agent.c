#include "defs.h"
#include <linux/miscdevice.h>
#include <linux/refcount.h>
#include <linux/poll.h>
#include <linux/err.h>

#define SYNA_INPUT_AGENT_MISC_OFFSET 0x4a0
#define SYNA_INPUT_AGENT_BUFFER_OFFSET 0x460

struct syna_input_buffer_owner {
	struct syna_tcm *tcm;
	void *buffer;
	refcount_t refs;
};

/* mmap retains vm_file, so release drops this ref after the last VMA closes. */
struct syna_input_file_context {
	struct syna_tcm *tcm;
	unsigned long generation;
	struct syna_input_buffer_owner *owner;
};

static DEFINE_MUTEX(syna_input_owner_lock);
static DEFINE_MUTEX(syna_input_agent_misc_lock);
static struct syna_input_buffer_owner *syna_input_owner;
static DECLARE_WAIT_QUEUE_HEAD(syna_input_agent_poll_wait);

static void syna_input_owner_put(struct syna_input_buffer_owner *owner)
{
	if (owner && refcount_dec_and_test(&owner->refs)) {
		kfree(owner->buffer);
		kfree(owner);
	}
}

static int syna_input_owner_get(struct syna_tcm *tcm,
				struct syna_input_buffer_owner **result)
{
	struct syna_input_buffer_owner *owner;

	mutex_lock(&syna_input_owner_lock);
	owner = syna_input_owner;
	if (!owner) {
		owner = kzalloc(sizeof(*owner), GFP_KERNEL);
		if (!owner) {
			mutex_unlock(&syna_input_owner_lock);
			return -ENOMEM;
		}
		owner->tcm = tcm;
		owner->buffer = *(void **)((char *)tcm +
					   SYNA_INPUT_AGENT_BUFFER_OFFSET);
		refcount_set(&owner->refs, 1); /* device lifetime */
		syna_input_owner = owner;
	}
	if (owner->tcm != tcm) {
		mutex_unlock(&syna_input_owner_lock);
		return -EBUSY;
	}
	refcount_inc(&owner->refs); /* file lifetime, including VMAs */
	*result = owner;
	mutex_unlock(&syna_input_owner_lock);
	return 0;
}

void syna_input_agent_wake_pollers(void)
{
	wake_up_all(&syna_input_agent_poll_wait);
}

void syna_input_agent_deregister_misc(struct syna_tcm *tcm)
{
	struct miscdevice *misc;
	struct device *this_device;

	if (!tcm)
		return;
	misc = (struct miscdevice *)((char *)tcm +
				    SYNA_INPUT_AGENT_MISC_OFFSET);
	mutex_lock(&syna_input_agent_misc_lock);
	this_device = READ_ONCE(misc->this_device);
	if (!IS_ERR_OR_NULL(this_device)) {
		misc_deregister(misc);
		WRITE_ONCE(misc->this_device, NULL);
	}
	mutex_unlock(&syna_input_agent_misc_lock);
}

void syna_input_agent_retire(struct syna_tcm *tcm)
{
	struct syna_input_buffer_owner *owner = NULL;

	if (!tcm)
		return;
	mutex_lock(&syna_input_owner_lock);
	if (syna_input_owner && syna_input_owner->tcm == tcm) {
		owner = syna_input_owner;
		syna_input_owner = NULL;
		owner->tcm = NULL;
		*(void **)((char *)tcm + SYNA_INPUT_AGENT_BUFFER_OFFSET) = NULL;
	}
	mutex_unlock(&syna_input_owner_lock);
	syna_input_owner_put(owner); /* outstanding files keep mapped pages alive */
}

static struct syna_input_file_context *syna_input_context(struct file *file)
{
	return file ? file->private_data : NULL;
}

static bool syna_input_operation_begin(struct file *file,
				       struct syna_input_file_context **context,
				       struct syna_tcm **tcm)
{
	struct syna_input_file_context *ctx = syna_input_context(file);

	if (!ctx || !syna_cdev_operation_begin(ctx->generation, tcm))
		return false;
	if (*tcm != ctx->tcm) {
		syna_cdev_operation_end();
		return false;
	}
	*context = ctx;
	return true;
}

int syna_input_agent_open(struct inode *inode, struct file *file)
{
	struct syna_input_file_context *ctx;
	struct syna_input_buffer_owner *owner;
	struct syna_tcm *tcm;
	struct miscdevice *misc;
	unsigned long generation;
	int ret;

	misc = file->private_data;
	if (!syna_cdev_misc_operation_begin(misc, &tcm, &generation))
		return -ENODEV;
	ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
	if (!ctx) {
		ret = -ENOMEM;
		goto out_operation;
	}
	ret = syna_input_owner_get(tcm, &owner);
	if (ret)
		goto out_context;
	ret = syna_open(inode, file);
	if (ret)
		goto out_owner;
	ctx->tcm = tcm;
	ctx->generation = generation;
	ctx->owner = owner;
	file->private_data = ctx;
	syna_cdev_operation_end();
	return 0;

out_owner:
	syna_input_owner_put(owner);
out_context:
	kfree(ctx);
out_operation:
	file->private_data = NULL;
	syna_cdev_operation_end();
	return ret;
}

int syna_input_agent_release(struct inode *inode, struct file *file)
{
	struct syna_input_file_context *ctx = syna_input_context(file);
	int ret = 0;

	if (!ctx)
		return 0;
	ret = syna_release(inode, file);
	file->private_data = NULL;
	syna_input_owner_put(ctx->owner);
	kfree(ctx);
	return ret;
}

__poll_t syna_input_agent_poll(struct file *file,
			       struct poll_table_struct *wait)
{
	struct syna_input_file_context *ctx;
	struct syna_tcm *tcm;
	__poll_t mask;

	if (!syna_input_operation_begin(file, &ctx, &tcm))
		return EPOLLHUP | EPOLLERR;
	poll_wait(file, &syna_input_agent_poll_wait, wait);
	mask = READ_ONCE(tcm->frame_available) ? POLLIN | POLLRDNORM : 0;
	if (!syna_cdev_lifecycle_is_online())
		mask = EPOLLHUP | EPOLLERR;
	syna_cdev_operation_end();
	return mask;
}

long syna_input_agent_ioctl(struct file *file, unsigned int cmd,
			    unsigned long arg)
{
	struct syna_input_file_context *ctx;
	struct syna_tcm *tcm;
	struct file shadow = { .private_data = NULL };
	long ret;

	if (!syna_input_operation_begin(file, &ctx, &tcm))
		return -ENODEV;
	shadow.private_data = tcm;
	ret = syna_ioctl(&shadow, cmd, arg);
	syna_cdev_operation_end();
	return ret;
}

int syna_input_agent_mmap(struct file *file, struct vm_area_struct *vma)
{
	struct syna_input_file_context *ctx;
	struct syna_tcm *tcm;
	struct file shadow = { .private_data = NULL };
	int ret;

	if (!syna_input_operation_begin(file, &ctx, &tcm))
		return -ENODEV;
	if (!ctx->owner || !ctx->owner->buffer) {
		ret = -ENODEV;
		goto out_operation;
	}
	shadow.private_data = tcm;
	ret = syna_mmap(&shadow, vma);
out_operation:
	syna_cdev_operation_end();
	return ret;
}
