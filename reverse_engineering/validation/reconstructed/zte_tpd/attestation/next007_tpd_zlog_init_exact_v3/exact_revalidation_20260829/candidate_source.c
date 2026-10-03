/* SPDX-License-Identifier: GPL-2.0-only */

void tpd_zlog_init(void)
{
	struct ztp_device *cdev = tpd_zlog_device();
	int index;

	cdev->ztp_zlog_buffer = NULL;
	cdev->zlog_registered = false;
	cdev->tp_reset_timer = jiffies;
	for (index = 0; index < TP_ZLOG_ERROR_MAX; index++)
		cdev->zlog_item.timer[index] = jiffies;
}
