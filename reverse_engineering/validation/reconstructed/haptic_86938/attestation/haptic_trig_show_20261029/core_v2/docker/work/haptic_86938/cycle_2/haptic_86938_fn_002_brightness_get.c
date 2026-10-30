// SPDX-License-Identifier: GPL-2.0
#include <linux/leds.h>

enum led_brightness brightness_get(struct led_classdev *led_cdev)
{
	return *(enum led_brightness *)((char *)led_cdev - 0x50);
}
