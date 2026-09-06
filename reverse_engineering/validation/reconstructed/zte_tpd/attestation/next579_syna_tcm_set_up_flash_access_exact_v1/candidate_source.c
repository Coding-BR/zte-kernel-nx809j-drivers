int syna_tcm_set_up_flash_access(struct tcm_dev *tcm,
				 struct syna_tcm_flash_access_context *access,
				 unsigned int timeout_ms,
				 unsigned int mode_delay_ms)
{
	struct tcm_identification_info identify_info = {};
	struct tcm_boot_info *boot_info;
	int retval;
	u32 max_read_size;
	u32 write_block_size;
	u32 erase_page_size;
	u32 max_write_payload;
	u64 i;

	if (!access) {
		printk("\0013[error] %s: Invalid access context\n",
		       "syna_tcm_set_up_flash_access");
		return -241;
	}

	printk("\0016[info] %s: identify timeout=%u\n",
	       "syna_tcm_set_up_flash_access", timeout_ms);
	retval = syna_tcm_identify(tcm, &identify_info, timeout_ms);
	if (retval < 0) {
		printk("\0013[error] %s: Failed to identify device\n",
		       "syna_tcm_set_up_flash_access");
		return retval;
	}

	if (identify_info.mode == 0x01) {
		printk("\0016[info] %s: Switching to bootloader\n",
		       "syna_tcm_set_up_flash_access");
		retval = syna_tcm_switch_fw_mode(tcm, 0x0b, mode_delay_ms);
		if (retval < 0) {
			printk("\0013[error] %s: Failed to switch firmware mode\n",
			       "syna_tcm_set_up_flash_access");
			return retval;
		}
	}

	if (tcm->firmware_mode != 0x0b) {
		printk("\0013[error] %s: Device is not in bootloader mode\n",
		       "syna_tcm_set_up_flash_access");
		return retval;
	}

	for (i = 0; i < 0x10; ++i) {
		if (tcm->identification_info.part_number[i] == ':') {
			if (i > 0x0c)
				__break(0x5512u);
			if (tcm->identification_info.part_number[i + 3] & 0x20)
				access->setup_release_required = 1;
		}
	}

	access->boot_info = &tcm->boot_info;
	retval = syna_tcm_get_boot_info(tcm, access->boot_info, timeout_ms);
	if (retval < 0) {
		printk("\0013[error] %s: Failed to read boot information\n",
		       "syna_tcm_set_up_flash_access");
		return retval;
	}

	boot_info = access->boot_info;
	write_block_size = (u32)boot_info->write_block_size_words * 2;
	erase_page_size = ((u32)boot_info->erase_page_size_words[0] |
			   ((u32)boot_info->erase_page_size_words[1] << 8)) * 2;
	max_write_payload = (u32)boot_info->max_write_payload_size[0] |
			   ((u32)boot_info->max_write_payload_size[1] << 8);
	access->write_block_size_bytes = write_block_size;
	access->erase_page_size_bytes = erase_page_size;
	access->max_write_payload_size = max_write_payload;

	max_read_size = tcm->max_read_size;
	if (max_read_size && access->write_block_size_bytes > max_read_size)
		access->write_block_size_bytes = max_read_size;
	else if (!access->write_block_size_bytes) {
		printk("\0013[error] %s: Invalid write block size\n",
		       "syna_tcm_set_up_flash_access");
		return -241;
	}

	if (!access->erase_page_size_bytes) {
		printk("\0013[error] %s: Invalid erase page size\n",
		       "syna_tcm_set_up_flash_access");
		return -241;
	}

	if (boot_info->version == 0x03)
		access->v3_page_size_bytes = access->erase_page_size_bytes *
			boot_info->v3_page_size_words;

	return 0;
}
