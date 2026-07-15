/* SPDX-License-Identifier: GPL-2.0-only */

void zlog_register_work_init(void)
{
	struct ztp_device *cdev = tpd_zlog_device();

	pr_debug("zte_tpd: initialize zlog registration work\n");
	INIT_DELAYED_WORK(&cdev->zlog_register_work, zlog_register_work);
}
