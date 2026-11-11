// SPDX-License-Identifier: GPL-2.0-only
#include <linux/device.h>
#include <linux/err.h>
#include <linux/fs.h>
#include <linux/init.h>
#include <linux/platform_device.h>
#include <linux/slab.h>
#include <linux/soc/qcom/smem_state.h>

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
	struct rdbg_device_layout *device =
		(struct rdbg_device_layout *)&g_rdbg_instance;

	/* Stop new probes before destroying their shared client storage. */
	platform_driver_unregister(&rdbg_driver);

	/* rdbg_probe() acquires these non-devm state handles. */
	if (device->rdbg_data) {
		for (slot = 0; slot < device->num_devices; slot++) {
			struct rdbg_data_layout *rdbgdata =
				&device->rdbg_data[slot];

			mutex_lock(&rdbg_smem_state_lock);
			if (!IS_ERR_OR_NULL(rdbgdata->out.smem_state)) {
				struct qcom_smem_state *state =
					rdbgdata->out.smem_state;

				rdbgdata->out.smem_state = NULL;
				qcom_smem_state_put(state);
			}
			mutex_unlock(&rdbg_smem_state_lock);
		}
	}

	slot = 0;
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
	unregister_chrdev_region(g_rdbg_instance.devt, g_rdbg_instance.count);
	kfree(g_rdbg_instance.clients);
	g_rdbg_instance.clients = NULL;
}
