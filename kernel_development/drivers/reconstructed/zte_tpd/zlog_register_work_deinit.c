/* SPDX-License-Identifier: GPL-2.0-only */

void zlog_register_work_deinit(void)
{
	struct ztp_device *cdev = tpd_zlog_device();

	pr_debug("zte_tpd: deinitialize zlog registration work\n");
	cancel_delayed_work_sync(&cdev->zlog_register_work);
	vfree(cdev->ztp_zlog_buffer);
	cdev->ztp_zlog_buffer = NULL;
}
