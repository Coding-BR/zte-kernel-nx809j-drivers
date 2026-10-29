// SPDX-License-Identifier: GPL-2.0
#include <linux/types.h>
#include <asm/byteorder.h>
#include <linux/firmware.h>
#include <linux/gfp_types.h>
#include <linux/kernel.h>
#include <linux/printk.h>
#include <linux/slab.h>
#include <linux/workqueue.h>

struct aw_haptic;

struct aw_haptic_container {
	int len;
	u8 data[];
};

typedef int (*aw_container_update_fn)(struct aw_haptic *haptic,
					      struct aw_haptic_container *container);

extern char *aw_ram_name;
extern void get_ram_num(struct aw_haptic *haptic);

void ram_load(const struct firmware *firmware, void *context)
{
	static u8 load_cont;
	struct aw_haptic *haptic = context;
	struct aw_haptic_container *container;
	aw_container_update_fn *functions;
	u32 checksum = 0;
	int i;
	int result;

	load_cont++;
	if (!firmware) {
		printk(KERN_ERR "[%s][%04d]%s: failed to read %s\n",
		       "haptic_hv", 0x6e9, "ram_load", aw_ram_name);
		release_firmware(firmware);
		if (load_cont > 0x14)
			return;
		queue_delayed_work_on(
			0x20, system_wq,
			(struct delayed_work *)((u8 *)haptic + 0x3c0), 0xfa);
		printk(KERN_INFO "[%s][%04d]%s: start hrtimer:load_cont%d\n",
		       "haptic_hv", 0x6ef, "ram_load", load_cont);
		return;
	}

	printk(KERN_INFO "[%s][%04d]%s: loaded %s - size: %zu\n",
	       "haptic_hv", 0x6f4, "ram_load", aw_ram_name, firmware->size);
	if (firmware->size >= 3) {
		for (i = 2; i < firmware->size; i++)
			checksum += firmware->data[i];
		checksum &= 0xffff;
	}

	if (checksum != be16_to_cpu(*(__be16 *)firmware->data)) {
		printk(KERN_ERR "[%s][%04d]%s: check sum err: check_sum=0x%04x\n",
		       "haptic_hv", 0x6f9, "ram_load", checksum);
		release_firmware(firmware);
		return;
	}

	printk(KERN_INFO "[%s][%04d]%s: check sum pass : 0x%04x\n",
	       "haptic_hv", 0x6fd, "ram_load", checksum);
	*(u32 *)((u8 *)haptic + 0x454) = checksum;
	container = kmalloc(firmware->size + sizeof(*container),
			    GFP_KERNEL | __GFP_ZERO);
	if (!container) {
		release_firmware(firmware);
		printk(KERN_ERR "[%s][%04d]%s: Error allocating memory\n",
		       "haptic_hv", 0x704, "ram_load");
		return;
	}

	container->len = firmware->size;
	memcpy(container->data, firmware->data, firmware->size);
	release_firmware(firmware);

	functions = *(aw_container_update_fn **)((u8 *)haptic + 0x5c8);
	result = functions[6](haptic, container);
	if (!result) {
		*(u8 *)((u8 *)haptic + 6) = 1;
		*(u32 *)((u8 *)haptic + 0x450) =
			container->len - *(u8 *)((u8 *)haptic + 0x45e);
		printk(KERN_INFO "[%s][%04d]%s: ram firmware update complete!\n",
		       "haptic_hv", 0x711, "ram_load");
		get_ram_num(haptic);
	} else {
		printk(KERN_ERR "[%s][%04d]%s: ram firmware update failed!\n",
		       "haptic_hv", 0x70c, "ram_load");
	}
	kfree(container);
}
