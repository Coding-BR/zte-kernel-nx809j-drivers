/* SPDX-License-Identifier: GPL-2.0-only */

static __always_inline bool zlog_event_is_due(zlog_error_no error_no)
{
	struct ztp_device *cdev = tpd_zlog_device();
	unsigned long elapsed;

	if (cdev->zlog_item.count[error_no]) {
		elapsed = jiffies_to_msecs(jiffies -
					 cdev->zlog_item.timer[error_no]);
		if (elapsed < 60000) {
			printk("\0015tpd_zlog: zlog error repeated notify, timer:%d, no:%d",
			       jiffies_to_msecs(jiffies -
						cdev->zlog_item.timer[error_no]), error_no);
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
	if (!zlog_event_is_due(error_no))
		return false;
	if (wait_for_reset && reset_elapsed < 200)
		return false;

	cdev->zlog_item.timer[error_no] = jiffies;
	return true;
}

void tpd_zlog_record_notify(zlog_error_no error_no)
{
	struct ztp_device *cdev = tpd_zlog_device();
	unsigned long reset_elapsed;
	size_t used;

	if (!cdev->zlog_registered)
		tpd_zlog_register(cdev);
	if (!cdev->zlog_client || !cdev->ztp_zlog_buffer) {
		printk("\0015tpd_zlog: zlog unregistered.\n");
		return;
	}

	reset_elapsed = jiffies_to_msecs(jiffies - cdev->tp_reset_timer);
	used = strlen(cdev->ztp_zlog_buffer);
	snprintf(cdev->ztp_zlog_buffer + (int)used,
		 ZTE_TPD_ZLOG_BUFFER_SIZE - (int)used,
		 " IC name: %s,module name:%s, Firmware version: 0x%x",
		 zlog_tp_dev.ic_name, zlog_tp_dev.module_name,
		 cdev->firmware_version);

	switch (error_no) {
	case TP_I2C_R_ERROR_NO:
		if (!zlog_event_begin(cdev, error_no, reset_elapsed, true))
			goto clear_buffer;
		printk("\0015tpd_zlog: tpd i2c read err,count:%lu. %s\n",
		       cdev->zlog_item.count[error_no], cdev->ztp_zlog_buffer);
		zlog_client_record(cdev->zlog_client,
				   "tpd i2c read err,count:%d\n %s\n",
				   cdev->zlog_item.count[error_no], cdev->ztp_zlog_buffer);
		if (cdev->zlog_item.count[error_no] % 10)
			zlog_client_notify(cdev->zlog_client, ZLOG_TP_I2C_R_WARN_NO);
		else
			zlog_client_notify(cdev->zlog_client, ZLOG_TP_I2C_R_ERROR_NO);
		goto clear_buffer;
	case TP_I2C_W_ERROR_NO:
		if (!zlog_event_begin(cdev, error_no, reset_elapsed, true))
			goto clear_buffer;
		printk("\0015tpd_zlog: tpd i2c write err,count:%lu. %s\n",
		       cdev->zlog_item.count[error_no], cdev->ztp_zlog_buffer);
		zlog_client_record(cdev->zlog_client,
				   "tpd i2c write err,count:%d.\n %s\n",
				   cdev->zlog_item.count[error_no], cdev->ztp_zlog_buffer);
		if (cdev->zlog_item.count[error_no] % 10)
			zlog_client_notify(cdev->zlog_client, ZLOG_TP_I2C_W_WARN_NO);
		else
			zlog_client_notify(cdev->zlog_client, ZLOG_TP_I2C_W_ERROR_NO);
		goto clear_buffer;
	case TP_I2C_R_WARN_NO:
		if (!zlog_event_begin(cdev, error_no, reset_elapsed, true))
			goto clear_buffer;
		printk("\0015tpd_zlog: tpd i2c read warnning,count:%lu.%s\n",
		       cdev->zlog_item.count[error_no], cdev->ztp_zlog_buffer);
		zlog_client_record(cdev->zlog_client,
				   "tpd i2c read warnning,count:%d\n %s\n",
				   cdev->zlog_item.count[error_no], cdev->ztp_zlog_buffer);
		zlog_client_notify(cdev->zlog_client, ZLOG_TP_I2C_R_WARN_NO);
		goto clear_buffer;
	case TP_I2C_W_WARN_NO:
		if (!zlog_event_begin(cdev, error_no, reset_elapsed, true))
			goto clear_buffer;
		printk("\0015tpd_zlog: tpd i2c write warnning,count:%lu.%s\n",
		       cdev->zlog_item.count[error_no], cdev->ztp_zlog_buffer);
		zlog_client_record(cdev->zlog_client,
				   "tpd i2c write warnning,count:%d\n %s\n",
				   cdev->zlog_item.count[error_no], cdev->ztp_zlog_buffer);
		zlog_client_notify(cdev->zlog_client, ZLOG_TP_I2C_W_WARN_NO);
		goto clear_buffer;
	case TP_SPI_R_ERROR_NO:
		if (!zlog_event_begin(cdev, error_no, reset_elapsed, true))
			goto clear_buffer;
		printk("\0015tpd_zlog: tpd SPI read err,count:%lu.%s\n",
		       cdev->zlog_item.count[error_no], cdev->ztp_zlog_buffer);
		zlog_client_record(cdev->zlog_client,
				   "tpd SPI read err,count:%d\n %s\n",
				   cdev->zlog_item.count[error_no], cdev->ztp_zlog_buffer);
		if (cdev->zlog_item.count[error_no] % 10)
			zlog_client_notify(cdev->zlog_client, ZLOG_TP_SPI_R_WARN_NO);
		else
			zlog_client_notify(cdev->zlog_client, ZLOG_TP_SPI_R_ERROR_NO);
		goto clear_buffer;
	case TP_SPI_W_ERROR_NO:
		if (!zlog_event_begin(cdev, error_no, reset_elapsed, true))
			goto clear_buffer;
		printk("\0015tpd_zlog: tpd SPI write err,count:%lu.%s\n",
		       cdev->zlog_item.count[error_no], cdev->ztp_zlog_buffer);
		zlog_client_record(cdev->zlog_client,
				   "tpd SPI write err,count:%d\n %s\n",
				   cdev->zlog_item.count[error_no], cdev->ztp_zlog_buffer);
		if (cdev->zlog_item.count[error_no] % 10)
			zlog_client_notify(cdev->zlog_client, ZLOG_TP_SPI_W_WARN_NO);
		else
			zlog_client_notify(cdev->zlog_client, ZLOG_TP_SPI_W_ERROR_NO);
		goto clear_buffer;
	case TP_SPI_R_WARN_NO:
		if (!zlog_event_begin(cdev, error_no, reset_elapsed, true))
			goto clear_buffer;
		printk("\0015tpd_zlog: tpd SPI read warnning,count:%lu.%s\n",
		       cdev->zlog_item.count[error_no], cdev->ztp_zlog_buffer);
		zlog_client_record(cdev->zlog_client,
				   "tpd SPI read warnning,count:%d\n %s\n",
				   cdev->zlog_item.count[error_no], cdev->ztp_zlog_buffer);
		zlog_client_notify(cdev->zlog_client, ZLOG_TP_SPI_R_WARN_NO);
		goto clear_buffer;
	case TP_SPI_W_WARN_NO:
		if (!zlog_event_begin(cdev, error_no, reset_elapsed, true))
			goto clear_buffer;
		printk("\0015tpd_zlog: tpd SPI write warnning,count:%lu.%s\n",
		       cdev->zlog_item.count[error_no], cdev->ztp_zlog_buffer);
		zlog_client_record(cdev->zlog_client,
				   "tpd SPI write warnning,count:%d\n %s\n",
				   cdev->zlog_item.count[error_no], cdev->ztp_zlog_buffer);
		zlog_client_notify(cdev->zlog_client, ZLOG_TP_SPI_W_WARN_NO);
		goto clear_buffer;
	case TP_CRC_ERROR_NO:
		if (!zlog_event_begin(cdev, error_no, reset_elapsed, true))
			goto clear_buffer;
		printk("\0015tpd_zlog: tpd crc check err,count:%lu. %s\n",
		       cdev->zlog_item.count[error_no], cdev->ztp_zlog_buffer);
		zlog_client_record(cdev->zlog_client,
				   "tpd crc check err,count:%d.\n %s\n",
				   cdev->zlog_item.count[error_no], cdev->ztp_zlog_buffer);
		zlog_client_notify(cdev->zlog_client, ZLOG_TP_CRC_ERROR_NO);
		goto clear_buffer;
	case TP_FW_UPGRADE_ERROR_NO:
		if (!zlog_event_begin(cdev, error_no, reset_elapsed, false))
			goto clear_buffer;
		printk("\0015tpd_zlog: tpd firmware upgrade err,count:%lu. %s\n",
		       cdev->zlog_item.count[error_no], cdev->ztp_zlog_buffer);
		zlog_client_record(cdev->zlog_client,
				   "tpd firmware upgrade err,count:%d. \n %s\n",
				   cdev->zlog_item.count[error_no], cdev->ztp_zlog_buffer);
		zlog_client_notify(cdev->zlog_client, ZLOG_TP_FW_UPGRADE_ERROR_NO);
		goto clear_buffer;
	case TP_ESD_CHECK_ERROR_NO:
		if (!zlog_event_begin(cdev, error_no, reset_elapsed, false))
			goto clear_buffer;
		printk("\0015tpd_zlog: tpd esd check err,count:%lu. %s\n",
		       cdev->zlog_item.count[error_no], cdev->ztp_zlog_buffer);
		zlog_client_record(cdev->zlog_client,
				   "tpd esd check err,count:%d.\n %s\n",
				   cdev->zlog_item.count[error_no], cdev->ztp_zlog_buffer);
		if (cdev->zlog_item.count[error_no] % 10)
			zlog_client_notify(cdev->zlog_client, ZLOG_TP_ESD_CHECK_WARN_NO);
		else
			zlog_client_notify(cdev->zlog_client, ZLOG_TP_ESD_CHECK_ERROR_NO);
		goto clear_buffer;
	case TP_ESD_CHECK_WARN_NO:
		if (!zlog_event_begin(cdev, error_no, reset_elapsed, false))
			goto clear_buffer;
		printk("\0015tpd_zlog: tpd esd check warnning,count:%lu. %s\n",
		       cdev->zlog_item.count[error_no], cdev->ztp_zlog_buffer);
		zlog_client_record(cdev->zlog_client,
				   "tpd esd check warnning,count:%d.\n %s\n",
				   cdev->zlog_item.count[error_no], cdev->ztp_zlog_buffer);
		zlog_client_notify(cdev->zlog_client, ZLOG_TP_ESD_CHECK_WARN_NO);
		goto clear_buffer;
	case TP_PROBE_ERROR_NO:
		printk("\0015tpd_zlog: tpd probe err. %s\n", cdev->ztp_zlog_buffer);
		zlog_client_record(cdev->zlog_client, "tpd probe err.\n %s\n",
				   cdev->ztp_zlog_buffer);
		zlog_client_notify(cdev->zlog_client, ZLOG_TP_ESD_CHECK_ERROR_NO);
		goto clear_buffer;
	case TP_SUSPEND_GESTURE_OPEN_NO:
		printk("\0015tpd_zlog: tpd gesture open when suspend. %s\n",
		       cdev->ztp_zlog_buffer);
		zlog_client_record(cdev->zlog_client,
				   "tpd tp gesture open when suspend.\n %s\n",
				   cdev->ztp_zlog_buffer);
		zlog_client_notify(cdev->zlog_client, ZLOG_TP_SUSPEND_GESTURE_OPEN_NO);
		goto clear_buffer;
	case TP_REQUEST_FIRMWARE_ERROR_NO:
		if (!zlog_event_begin(cdev, error_no, reset_elapsed, false))
			goto clear_buffer;
		printk("\0015tpd_zlog: tpd request firmware upgrade err,count:%lu. %s\n",
		       cdev->zlog_item.count[error_no], cdev->ztp_zlog_buffer);
		zlog_client_record(cdev->zlog_client,
				   "tpd request firmware upgrade err,count:%d.\n %s\n",
				   cdev->zlog_item.count[error_no], cdev->ztp_zlog_buffer);
		zlog_client_notify(cdev->zlog_client, ZLOG_TP_FW_UPGRADE_ERROR_NO);
		goto clear_buffer;
	case TP_GHOST_ERROR_NO:
		if (!zlog_event_begin(cdev, error_no, reset_elapsed, false))
			goto clear_buffer;
		printk("\0015tpd_zlog: tpd ghost err,count:%lu. %s\n",
		       cdev->zlog_item.count[error_no], cdev->ztp_zlog_buffer);
		zlog_client_record(cdev->zlog_client,
				   "tpd ghost err,count:%lu.\n %s\n",
				   cdev->zlog_item.count[error_no], cdev->ztp_zlog_buffer);
		zlog_client_notify(cdev->zlog_client, ZLOG_TP_GHOST_ERROR_NO);
		goto clear_buffer;
	case TP_HAL_SERVICE_CRASH_NO:
		if (!zlog_event_begin(cdev, error_no, reset_elapsed, true))
			goto clear_buffer;
		printk("\0015tpd_zlog: tpd hal service is crash,count:%lu. %s\n",
		       cdev->zlog_item.count[error_no], cdev->ztp_zlog_buffer);
		zlog_client_record(cdev->zlog_client,
				   "tpd tp hal service is crash,count:%d.\n %s\n",
				   cdev->zlog_item.count[error_no], cdev->ztp_zlog_buffer);
		zlog_client_notify(cdev->zlog_client, ZLOG_TP_HAL_SERVICE_CRASH_NO);
		goto clear_buffer;
	case TP_SAVE_BUFFER_FULL_NO:
		if (!zlog_event_begin(cdev, error_no, reset_elapsed, true))
			goto clear_buffer;
		printk("\0015tpd_zlog: tpd save buffer is full,count:%lu. %s\n",
		       cdev->zlog_item.count[error_no], cdev->ztp_zlog_buffer);
		zlog_client_record(cdev->zlog_client,
				   "tpd tp save buffer is full,count:%d.\n %s\n",
				   cdev->zlog_item.count[error_no], cdev->ztp_zlog_buffer);
		zlog_client_notify(cdev->zlog_client, ZLOG_TP_SAVE_BUFFER_FULL_NO);
		goto clear_buffer;
	default:
		goto clear_buffer;
	}

clear_buffer:
	memset(cdev->ztp_zlog_buffer, 0, ZTE_TPD_ZLOG_BUFFER_SIZE);
}
