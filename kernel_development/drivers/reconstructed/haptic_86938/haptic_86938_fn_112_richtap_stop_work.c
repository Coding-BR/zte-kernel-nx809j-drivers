// SPDX-License-Identifier: GPL-2.0
#include <linux/mutex.h>
#include <linux/types.h>
#include <linux/workqueue.h>

struct aw_haptic;

typedef void (*aw_haptic_op_fn)(struct aw_haptic *haptic);
typedef void (*aw_haptic_u8_op_fn)(struct aw_haptic *haptic, u8 value);

void richtap_stop_work(struct work_struct *work)
{
	char *work_address = (char *)work;
	struct aw_haptic *haptic =
		(struct aw_haptic *)(work_address - 0x668);
	struct mutex *mutex = (struct mutex *)(work_address - 0x378);
	void *operations;
	aw_haptic_op_fn operation_f0;
	aw_haptic_op_fn operation_38;
	aw_haptic_u8_op_fn operation_110;

	mutex_lock(mutex);
	operations = *(void **)(work_address - 0xa0);
	operation_f0 = *(aw_haptic_op_fn *)((char *)operations + 0xf0);
	operation_f0(haptic);
	operations = *(void **)(work_address - 0xa0);
	operation_38 = *(aw_haptic_op_fn *)((char *)operations + 0x38);
	operation_38(haptic);
	mutex_unlock(mutex);
	operations = *(void **)(work_address - 0xa0);
	operation_110 = *(aw_haptic_u8_op_fn *)((char *)operations + 0x110);
	operation_110(haptic, 0);
	*(u32 *)(work_address + 0x54) = 0;
}
