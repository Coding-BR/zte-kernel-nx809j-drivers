/* SPDX-License-Identifier: GPL-2.0-only */

void zlog_register_work(struct work_struct *work)
{
	struct ztp_device *cdev = tpd_zlog_device();

	(void)work;
	if (cdev && !cdev->zlog_registered)
		tpd_zlog_register(cdev);
}
