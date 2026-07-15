/* SPDX-License-Identifier: GPL-2.0-only */

static __always_inline bool zlog_event_is_due(struct ztp_device *cdev,
					       zlog_error_no error_no)
{
	unsigned long elapsed;

	if (cdev->zlog_item.count[error_no]) {
		elapsed = jiffies_to_msecs(jiffies -
					 cdev->zlog_item.timer[error_no]);
		if (elapsed < 60000) {
			pr_debug("zte_tpd: repeated zlog event %u after %lu ms\n",
				 (u32)error_no, elapsed);
			cdev->zlog_item.count[error_no]++;
			return false;
		}
	}

	cdev->zlog_item.count[error_no]++;
	return true;
}

static __always_inline bool zlog_event_begin(struct ztp_device *cdev,
					      zlog_error_no error_no,
					      unsigned long reset_elapsed,
					      bool wait_for_reset)
{
	if (!zlog_event_is_due(cdev, error_no))
		return false;
	if (wait_for_reset && reset_elapsed < 200)
		return false;

	cdev->zlog_item.timer[error_no] = jiffies;
	return true;
}

static __always_inline u32 zlog_escalated_code(unsigned long count,
					       u32 error_code, u32 warning_code)
{
	return count % 10 ? warning_code : error_code;
}

