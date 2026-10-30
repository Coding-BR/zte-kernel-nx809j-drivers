// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>
#include <linux/mutex.h>
#include <linux/printk.h>
#include <linux/types.h>

struct aw_haptic;

typedef void (*aw8693x_set_wav_seq_fn)(struct aw_haptic *haptic, u8 index,
					       u8 wav);

ssize_t loop_store(struct device *dev, struct device_attribute *attr,
		   const char *buf, size_t count)
{
	u8 *driver_data = *(u8 **)((char *)dev + 0x98);
	u32 parsed_values[2] = { 0, 0 };
	int parsed;

	(void)attr;
	parsed = sscanf(buf, "%x %x", (u32 *)(void *)parsed_values,
			(u32 *)((unsigned long)(void *)parsed_values | 4UL));
	if (parsed == 2) {
		printk(KERN_INFO "[%s][%04d]%s: seq%d loop=0x%02X\n",
		       "haptic_hv", 0x9f5, "loop_store", parsed_values[0],
		       parsed_values[1]);
		mutex_lock((struct mutex *)(driver_data + 0x248));
		{
			u32 index = parsed_values[0];
			u32 loop;

			asm goto("cmp %w[index], #7\n\t"
				 "b.hi %l[invalid_index]"
				 :
				 : [index] "r" (index)
				 : "cc"
				 : invalid_index);
			loop = parsed_values[1];
			*(driver_data + index - 0x82) = (u8)loop;
			(*(aw8693x_set_wav_seq_fn *)
			 ((char *)*(void **)(driver_data + 0x520) + 0xc8))
				((struct aw_haptic *)(driver_data - 0xa8),
				 (u8)index, (u8)loop);
		}
		mutex_unlock((struct mutex *)(driver_data + 0x248));
	}
	return count;

invalid_index:
	asm volatile("brk #0x5512");
	__builtin_unreachable();
}
