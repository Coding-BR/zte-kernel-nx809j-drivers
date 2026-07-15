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
	if (cdev->zlog_client) {
		pr_debug("zte_tpd: zlog client already registered\n");
		return;
	}

	cdev->zlog_client = zlog_register_client(&zlog_tp_dev);
	if (!cdev->zlog_client) {
		pr_err("zte_tpd: zlog client registration failed\n");
		goto out_registered;
	}

	cdev->ztp_zlog_buffer = vmalloc(ZTE_TPD_ZLOG_BUFFER_SIZE);
	if (!cdev->ztp_zlog_buffer) {
		pr_err("zte_tpd: zlog buffer allocation failed\n");
		goto out_registered;
	}
	memset(cdev->ztp_zlog_buffer, 0, ZTE_TPD_ZLOG_BUFFER_SIZE);

	if (cdev->probe_fail_chip_id != (s8)0xff) {
		snprintf(cdev->ztp_zlog_buffer, ZTE_TPD_ZLOG_BUFFER_SIZE,
			 "tp probe fail, chip id:%d", cdev->probe_fail_chip_id);
		tpd_zlog_record_notify(TP_PROBE_ERROR_NO);
	}

out_registered:
	cdev->zlog_registered = true;
}
