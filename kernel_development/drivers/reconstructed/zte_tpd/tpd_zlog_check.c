/* SPDX-License-Identifier: GPL-2.0-only */

int tpd_zlog_check(zlog_error_no error_no)
{
	struct ztp_device *cdev = tpd_zlog_device();

	if (cdev->zlog_item.count[error_no] &&
	    jiffies_to_msecs(jiffies -
			     cdev->zlog_item.timer[error_no]) < 60000) {
		printk("\0015tpd_zlog: zlog error repeated notify, timer:%d, no:%d",
		       jiffies_to_msecs(jiffies -
					cdev->zlog_item.timer[error_no]),
		       error_no);
		cdev->zlog_item.count[error_no]++;
		return -EIO;
	}

	cdev->zlog_item.count[error_no]++;
	return 0;
}
