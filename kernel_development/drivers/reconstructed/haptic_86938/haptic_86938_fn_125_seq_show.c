// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>
#include <linux/types.h>

struct aw_haptic;

typedef void (*aw8693x_get_wav_seq_fn)(struct aw_haptic *haptic,
					       unsigned int count);

ssize_t seq_show(struct device *dev, struct device_attribute *attr, char *buf)
{
	u8 *driver_data = *(u8 **)((char *)dev + 0x98);
	void *function_table = *(void **)(driver_data + 0x520);
	aw8693x_get_wav_seq_fn get_wav_seq =
		*(aw8693x_get_wav_seq_fn *)((char *)function_table + 0x120);
	struct aw_haptic *haptic = (struct aw_haptic *)(driver_data - 0xa8);
	ssize_t total;

	(void)attr;
	get_wav_seq(haptic, 8U);
	total = snprintf(buf, 0x1000, "seq%d = %d\n", 1,
			*(u8 *)(driver_data - 0x8a));
	total += snprintf(buf + total, 0x1000 - total, "seq%d = %d\n", 2,
			  *(u8 *)(driver_data - 0x89));
	total += snprintf(buf + total, 0x1000 - total, "seq%d = %d\n", 3,
			  *(u8 *)(driver_data - 0x88));
	total += snprintf(buf + total, 0x1000 - total, "seq%d = %d\n", 4,
			  *(u8 *)(driver_data - 0x87));
	total += snprintf(buf + total, 0x1000 - total, "seq%d = %d\n", 5,
			  *(u8 *)(driver_data - 0x86));
	total += snprintf(buf + total, 0x1000 - total, "seq%d = %d\n", 6,
			  *(u8 *)(driver_data - 0x85));
	total += snprintf(buf + total, 0x1000 - total, "seq%d = %d\n", 7,
			  *(u8 *)(driver_data - 0x84));
	return total + snprintf(buf + total, 0x1000 - total,
				"seq%d = %d\n", 8,
				*(u8 *)(driver_data - 0x83));
}
