__int64 __fastcall syna_tcm_read_flash_area(__int64 raw_tcm,
						int partition_id,
						__int64 raw_buffer,
						unsigned int delay_ms)
{
	struct tcm_dev *tcm = (struct tcm_dev *)(unsigned long)raw_tcm;
	struct tcm_buffer *buffer =
		(struct tcm_buffer *)(unsigned long)raw_buffer;
	struct syna_tcm_flash_access_context access = {};
	struct tcm_buffer lockdown = {};
	struct device *managed_device;
	unsigned int timeout_ms;
	unsigned int address;
	unsigned int config_size;
	unsigned int zero_length;
	unsigned int selected_offset;
	unsigned int lockdown_size;
	int initial_mode;
	int retval;
	int result = -241;

	if (!tcm || !buffer) {
		printk("\0013[error] %s: Invalid argument\n",
		       "syna_tcm_read_flash_area");
		return -241;
	}

	timeout_ms = delay_ms ? tcm->timing_01e8 : 0;
	initial_mode = tcm->firmware_mode;
	if (initial_mode != 0x0b) {
		retval = syna_tcm_set_up_flash_access(tcm, &access, delay_ms,
						     timeout_ms);
		if (retval < 0) {
			printk("\0013[error] %s: Flash access setup failed\n",
			       "syna_tcm_read_flash_area");
			return retval;
		}
	}

	if (partition_id == 3) {
		if (initial_mode == 0x01) {
			result = -241;
			goto out;
		}

		address = (unsigned int)tcm->application_info
				.app_config_start_write_block[0] |
			((unsigned int)tcm->application_info
				.app_config_start_write_block[1] << 8);
		address *= access.write_block_size_bytes;
		config_size = (unsigned int)tcm->application_info
				.app_config_size[0] |
			((unsigned int)tcm->application_info.app_config_size[1] << 8);
		if (!address || !config_size) {
			result = -241;
			goto out;
		}

		zero_length = buffer->buf_size;
		if (buffer->buf_size < config_size) {
			if (buffer->data) {
				managed_device = syna_request_managed_device();
				if (managed_device)
					devm_kfree(managed_device, buffer->data);
			}

			managed_device = syna_request_managed_device();
			if (!managed_device) {
				buffer->data = NULL;
				buffer->buf_size = 0;
				result = -243;
				goto out;
			}

			buffer->data = devm_kmalloc(managed_device, config_size, 3520);
			if (!buffer->data) {
				buffer->buf_size = 0;
				result = -243;
				goto out;
			}
			buffer->buf_size = config_size;
			zero_length = config_size;
		}

		if (!buffer->data) {
			result = -22;
			goto out;
		}
		memset(buffer->data, 0, zero_length);
		buffer->data_length = 0;
		retval = syna_tcm_read_flash(tcm, address, buffer->data,
					     config_size, delay_ms);
		if (retval < 0) {
			result = retval;
			goto out;
		}
		buffer->data_length = config_size;
		result = 0;
		goto success;
	}

	if (partition_id == 6) {
		retval = syna_tcm_read_flash_boot_config(tcm, &access, buffer,
							delay_ms);
		if (retval < 0) {
			result = retval;
			goto out;
		}
		goto success;
	}

	if (partition_id == 0x15) {
		retval = syna_tcm_read_flash_boot_cs_config(tcm, &access, buffer,
							    0, 0, delay_ms);
		if (retval < 0) {
			result = retval;
			goto out;
		}
		goto success;
	}

	if (partition_id == 0x17) {
		retval = syna_tcm_read_flash_mtp_config(tcm, &access, buffer,
							0, 0, delay_ms);
		if (retval < 0) {
			result = retval;
			goto out;
		}
		goto success;
	}

	if (partition_id != 0x16)
		goto out;

	if (initial_mode == 0x01) {
		result = -241;
		goto out;
	}

	retval = syna_tcm_read_flash_boot_config(tcm, &access, &lockdown,
							delay_ms);
	if (retval < 0) {
		result = retval;
		goto lockdown_cleanup;
	}

	lockdown_size = lockdown.buf_size;
	if (lockdown_size < 0x88 || !lockdown.data) {
		result = -22;
		goto lockdown_cleanup;
	}

	if (buffer->buf_size < 8) {
		if (buffer->data) {
			managed_device = syna_request_managed_device();
			if (managed_device)
				devm_kfree(managed_device, buffer->data);
		}

		managed_device = syna_request_managed_device();
		if (!managed_device) {
			buffer->data = NULL;
			buffer->buf_size = 0;
			result = -243;
			goto lockdown_cleanup;
		}
		buffer->data = devm_kmalloc(managed_device, 8, 3520);
		if (!buffer->data) {
			buffer->buf_size = 0;
			result = -243;
			goto lockdown_cleanup;
		}
		buffer->buf_size = 8;
	}

	if (!buffer->data || buffer->buf_size <= 7) {
		result = -22;
		goto lockdown_cleanup;
	}

	memset(buffer->data, 0, buffer->buf_size);
	buffer->data_length = 0;
	if ((signed char)lockdown.data[lockdown_size - 7] < 0)
		selected_offset = lockdown_size - 8;
	else if ((signed char)lockdown.data[lockdown_size - 15] < 0)
		selected_offset = lockdown_size - 16;
	else if ((signed char)lockdown.data[lockdown_size - 23] < 0)
		selected_offset = lockdown_size - 24;
	else if ((signed char)lockdown.data[lockdown_size - 31] < 0)
		selected_offset = lockdown_size - 32;
	else if ((signed char)lockdown.data[lockdown_size - 39] < 0)
		selected_offset = lockdown_size - 40;
	else if ((signed char)lockdown.data[lockdown_size - 47] < 0)
		selected_offset = lockdown_size - 48;
	else if ((signed char)lockdown.data[lockdown_size - 55] < 0)
		selected_offset = lockdown_size - 56;
	else if ((signed char)lockdown.data[lockdown_size - 63] < 0)
		selected_offset = lockdown_size - 64;
	else if ((signed char)lockdown.data[lockdown_size - 71] < 0)
		selected_offset = lockdown_size - 72;
	else if ((signed char)lockdown.data[lockdown_size - 79] < 0)
		selected_offset = lockdown_size - 80;
	else if ((signed char)lockdown.data[lockdown_size - 87] < 0)
		selected_offset = lockdown_size - 88;
	else if ((signed char)lockdown.data[lockdown_size - 95] < 0)
		selected_offset = lockdown_size - 96;
	else if ((signed char)lockdown.data[lockdown_size - 103] < 0)
		selected_offset = lockdown_size - 104;
	else if ((signed char)lockdown.data[lockdown_size - 111] < 0)
		selected_offset = lockdown_size - 112;
	else if ((signed char)lockdown.data[lockdown_size - 119] < 0)
		selected_offset = lockdown_size - 120;
	else if ((signed char)lockdown.data[lockdown_size - 127] >= 0)
		selected_offset = lockdown_size - 136;
	else
		selected_offset = lockdown_size - 128;

	memcpy(buffer->data, lockdown.data + selected_offset, 8);
	buffer->data_length = 8;
	memset(tcm->reserved_0034, 0, sizeof(tcm->reserved_0034));
	tcm->reserved_0034[0] = lockdown.data[lockdown_size - 7] >> 7;
	result = 0;

lockdown_cleanup:
	managed_device = syna_request_managed_device();
	if (managed_device && lockdown.data)
		devm_kfree(managed_device, lockdown.data);
	goto out;

success:
	result = 0;
	(void)syna_tcm_get_partition_id_string((enum flash_area)partition_id);

out:
	if (initial_mode == 0x01)
		syna_tcm_switch_fw_mode(tcm, 1, delay_ms);
	if (access.managed_allocation) {
		managed_device = syna_request_managed_device();
		if (managed_device)
			devm_kfree(managed_device, access.managed_allocation);
	}
	return result;
}
