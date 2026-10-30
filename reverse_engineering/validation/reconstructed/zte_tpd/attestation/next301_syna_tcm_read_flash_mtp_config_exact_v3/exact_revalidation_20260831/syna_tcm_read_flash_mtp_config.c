extern struct device *syna_request_managed_device(void);

int syna_tcm_read_flash_mtp_config(
	struct tcm_dev *tcm,
	struct syna_tcm_flash_access_context *access,
	struct tcm_buffer *buffer,
	u32 requested_length,
	int offset,
	int delay_ms)
{
	struct tcm_boot_info *boot_info;
	struct device *managed_device;
	u32 zero_length;
	int retval;

	if (!tcm || !access || !buffer) {
		printk("\\0013[error] %s: Invalid parameter\\n",
		       "syna_tcm_read_flash_mtp_config");
		return -241;
	}
	if (tcm->firmware_mode == 0x01) {
		printk("\\0013[error] %s: Application mode is not supported\\n",
		       "syna_tcm_read_flash_mtp_config");
		return -241;
	}

	boot_info = access->boot_info;
	if (!boot_info || boot_info->version != 0x03) {
		printk("\\0013[error] %s: Unsupported boot version\\n",
		       "syna_tcm_read_flash_mtp_config");
		return -241;
	}
	if (!requested_length)
		requested_length = access->erase_page_size_bytes;
	if (!requested_length) {
		printk("\\0013[error] %s: Invalid read length\\n",
		       "syna_tcm_read_flash_mtp_config");
		return -241;
	}

	zero_length = buffer->buf_size;
	if (buffer->buf_size < requested_length) {
		if (buffer->data) {
			managed_device = syna_request_managed_device();
			if (managed_device)
				devm_kfree(managed_device, buffer->data);
			else {
				printk("\\0013[error] %s: Managed free unavailable\\n",
				       "syna_tcm_read_flash_mtp_config");
				managed_device = syna_request_managed_device();
			}
		} else {
			managed_device = syna_request_managed_device();
		}
		if (!managed_device) {
			buffer->data = NULL;
			buffer->buf_size = 0;
			printk("\\0013[error] %s: Managed allocation unavailable\\n",
			       "syna_tcm_read_flash_mtp_config");
			return -243;
		}
		buffer->data = devm_kmalloc(managed_device, requested_length, 3520);
		if (!buffer->data) {
			buffer->buf_size = 0;
			printk("\\0013[error] %s: Allocation failed\\n",
			       "syna_tcm_read_flash_mtp_config");
			return -243;
		}
		buffer->buf_size = requested_length;
		zero_length = requested_length;
	}
	if (!buffer->data) {
		printk("\\0013[error] %s: Missing destination buffer\\n",
		       "syna_tcm_read_flash_mtp_config");
		return -22;
	}

	memset(buffer->data, 0, zero_length);
	buffer->data_length = 0;
	retval = syna_tcm_read_flash(tcm,
				     access->v3_page_size_bytes + (u32)offset,
				     buffer->data, requested_length, delay_ms);
	if (retval < 0) {
		printk("\\0013[error] %s: Flash read failed\\n",
		       "syna_tcm_read_flash_mtp_config");
		return retval;
	}
	buffer->data_length = requested_length;
	return retval;
}
