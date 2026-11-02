// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>

struct aw_haptic;
typedef void (*get_wav_seq_fn)(struct aw_haptic *haptic, unsigned int count);

ssize_t index_show(struct device *dev, struct device_attribute *attr, char *buf)
{
	void *driver_data = *(void **)((char *)dev + 0x98);
	void *function_table = *(void **)((char *)driver_data + 0x520);
	get_wav_seq_fn get_wav_seq =
		*(get_wav_seq_fn *)((char *)function_table + 0x120);
	struct aw_haptic *haptic =
		(struct aw_haptic *)((char *)driver_data - 0xa8);
	unsigned int index;

	(void)attr;
	get_wav_seq(haptic, 1U);
	index = (unsigned int)*(unsigned char *)((char *)driver_data - 0x8a);
	*(unsigned int *)((char *)driver_data - 0x64) = index;
	return snprintf(buf, 0x1000, "index = %d\n", index);
}
