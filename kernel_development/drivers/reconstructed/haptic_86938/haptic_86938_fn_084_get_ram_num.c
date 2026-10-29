// SPDX-License-Identifier: GPL-2.0
#include <linux/compiler.h>
#include <linux/mutex.h>
#include <linux/printk.h>
#include <linux/types.h>

struct aw_haptic;

typedef void (*aw_haptic_callback)(struct aw_haptic *haptic);
typedef void (*aw_haptic_flag_callback)(struct aw_haptic *haptic, u8 enable);
typedef void (*aw_haptic_first_wave_callback)(struct aw_haptic *haptic,
						      char *first_wave_addr);

void get_ram_num(struct aw_haptic *haptic)
{
	u16 first_wave_addr = 0;
	u32 ram_num;
	u32 address;

	if (unlikely(!(*(u8 *)((u8 *)haptic + 6) & 1))) {
		printk(KERN_ERR "[%s][%04d]%s: ram init faild, ram_num = 0!\n",
		       "haptic_hv", 0x268, "get_ram_num");
		return;
	}

	mutex_lock((struct mutex *)((u8 *)haptic + 0x2f0));
	((aw_haptic_callback)(*(void ***)((u8 *)haptic + 0x5c8))[7])(haptic);
	((aw_haptic_flag_callback)(*(void ***)((u8 *)haptic + 0x5c8))[13])(
		haptic, 1);
	((aw_haptic_callback)(*(void ***)((u8 *)haptic + 0x5c8))[31])(haptic);
	((aw_haptic_first_wave_callback)(
		*(void ***)((u8 *)haptic + 0x5c8))[38])(haptic,
							      (char *)&first_wave_addr);

	address = (u16)((first_wave_addr >> 8) | (first_wave_addr << 8));
	ram_num = address + ~*(u32 *)((u8 *)haptic + 0x458);
	ram_num >>= 2;
	*(u8 *)((u8 *)haptic + 0x45c) = (u8)ram_num;
	printk(KERN_INFO "[%s][%04d]%s: first wave addr = 0x%04x\n",
	       "haptic_hv", 0x277, "get_ram_num", address);
	printk(KERN_INFO "[%s][%04d]%s: ram_num = %d\n",
	       "haptic_hv", 0x278, "get_ram_num",
	       *(u8 *)((u8 *)haptic + 0x45c));
	((aw_haptic_flag_callback)(*(void ***)((u8 *)haptic + 0x5c8))[13])(
		haptic, 0);
	mutex_unlock((struct mutex *)((u8 *)haptic + 0x2f0));
}
