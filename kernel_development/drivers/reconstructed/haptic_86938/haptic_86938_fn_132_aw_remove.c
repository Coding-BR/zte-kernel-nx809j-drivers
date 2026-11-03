// SPDX-License-Identifier: GPL-2.0
#include <linux/bitops.h>
#include <linux/gpio.h>
#include <linux/gpio/consumer.h>
#include <linux/hrtimer.h>
#include <linux/i2c.h>
#include <linux/interrupt.h>
#include <linux/leds.h>
#include <linux/mm.h>
#include <linux/printk.h>
#include <linux/slab.h>
#include <linux/workqueue.h>

#include "haptic_86938_internal.h"

void aw_remove(struct i2c_client *client)
{
	u8 *haptic;
	struct led_classdev *led_cdev;
	struct workqueue_struct *workqueue;
	struct gpio_desc *reset_desc;
	int gpio;
	int irq;

	haptic_lifetime_transition_begin();
	haptic = i2c_get_clientdata(client);
	if (!haptic) {
		haptic_lifetime_transition_end();
		return;
	}

	printk(KERN_INFO "[%s][%04d]%s: enter\n", "haptic_hv", 0x11d9,
	       "aw_remove");

	/* Close both user entry points before any callback-owned resource is freed. */
	haptic_lifetime_block_file_access(haptic);
	led_cdev = (struct led_classdev *)(haptic + 0xa8);
	if (READ_ONCE(*(struct device **)(haptic + 0xf8))) {
		led_classdev_unregister(led_cdev);
		/* The managed release runs after remove; make its documented NULL guard idempotent. */
		WRITE_ONCE(led_cdev->dev, NULL);
	}

	/* request_firmware_nowait has no cancel handle; drain its tracked callbacks. */
	cancel_delayed_work_sync((struct delayed_work *)(haptic + 0x3c0));
	haptic_lifetime_wait_ram_callbacks();
	cancel_delayed_work_sync((struct delayed_work *)(haptic + 0x3c0));

	reset_desc = gpio_to_desc(*(int *)(haptic + 0x50));
	irq = gpiod_to_irq(reset_desc);
	devm_free_irq(&client->dev, irq, haptic);

	/* Timers and work callbacks refuse rearming after the shutdown gate. */
	hrtimer_cancel((struct hrtimer *)(haptic + 0x520));
	hrtimer_cancel((struct hrtimer *)(haptic + 0x330));
	cancel_work_sync((struct work_struct *)(haptic + 0x560));
	cancel_work_sync((struct work_struct *)(haptic + 0x3a0));
	cancel_work_sync((struct work_struct *)(haptic + 0x428));
	cancel_work_sync((struct work_struct *)(haptic + 0x628));
	cancel_work_sync((struct work_struct *)(haptic + 0x648));
	cancel_work_sync((struct work_struct *)(haptic + 0x668));
	/* Catch timers armed by a callback that was already executing at shutdown. */
	hrtimer_cancel((struct hrtimer *)(haptic + 0x520));
	hrtimer_cancel((struct hrtimer *)(haptic + 0x330));
	cancel_work_sync((struct work_struct *)(haptic + 0x560));
	cancel_work_sync((struct work_struct *)(haptic + 0x3a0));
	cancel_work_sync((struct work_struct *)(haptic + 0x428));
	cancel_work_sync((struct work_struct *)(haptic + 0x628));
	cancel_work_sync((struct work_struct *)(haptic + 0x648));
	cancel_work_sync((struct work_struct *)(haptic + 0x668));

	workqueue = *(struct workqueue_struct **)(haptic + 0x448);
	if (workqueue) {
		destroy_workqueue(workqueue);
		*(struct workqueue_struct **)(haptic + 0x448) = NULL;
	}

	gpio = *(int *)(haptic + 0x50);
	if (gpio >= 0)
		gpio_free(gpio);

	kfree(*(void **)(haptic + 0x608));
	*(void **)(haptic + 0x608) = NULL;
	haptic_lifetime_retire_state(haptic);

	gpio = *(int *)(haptic + 0x5c);
	if (gpio >= 0)
		gpio_free(gpio);
	haptic_lifetime_transition_end();
}
