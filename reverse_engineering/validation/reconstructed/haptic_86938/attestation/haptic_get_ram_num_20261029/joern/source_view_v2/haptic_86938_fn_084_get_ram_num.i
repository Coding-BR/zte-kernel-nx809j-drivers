/* Analysis-only declarations for partial recovered kernel translation units. */
#ifndef NX809J_JOERN_KERNEL_COMPAT_H
#define NX809J_JOERN_KERNEL_COMPAT_H
#define __user
#define __fastcall
#define __int8 char
#define __int16 short
#define __int32 int
#define __int64 long long
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef unsigned long long u64;
typedef unsigned long size_t;
typedef long ssize_t;
typedef long long loff_t;
typedef _Bool bool;
struct file;
struct inode;
struct kobject;
struct device;
struct platform_device;
#endif

#line 1 "haptic_86938_fn_084_get_ram_num.c"
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
