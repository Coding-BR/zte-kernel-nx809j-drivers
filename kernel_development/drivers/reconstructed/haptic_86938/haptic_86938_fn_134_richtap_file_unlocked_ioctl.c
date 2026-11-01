// SPDX-License-Identifier: GPL-2.0
/* Readable C semantic reference for richtap_file_unlocked_ioctl; Kbuild uses its verified exact assembly island. */
#include <linux/device.h>
#include <linux/errno.h>
#include <linux/fs.h>
#include <linux/kernel.h>
#include <linux/mutex.h>
#include <linux/types.h>
#include <linux/uaccess.h>
#include <linux/workqueue.h>

struct aw_haptic;

typedef void (*aw_haptic_op_fn)(struct aw_haptic *haptic);
typedef void (*aw_haptic_u8_op_fn)(struct aw_haptic *haptic, u8 value);
typedef void (*aw_haptic_uint_op_fn)(struct aw_haptic *haptic,
				     unsigned int value);
typedef void (*aw_haptic_rtp_data_fn)(struct aw_haptic *haptic, u8 *data,
				      u32 length);

extern void richtap_clean_buf(struct aw_haptic *haptic);
extern bool richtap_rtp_start(struct aw_haptic *haptic);

#define HAPTIC_OP(haptic, offset, type) \
	(*(type *)((char *)*(void **)((char *)(haptic) + 0x5c8) + (offset)))

long richtap_file_unlocked_ioctl(struct file *file, unsigned int command,
				 unsigned long argument)
{
	struct aw_haptic *haptic = file->private_data;
	struct mutex *lock;
	struct device *device;
	struct workqueue_struct *workqueue;
	struct work_struct *work;
	u8 *rtp_buffer;
	unsigned long not_copied;
	int value = 0;
	int rtp_length;

	printk(KERN_INFO "%s: cmd=0x%x, arg=0x%lx\n", __func__, command,
	       argument);

	if ((int)command < 0x5209) {
		if (command == 0x5203) {
			value = 5;
			if (copy_to_user((void __user *)argument, &value, sizeof(value)))
				return -EFAULT;
		} else if (command == 0x5205) {
			HAPTIC_OP(haptic, 0x88, aw_haptic_u8_op_fn)(
				haptic, argument > 0x7f ? 0x80 : argument);
		} else if (command != 0x5206) {
			goto unknown_command;
		}
		return 0;
	}

	if ((int)command < 0x5211) {
		if (command == 0x5209) {
			lock = (struct mutex *)((char *)haptic + 0x2f0);
			mutex_lock(lock);
			HAPTIC_OP(haptic, 0x38, aw_haptic_op_fn)(haptic);
			mutex_unlock(lock);

			rtp_buffer = *(u8 **)((char *)haptic + 0x608);
			not_copied = copy_from_user(rtp_buffer,
						    (const void __user *)argument,
						    16000);
			if (not_copied) {
				return -EFAULT;
			}

			rtp_length = *(int *)rtp_buffer;
			if (rtp_length > 0x3e7c) {
				device = *(struct device **)((char *)haptic + 0x320);
				dev_err(device, "rtp mode date len error %d\n",
					rtp_length);
				return -EINVAL;
			}

			HAPTIC_OP(haptic, 0x118, aw_haptic_uint_op_fn)(haptic, 2);
			HAPTIC_OP(haptic, 0xa0, aw_haptic_u8_op_fn)(
				haptic, *(u32 *)((char *)haptic + 0x30));
			if (richtap_rtp_start(haptic) & 1)
				HAPTIC_OP(haptic, 0xd0, aw_haptic_rtp_data_fn)(
					haptic, rtp_buffer + 4, rtp_length);
			return 0;
		}
		if (command != 0x520a)
			goto unknown_command;

		printk(KERN_INFO "[%s][%04d]%s: RICHTAP_STREAM_MODE\n",
		       "haptic_hv", 0x5d9, __func__);
		richtap_clean_buf(haptic);
		lock = (struct mutex *)((char *)haptic + 0x2f0);
		mutex_lock(lock);
		HAPTIC_OP(haptic, 0xf0, aw_haptic_op_fn)(haptic);
		HAPTIC_OP(haptic, 0x38, aw_haptic_op_fn)(haptic);
		mutex_unlock(lock);
		HAPTIC_OP(haptic, 0x110, aw_haptic_u8_op_fn)(haptic, 0);
		*(u32 *)((char *)haptic + 0x6bc) = 0;
		HAPTIC_OP(haptic, 0x118, aw_haptic_uint_op_fn)(haptic, 2);
		HAPTIC_OP(haptic, 0xa0, aw_haptic_u8_op_fn)(
			haptic, *(u32 *)((char *)haptic + 0x30));
		workqueue = *(struct workqueue_struct **)((char *)haptic + 0x448);
		work = (struct work_struct *)((char *)haptic + 0x648);
		queue_work_on(0x20, workqueue, work);
		return 0;
	}

	if (command == 0x5211) {
		value = *(int *)((char *)haptic + 0x60);
		if (copy_to_user((void __user *)argument, &value, sizeof(value)))
			return -EFAULT;
		return 0;
	}
	if (command == 0x5212) {
		workqueue = *(struct workqueue_struct **)((char *)haptic + 0x448);
		work = (struct work_struct *)((char *)haptic + 0x668);
		queue_work_on(0x20, workqueue, work);
		return 0;
	}
	if (command == 0x5213) {
		printk(KERN_INFO "[%s][%04d]%s: TIKTAP_RTP_MIX_MODE\n",
		       "haptic_hv", 0x5f2, __func__);
		return 0;
	}

unknown_command:
	device = *(struct device **)((char *)haptic + 0x320);
	dev_err(device, "%s, unknown cmd\n", __func__);
	return 0;
}
