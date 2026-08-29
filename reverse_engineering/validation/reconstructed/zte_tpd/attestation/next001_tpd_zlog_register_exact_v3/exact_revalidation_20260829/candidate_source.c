/* SPDX-License-Identifier: GPL-2.0-only */

struct zlog_mod_info zlog_tp_dev = {
	.module_no = 2,
	.name = "touchscreen",
	.module_name = "Unknown",
	.ic_name = "Unknown",
	.device_name = "TP",
	.fops = NULL,
};

void tpd_zlog_register(struct ztp_device *cdev)
{
	if (!cdev->zlog_client) {
		cdev->zlog_client = zlog_register_client(&zlog_tp_dev);
		if (!cdev->zlog_client) {
			printk("\0015tpd_zlog: %s zlog register client zlog_tp_dev fail\n",
			       "tpd_zlog_register");
		} else {
			cdev->ztp_zlog_buffer = vmalloc(ZTE_TPD_ZLOG_BUFFER_SIZE);
			if (!cdev->ztp_zlog_buffer) {
				printk("\0015tpd_zlog: ztp_zlog_buffer");
				memset(cdev->ztp_zlog_buffer, 0,
				       ZTE_TPD_ZLOG_BUFFER_SIZE);
			}

			if ((u8)cdev->probe_fail_chip_id != 0xff) {
				if (tpd_zlog_device()->ztp_zlog_buffer) {
					snprintf(tpd_zlog_device()->ztp_zlog_buffer,
						 ZTE_TPD_ZLOG_BUFFER_SIZE,
						 "tp probe fail, chip id:%d",
						 cdev->probe_fail_chip_id);
				}
				tpd_zlog_record_notify(TP_PROBE_ERROR_NO);
			}
		}
		cdev->zlog_registered = true;
	} else {
		printk("\0015tpd_zlog: ztp zlog already registered, no need register again!");
	}
}
