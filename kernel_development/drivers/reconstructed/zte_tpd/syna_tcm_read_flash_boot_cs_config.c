extern struct device *syna_request_managed_device(void);

int syna_tcm_read_flash_boot_cs_config(
	struct tcm_dev *tcm,
	struct syna_tcm_flash_access_context *access,
	struct tcm_buffer *buffer,
	u32 requested_length,
	int offset,
	int delay_ms)
{
	struct tcm_buffer temporary = {};
	struct tcm_boot_info *boot_info;
	struct device *managed_device;
	u8 *boot_bytes;
	u32 temporary_length;
	u32 selected_length;
	u32 scan;
	u32 base_offset = 0;
	int retval;
	int result = -241;

	if (!tcm || !access || !buffer) {
		printk("\\0013[error] %s: Invalid parameter\\n",
		       "syna_tcm_read_flash_boot_cs_config");
		return -241;
	}
	if (tcm->firmware_mode == 0x01) {
		printk("\\0013[error] %s: Application mode is not supported\\n",
		       "syna_tcm_read_flash_boot_cs_config");
		return -241;
	}

	boot_info = access->boot_info;
	if (!boot_info) {
		printk("\\0013[error] %s: Missing boot information\\n",
		       "syna_tcm_read_flash_boot_cs_config");
		return -241;
	}
	if (boot_info->version != 0x01 && boot_info->version != 0x03) {
		printk("\\0013[error] %s: Unsupported boot version=%u\\n",
		       "syna_tcm_read_flash_boot_cs_config",
		       (unsigned int)boot_info->version);
		return -241;
	}

	boot_bytes = (u8 *)boot_info;
	if (requested_length == 0) {
		retval = syna_tcm_read_flash_boot_config(tcm, access, &temporary,
							 delay_ms);
		if (retval < 0) {
			result = retval;
			goto cleanup_temporary;
		}

		temporary_length = temporary.data_length;
		if (!temporary.data || temporary_length < 0x88 ||
			temporary_length > temporary.buf_size) {
			result = -22;
			goto cleanup_temporary;
		}

		if (buffer->buf_size < temporary_length) {
			if (buffer->data) {
				managed_device = syna_request_managed_device();
				if (managed_device)
					devm_kfree(managed_device, buffer->data);
				else
					managed_device = syna_request_managed_device();
			}
			buffer->data = NULL;
			buffer->buf_size = 0;
			managed_device = syna_request_managed_device();
			if (!managed_device)
				managed_device = syna_request_managed_device();
			if (!managed_device) {
				result = -243;
				goto cleanup_temporary;
			}
			buffer->data = devm_kmalloc(managed_device, temporary_length,
							    3520);
			if (!buffer->data) {
				result = -243;
				goto cleanup_temporary;
			}
			buffer->buf_size = temporary_length;
		}
		if (!buffer->data) {
			result = -22;
			goto cleanup_temporary;
		}

		memset(buffer->data, 0, buffer->buf_size);
		buffer->data_length = 0;
		selected_length = temporary_length - 0x88;
		for (scan = 0x80; scan; scan -= 8) {
			if ((signed char)temporary.data[temporary_length + scan - 0x87] < 0 &&
			    (signed char)temporary.data[temporary_length + scan - 0x8f] >= 0) {
				selected_length = temporary_length + scan - 0x88;
				break;
			}
		}
		if (selected_length > buffer->buf_size ||
			selected_length > temporary.buf_size) {
			result = -22;
			goto cleanup_temporary;
		}
		memcpy(buffer->data, temporary.data, selected_length);
		buffer->data_length = selected_length;
		result = 0;
		goto cleanup_temporary;
	}

	if (boot_info->version == 0x01)
		base_offset = ((u32)boot_bytes[0x0c] |
				      ((u32)boot_bytes[0x0d] << 8)) *
			     access->write_block_size_bytes;
	else
		base_offset = ((u32)boot_bytes[0x10] |
				      ((u32)boot_bytes[0x11] << 8)) *
			     access->write_block_size_bytes;

	managed_device = syna_request_managed_device();
	if (!managed_device)
		managed_device = syna_request_managed_device();
	if (!managed_device) {
		result = -243;
		goto cleanup_temporary;
	}
	temporary.data = devm_kmalloc(managed_device, requested_length, 3520);
	if (!temporary.data) {
		result = -243;
		goto cleanup_temporary;
	}
	temporary.buf_size = requested_length;
	memset(temporary.data, 0, temporary.buf_size);

	if (buffer->buf_size < requested_length) {
		if (buffer->data) {
			managed_device = syna_request_managed_device();
			if (managed_device)
				devm_kfree(managed_device, buffer->data);
		}
		buffer->data = NULL;
		buffer->buf_size = 0;
		managed_device = syna_request_managed_device();
		if (!managed_device)
			managed_device = syna_request_managed_device();
		if (!managed_device) {
			result = -243;
			goto cleanup_temporary;
		}
		buffer->data = devm_kmalloc(managed_device, requested_length, 3520);
		if (!buffer->data) {
			result = -243;
			goto cleanup_temporary;
		}
		buffer->buf_size = requested_length;
	}
	if (!buffer->data) {
		result = -22;
		goto cleanup_temporary;
	}

	memset(buffer->data, 0, buffer->buf_size);
	buffer->data_length = 0;
	retval = syna_tcm_read_flash(tcm, base_offset + (u32)offset,
					 temporary.data, requested_length, delay_ms);
	if (retval < 0) {
		result = retval;
		goto cleanup_temporary;
	}
	if (requested_length > buffer->buf_size ||
		requested_length > temporary.buf_size) {
		result = -22;
		goto cleanup_temporary;
	}
	memcpy(buffer->data, temporary.data, requested_length);
	buffer->data_length = requested_length;
	result = 0;

cleanup_temporary:
	if (temporary.data) {
		managed_device = syna_request_managed_device();
		if (managed_device)
			devm_kfree(managed_device, temporary.data);
	}
	return result;
}