void tpd_zlog_record_notify(zlog_error_no error_no)
{
	struct ztp_device *cdev = tpd_zlog_device();
	unsigned long reset_elapsed;
	unsigned long count;
	u32 notify_code;
	size_t used;

	if (!cdev)
		return;
	if (!cdev->zlog_registered)
		tpd_zlog_register(cdev);
	if (!cdev->zlog_client || !cdev->ztp_zlog_buffer) {
		pr_err("zte_tpd: zlog unregistered\n");
		return;
	}

	reset_elapsed = jiffies_to_msecs(jiffies - cdev->tp_reset_timer);
	used = strnlen(cdev->ztp_zlog_buffer, ZTE_TPD_ZLOG_BUFFER_SIZE);
	if (used < ZTE_TPD_ZLOG_BUFFER_SIZE)
		snprintf(cdev->ztp_zlog_buffer + used,
			 ZTE_TPD_ZLOG_BUFFER_SIZE - used,
			 " IC name: %s,module name:%s, Firmware version: 0x%x",
			 zlog_tp_dev.ic_name, zlog_tp_dev.module_name,
			 cdev->firmware_version);

	switch (error_no) {
	case TP_I2C_R_ERROR_NO:
		if (!zlog_event_begin(cdev, error_no, reset_elapsed, true))
			goto clear_buffer;
		count = cdev->zlog_item.count[error_no];
		zlog_client_record(cdev->zlog_client,
				   "tpd i2c read err,count:%d\n %s\n",
				   count, cdev->ztp_zlog_buffer);
		notify_code = zlog_escalated_code(count,
			ZLOG_TP_I2C_R_ERROR_NO, ZLOG_TP_I2C_R_WARN_NO);
		break;
	case TP_I2C_W_ERROR_NO:
		if (!zlog_event_begin(cdev, error_no, reset_elapsed, true))
			goto clear_buffer;
		count = cdev->zlog_item.count[error_no];
		zlog_client_record(cdev->zlog_client,
				   "tpd i2c write err,count:%d.\n %s\n",
				   count, cdev->ztp_zlog_buffer);
		notify_code = zlog_escalated_code(count,
			ZLOG_TP_I2C_W_ERROR_NO, ZLOG_TP_I2C_W_WARN_NO);
		break;
	case TP_I2C_R_WARN_NO:
		if (!zlog_event_begin(cdev, error_no, reset_elapsed, true))
			goto clear_buffer;
		count = cdev->zlog_item.count[error_no];
		zlog_client_record(cdev->zlog_client,
				   "tpd i2c read warnning,count:%d\n %s\n",
				   count, cdev->ztp_zlog_buffer);
		notify_code = ZLOG_TP_I2C_R_WARN_NO;
		break;
	case TP_I2C_W_WARN_NO:
		if (!zlog_event_begin(cdev, error_no, reset_elapsed, true))
			goto clear_buffer;
		count = cdev->zlog_item.count[error_no];
		zlog_client_record(cdev->zlog_client,
				   "tpd i2c write warnning,count:%d\n %s\n",
				   count, cdev->ztp_zlog_buffer);
		notify_code = ZLOG_TP_I2C_W_WARN_NO;
		break;
	case TP_SPI_R_ERROR_NO:
		if (!zlog_event_begin(cdev, error_no, reset_elapsed, true))
			goto clear_buffer;
		count = cdev->zlog_item.count[error_no];
		zlog_client_record(cdev->zlog_client,
				   "tpd SPI read err,count:%d\n %s\n",
				   count, cdev->ztp_zlog_buffer);
		notify_code = zlog_escalated_code(count,
			ZLOG_TP_SPI_R_ERROR_NO, ZLOG_TP_SPI_R_WARN_NO);
		break;
	case TP_SPI_W_ERROR_NO:
		if (!zlog_event_begin(cdev, error_no, reset_elapsed, true))
			goto clear_buffer;
		count = cdev->zlog_item.count[error_no];
		zlog_client_record(cdev->zlog_client,
				   "tpd SPI write err,count:%d\n %s\n",
				   count, cdev->ztp_zlog_buffer);
		notify_code = zlog_escalated_code(count,
			ZLOG_TP_SPI_W_ERROR_NO, ZLOG_TP_SPI_W_WARN_NO);
		break;
	case TP_SPI_R_WARN_NO:
		if (!zlog_event_begin(cdev, error_no, reset_elapsed, true))
			goto clear_buffer;
		count = cdev->zlog_item.count[error_no];
		zlog_client_record(cdev->zlog_client,
				   "tpd SPI read warnning,count:%d\n %s\n",
				   count, cdev->ztp_zlog_buffer);
		notify_code = ZLOG_TP_SPI_R_WARN_NO;
		break;
	case TP_SPI_W_WARN_NO:
		if (!zlog_event_begin(cdev, error_no, reset_elapsed, true))
			goto clear_buffer;
		count = cdev->zlog_item.count[error_no];
		zlog_client_record(cdev->zlog_client,
				   "tpd SPI write warnning,count:%d\n %s\n",
				   count, cdev->ztp_zlog_buffer);
		notify_code = ZLOG_TP_SPI_W_WARN_NO;
		break;
	case TP_CRC_ERROR_NO:
		if (!zlog_event_begin(cdev, error_no, reset_elapsed, true))
			goto clear_buffer;
		count = cdev->zlog_item.count[error_no];
		zlog_client_record(cdev->zlog_client,
				   "tpd crc check err,count:%d.\n %s\n",
				   count, cdev->ztp_zlog_buffer);
		notify_code = ZLOG_TP_CRC_ERROR_NO;
		break;
	case TP_FW_UPGRADE_ERROR_NO:
		if (!zlog_event_begin(cdev, error_no, reset_elapsed, false))
			goto clear_buffer;
		count = cdev->zlog_item.count[error_no];
		zlog_client_record(cdev->zlog_client,
				   "tpd firmware upgrade err,count:%d. \n %s\n",
				   count, cdev->ztp_zlog_buffer);
		notify_code = ZLOG_TP_FW_UPGRADE_ERROR_NO;
		break;
	case TP_ESD_CHECK_ERROR_NO:
		if (!zlog_event_begin(cdev, error_no, reset_elapsed, false))
			goto clear_buffer;
		count = cdev->zlog_item.count[error_no];
		zlog_client_record(cdev->zlog_client,
				   "tpd esd check err,count:%d.\n %s\n",
				   count, cdev->ztp_zlog_buffer);
		notify_code = zlog_escalated_code(count,
			ZLOG_TP_ESD_CHECK_ERROR_NO, ZLOG_TP_ESD_CHECK_WARN_NO);
		break;
	case TP_ESD_CHECK_WARN_NO:
		if (!zlog_event_begin(cdev, error_no, reset_elapsed, false))
			goto clear_buffer;
		count = cdev->zlog_item.count[error_no];
		zlog_client_record(cdev->zlog_client,
				   "tpd esd check warnning,count:%d.\n %s\n",
				   count, cdev->ztp_zlog_buffer);
		notify_code = ZLOG_TP_ESD_CHECK_WARN_NO;
		break;
	case TP_PROBE_ERROR_NO:
		zlog_client_record(cdev->zlog_client, "tpd probe err.\n %s\n",
				   cdev->ztp_zlog_buffer);
		notify_code = ZLOG_TP_ESD_CHECK_ERROR_NO;
		break;
	case TP_SUSPEND_GESTURE_OPEN_NO:
		zlog_client_record(cdev->zlog_client,
				   "tpd tp gesture open when suspend.\n %s\n",
				   cdev->ztp_zlog_buffer);
		notify_code = ZLOG_TP_SUSPEND_GESTURE_OPEN_NO;
		break;
	case TP_REQUEST_FIRMWARE_ERROR_NO:
		if (!zlog_event_begin(cdev, error_no, reset_elapsed, false))
			goto clear_buffer;
		count = cdev->zlog_item.count[error_no];
		zlog_client_record(cdev->zlog_client,
				   "tpd request firmware upgrade err,count:%d.\n %s\n",
				   count, cdev->ztp_zlog_buffer);
		notify_code = ZLOG_TP_FW_UPGRADE_ERROR_NO;
		break;
	case TP_GHOST_ERROR_NO:
		if (!zlog_event_begin(cdev, error_no, reset_elapsed, false))
			goto clear_buffer;
		count = cdev->zlog_item.count[error_no];
		zlog_client_record(cdev->zlog_client,
				   "tpd ghost err,count:%lu.\n %s\n",
				   count, cdev->ztp_zlog_buffer);
		notify_code = ZLOG_TP_GHOST_ERROR_NO;
		break;
	case TP_HAL_SERVICE_CRASH_NO:
		if (!zlog_event_begin(cdev, error_no, reset_elapsed, true))
			goto clear_buffer;
		count = cdev->zlog_item.count[error_no];
		zlog_client_record(cdev->zlog_client,
				   "tpd tp hal service is crash,count:%d.\n %s\n",
				   count, cdev->ztp_zlog_buffer);
		notify_code = ZLOG_TP_HAL_SERVICE_CRASH_NO;
		break;
	case TP_SAVE_BUFFER_FULL_NO:
		if (!zlog_event_begin(cdev, error_no, reset_elapsed, true))
			goto clear_buffer;
		count = cdev->zlog_item.count[error_no];
		zlog_client_record(cdev->zlog_client,
				   "tpd tp save buffer is full,count:%d.\n %s\n",
				   count, cdev->ztp_zlog_buffer);
		notify_code = ZLOG_TP_SAVE_BUFFER_FULL_NO;
		break;
	default:
		goto clear_buffer;
	}

	zlog_client_notify(cdev->zlog_client, notify_code);

clear_buffer:
	memset(cdev->ztp_zlog_buffer, 0, ZTE_TPD_ZLOG_BUFFER_SIZE);
}
