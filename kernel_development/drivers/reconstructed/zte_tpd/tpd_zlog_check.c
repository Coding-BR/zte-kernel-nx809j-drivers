/* SPDX-License-Identifier: GPL-2.0-only */

int tpd_zlog_check(zlog_error_no error_no)
{
	struct ztp_device *cdev = tpd_zlog_device();
	unsigned long elapsed;

	if (!cdev || error_no <= 0 || error_no >= TP_ZLOG_ERROR_MAX)
		return -EINVAL;

	elapsed = jiffies_to_msecs(jiffies - cdev->zlog_item.timer[error_no]);
	if (cdev->zlog_item.count[error_no] && elapsed < 60000) {
		pr_debug("zte_tpd: repeated zlog event %u after %lu ms\n",
			 (u32)error_no, elapsed);
		cdev->zlog_item.count[error_no]++;
		return -EIO;
	}

	cdev->zlog_item.count[error_no]++;
	return 0;
}
