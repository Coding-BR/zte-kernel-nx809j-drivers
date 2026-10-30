// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>
#include <linux/mutex.h>
#include <linux/printk.h>
#include <linux/types.h>

struct aw_haptic;

typedef void (*aw8693x_set_wav_seq_fn)(struct aw_haptic *haptic, u8 index,
					       u8 wav);

ssize_t seq_store(struct device *dev, struct device_attribute *attr,
		  const char *buf, size_t count)
{
	u8 *driver_data = *(u8 **)((char *)dev + 0x98);
	u32 parsed_values[2] = { 0, 0 };
	int parsed;

	(void)attr;
	parsed = sscanf(buf, "%x %x", &parsed_values[0],
			(u32 *)((unsigned long)parsed_values | 4UL));
	if (parsed == 2) {
		u32 index = parsed_values[0];
		u32 loop = parsed_values[1];

		asm goto("cmp %w[index], #7\n\t"
			 "b.hi %l[out_of_range]"
			 :
			 : [index] "r" (index)
			 : "cc"
			 : out_of_range);
		if (loop <= *(u8 *)(driver_data + 0x3b4))
			goto valid_pair;

out_of_range:
		printk(KERN_ERR "[%s][%04d]%s: input value out of range!\n",
		       "haptic_hv", 0x9d3, "seq_store");
		goto parsed_done;

valid_pair:
		printk(KERN_INFO "[%s][%04d]%s: seq%d=0x%02X\n",
		       "haptic_hv", 0x9d6, "seq_store", index, loop);
		mutex_lock((struct mutex *)(driver_data + 0x248));
		{
			u32 stored_index = parsed_values[0];
			u32 stored_loop;

			asm goto("cmp %w[index], #7\n\t"
				 "b.hi %l[invalid_index]"
				 :
				 : [index] "r" (stored_index)
				 : "cc"
				 : invalid_index);
			stored_loop = parsed_values[1];
			*(driver_data + stored_index - 0x8a) = (u8)stored_loop;
			(*(aw8693x_set_wav_seq_fn *)
			 ((char *)*(void **)(driver_data + 0x520) + 0xc0))
				((struct aw_haptic *)(driver_data - 0xa8),
				 (u8)stored_index, (u8)stored_loop);
		}
		mutex_unlock((struct mutex *)(driver_data + 0x248));
	}

parsed_done:
	return count;

invalid_index:
	asm volatile("brk #0x5512");
	__builtin_unreachable();
}
