/* SPDX-License-Identifier: GPL-2.0-only */

ssize_t tp_zlog_debug_write(struct file *file, const char __user *buffer,
			    size_t len, loff_t *offset)
{
	char data[10] = { 0 };
	unsigned int input;

	(void)file;
	(void)offset;
	len = min(len, sizeof(data) - 1);
	if (zte_inline_copy_from_user(data, buffer, len))
		return -EINVAL;
	if (kstrtouint(data, 0, &input))
		return -EINVAL;

	switch (input) {
	case TP_I2C_R_ERROR_NO:
	case TP_I2C_W_ERROR_NO:
	case TP_SPI_R_ERROR_NO:
	case TP_SPI_W_ERROR_NO:
	case TP_CRC_ERROR_NO:
	case TP_FW_UPGRADE_ERROR_NO:
	case TP_ESD_CHECK_ERROR_NO:
	case TP_PROBE_ERROR_NO:
	case TP_SUSPEND_GESTURE_OPEN_NO:
	case TP_REQUEST_FIRMWARE_ERROR_NO:
		tpd_zlog_record_notify((zlog_error_no)input);
		break;
	default:
		break;
	}

	return len;
}
