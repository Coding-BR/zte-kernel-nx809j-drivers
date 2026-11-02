// SPDX-License-Identifier: GPL-2.0
#include <linux/bitops.h>
#include <linux/gpio.h>
#include <linux/gpio/consumer.h>
#include <linux/hrtimer.h>
#include <linux/i2c.h>
#include <linux/interrupt.h>
#include <linux/mm.h>
#include <linux/miscdevice.h>
#include <linux/printk.h>
#include <linux/slab.h>
#include <linux/workqueue.h>

#include "haptic_86938_internal.h"

void aw_remove(struct i2c_client *client)
{
	u8 *haptic = i2c_get_clientdata(client);
	struct gpio_desc *reset_desc;
	unsigned long page_address;
	int gpio;
	int irq;

	printk(KERN_INFO "[%s][%04d]%s: enter\n", "haptic_hv", 0x11d9,
	       "aw_remove");

	cancel_delayed_work_sync((struct delayed_work *)(haptic + 0x3c0));
	cancel_work_sync((struct work_struct *)(haptic + 0x560));
	hrtimer_cancel((struct hrtimer *)(haptic + 0x520));
	cancel_work_sync((struct work_struct *)(haptic + 0x3a0));
	cancel_work_sync((struct work_struct *)(haptic + 0x428));
	hrtimer_cancel((struct hrtimer *)(haptic + 0x330));

	reset_desc = gpio_to_desc(*(int *)(haptic + 0x50));
	irq = gpiod_to_irq(reset_desc);
	devm_free_irq(&client->dev, irq, haptic);

	gpio = *(int *)(haptic + 0x50);
	if (gpio >= 0)
		gpio_free(gpio);

	cancel_work_sync((struct work_struct *)(haptic + 0x648));
	kfree(*(void **)(haptic + 0x608));

	page_address = *(unsigned long *)(haptic + 0x610);
	clear_bit(14, &virt_to_page((void *)page_address)->flags);
	free_pages(*(unsigned long *)(haptic + 0x610), 2);

	misc_deregister(&richtap_misc);

	gpio = *(int *)(haptic + 0x5c);
	if (gpio >= 0)
		gpio_free(gpio);
}
