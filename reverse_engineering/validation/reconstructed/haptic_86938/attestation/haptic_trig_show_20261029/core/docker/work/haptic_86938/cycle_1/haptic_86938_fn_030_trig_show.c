// SPDX-License-Identifier: GPL-2.0
#include <linux/device.h>
#include <linux/kernel.h>

ssize_t trig_show(struct device *dev, struct device_attribute *attr, char *buf)
{
    static const char format[] =
        "trig%d: trig_level=%d, trig_polar=%d, pos_enable=%d, "
        "pos_sequence=%d, neg_enable=%d, neg_sequence=%d "
        "trig_brk=%d, trig_bst=%d\n";
    unsigned char *driver_data = *(unsigned char **)((char *)dev + 0x98);
    ssize_t length;

    (void)attr;
    length = snprintf(buf, 0x1000, format, 1,
                      (int)driver_data[0x53f], (int)driver_data[0x540],
                      (int)driver_data[0x541], (int)driver_data[0x543],
                      (int)driver_data[0x542], (int)driver_data[0x544],
                      (int)driver_data[0x53d], (int)driver_data[0x53e]);
    length += snprintf(buf + length, 0x1000 - length, format, 2,
                       (int)driver_data[0x54c], (int)driver_data[0x54d],
                       (int)driver_data[0x54e], (int)driver_data[0x550],
                       (int)driver_data[0x54f], (int)driver_data[0x551],
                       (int)driver_data[0x54a], (int)driver_data[0x54b]);
    length += snprintf(buf + length, 0x1000 - length, format, 3,
                       (int)driver_data[0x559], (int)driver_data[0x55a],
                       (int)driver_data[0x55b], (int)driver_data[0x55d],
                       (int)driver_data[0x55c], (int)driver_data[0x55e],
                       (int)driver_data[0x557], (int)driver_data[0x558]);
    return length;
}
