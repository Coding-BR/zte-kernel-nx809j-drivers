// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>
#include <linux/string.h>
#include <linux/types.h>

struct aw_haptic;
typedef void (*aw_haptic_action_fn)(struct aw_haptic *haptic);
typedef void (*aw_haptic_mode_fn)(struct aw_haptic *haptic,
				  char mode);
typedef long (*aw_haptic_get_ram_data_fn)(struct aw_haptic *haptic,
					  u8 *ram_data);

ssize_t ram_update_show(struct device *dev, struct device_attribute *attr,
			char *buf)
{
	void *driver_data = *(void **)((char *)dev + 0x98);
	struct aw_haptic *haptic =
		(struct aw_haptic *)((char *)driver_data - 0xa8);
	aw_haptic_action_fn prepare_ram;
	aw_haptic_action_fn finish_ram;
	aw_haptic_mode_fn set_ram_mode;
	aw_haptic_get_ram_data_fn get_ram_data;
	long ram_length;
	long ram_offset;
	int newline_length;

	(void)attr;
	prepare_ram = *(aw_haptic_action_fn *)((char *)*(void **)
			((char *)driver_data + 0x520) + 0x38);
	prepare_ram(haptic);
	set_ram_mode = *(aw_haptic_mode_fn *)((char *)*(void **)
			((char *)driver_data + 0x520) + 0x68);
	set_ram_mode(haptic, 1U);
	finish_ram = *(aw_haptic_action_fn *)((char *)*(void **)
			((char *)driver_data + 0x520) + 0xf8);
	finish_ram(haptic);
	strncpy(buf, "aw_haptic_ram:\n", 0x10);
	get_ram_data = *(aw_haptic_get_ram_data_fn *)((char *)*(void **)
			((char *)driver_data + 0x520) + 0x140);
	ram_length = get_ram_data(haptic, (u8 *)buf);
	ram_offset = ram_length + 0xf;
	newline_length = snprintf(buf + ram_offset,
				  0xff1 - ram_length, "\n");
	ram_offset += newline_length;
	set_ram_mode = *(aw_haptic_mode_fn *)((char *)*(void **)
			((char *)driver_data + 0x520) + 0x68);
	set_ram_mode(haptic, 0U);
	return ram_offset;
}
