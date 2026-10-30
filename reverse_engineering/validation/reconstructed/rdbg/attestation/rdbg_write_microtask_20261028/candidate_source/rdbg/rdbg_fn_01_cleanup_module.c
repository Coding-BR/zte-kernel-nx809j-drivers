// SPDX-License-Identifier: GPL-2.0-only
#include <linux/device.h>
#include <linux/fs.h>
#include <linux/init.h>
#include <linux/slab.h>

#include "rdbg_reconstruction_layout.h"

#define RDBG_CLIENT_STRIDE 0x1c8
#define RDBG_CLIENT_DEVICE_CREATED_OFFSET 0x58

/*
 * Stock P-Code and assembly show a signed long slot index, a byte stride
 * through the client array, and a device-created byte at offset 0x58.
 * The global data offsets are asserted in rdbg_reconstruction_layout.h.
 */
void __exit cleanup_module(void)
{
	long slot = 0;
	long client_offset = RDBG_CLIENT_DEVICE_CREATED_OFFSET;

	if (g_rdbg_instance.count > 0) {
		do {
			if (*((u8 *)g_rdbg_instance.clients + client_offset) == 1) {
				device_destroy(g_rdbg_instance.class,
					       (g_rdbg_instance.devt & 0xfff00000U) |
					       (unsigned int)slot);
			}
			slot++;
			client_offset += RDBG_CLIENT_STRIDE;
		} while (slot < g_rdbg_instance.count);
	}

	class_destroy(g_rdbg_instance.class);
	cdev_del(&g_rdbg_instance.cdev);
	unregister_chrdev_region(g_rdbg_instance.devt, 1);
	kfree(g_rdbg_instance.clients);
}
