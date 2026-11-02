// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>
#include <linux/mutex.h>

struct aw_haptic;
typedef void (*upload_lra_fn)(struct aw_haptic *haptic, unsigned int mode);
typedef int (*get_f0_fn)(struct aw_haptic *haptic);

ssize_t f0_show(struct device *dev, struct device_attribute *attr, char *buf)
{
	void *driver_data = *(void **)((char *)dev + 0x98);
	struct aw_haptic *haptic =
		(struct aw_haptic *)((char *)driver_data - 0xa8);
	upload_lra_fn upload_lra;
	get_f0_fn get_f0;
	unsigned int lra_f0;
	unsigned int cont_f0;

	(void)attr;
	mutex_lock((struct mutex *)((char *)driver_data + 0x248));
	upload_lra = *(upload_lra_fn *)((char *)*(void **)
			((char *)driver_data + 0x520) + 0x118);
	upload_lra(haptic, 0U);
	get_f0 = *(get_f0_fn *)*(void **)((char *)driver_data + 0x520);
	(void)get_f0(haptic);
	upload_lra = *(upload_lra_fn *)((char *)*(void **)
			((char *)driver_data + 0x520) + 0x118);
	upload_lra(haptic, 1U);
	mutex_unlock((struct mutex *)((char *)driver_data + 0x248));
	lra_f0 = *(unsigned int *)((char *)driver_data - 0x48);
	cont_f0 = *(unsigned int *)((char *)driver_data - 0x38);
	return snprintf(buf, 0x1000, "lra_f0 = %d cont_f0 = %d\n",
			lra_f0, cont_f0);
}
