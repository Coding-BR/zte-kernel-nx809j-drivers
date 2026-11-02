extern int syna_tcm_set_up_flash_access(
	struct tcm_dev *tcm,
	struct syna_tcm_flash_access_context *access,
	u32 timeout_ms,
	u32 mode_delay_ms);
extern struct device *syna_request_managed_device(void);
extern int syna_tcm_switch_fw_mode(struct tcm_dev *tcm, u8 mode,
					   u32 delay_ms);

static u32 syna_tcm_erase_count(u32 page_size, u32 unit_size)
{
	if (!unit_size)
		return 0;
	return (page_size + unit_size - 1U) / unit_size;
}

int syna_tcm_erase_mtp_data(struct tcm_dev *tcm, unsigned int delay_mode)
{
	struct syna_tcm_flash_access_context access = {};
	struct device *managed_device;
	u8 command_data[4] = {};
	u32 timeout_ms;
	u32 mode_delay_ms;
	u32 erase_count;
	u32 block_count;
	u32 command_length;
	u32 command_delay;
	u32 erase_page_size;
	u32 write_block_size;
	u32 page_size;
	int result = 0;
	int retval;

	if (!tcm) {
		printk("\\0013[error] %s: Invalid parameter\\n",
		       "syna_tcm_erase_mtp_data");
		return -241;
	}

	timeout_ms = delay_mode ? tcm->command_delay_ms : 0;
	mode_delay_ms = delay_mode ? tcm->timing_01e8 : 0;
	mutex_init(access.mutex);

	retval = syna_tcm_set_up_flash_access(tcm, &access, timeout_ms,
						     mode_delay_ms);
	if (retval < 0) {
		result = retval;
		goto cleanup;
	}

	if (!access.boot_info || access.boot_info->version < 3)
		goto cleanup;

	erase_page_size = access.erase_page_size_bytes;
	page_size = access.v3_page_size_bytes;
	write_block_size = delay_mode ? tcm->command_delay_ms : 0;
	block_count = syna_tcm_erase_count(page_size, erase_page_size);
	erase_count = syna_tcm_erase_count(
		erase_page_size * (u32)access.boot_info->v3_page_size_words,
		erase_page_size);

	if ((block_count | erase_count) < 0x100U) {
		command_length = 2;
		command_data[0] = (u8)block_count;
		command_data[1] = (u8)erase_count;
	} else {
		command_length = 4;
		command_data[0] = (u8)block_count;
		command_data[1] = (u8)(block_count >> 8);
		command_data[2] = (u8)erase_count;
		command_data[3] = (u8)(erase_count >> 8);
	}

	command_delay = erase_count * write_block_size;
	if (tcm->firmware_mode != 0x0b)
		printk("\\0013[error] %s: Firmware mode is not bootloader\\n",
		       "syna_tcm_reflash_send_command");
	if (!command_delay) {
		if (!tcm->transport || !(tcm->transport->flags & 1U))
			command_delay = tcm->command_delay_ms;
		else
			command_delay = 0;
	}
	if (!tcm->write_message) {
		result = -241;
		goto cleanup;
	}

	retval = tcm->write_message(tcm, 0x11, command_data, command_length,
					    NULL, command_delay);
	if (retval < 0)
		result = retval;

cleanup:
	if (tcm->firmware_mode == 0x0b)
		(void)syna_tcm_switch_fw_mode(tcm, 1, mode_delay_ms);
	if (access.release_required)
		printk("\\0013[error] %s: Temporary buffer release required\\n",
		       "syna_tcm_erase_mtp_data");
	managed_device = syna_request_managed_device();
	if (managed_device && access.managed_allocation)
		devm_kfree(managed_device, access.managed_allocation);
	else if (!managed_device)
		printk("\\0013[error] %s: Managed free unavailable\\n",
		       "syna_tcm_erase_mtp_data");
	access.managed_allocation = NULL;
	access.release_required = 0;
	return result;
}
