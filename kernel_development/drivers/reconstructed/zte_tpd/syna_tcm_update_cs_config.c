extern int syna_tcm_set_up_flash_access(
	struct tcm_dev *tcm,
	struct syna_tcm_flash_access_context *access,
	u32 timeout_ms,
	u32 mode_delay_ms);
extern int syna_tcm_read_flash_boot_config(
	struct tcm_dev *tcm,
	struct syna_tcm_flash_access_context *access,
	struct tcm_buffer *buffer,
	int delay_ms);
extern int syna_tcm_write_flash(
	struct tcm_dev *tcm,
	struct syna_tcm_flash_access_context *access,
	int data_size,
	u8 *data,
	u32 data_length,
	u32 delay_ms);
extern int syna_tcm_switch_fw_mode(struct tcm_dev *tcm, u8 mode,
					   u32 delay_ms);
extern struct device *syna_request_managed_device(void);
extern void mutex_init(void *lock);
extern void devm_kfree(struct device *device, void *memory);

static u32 syna_cs_config_read_u32(const void *base, u32 offset)
{
	const u8 *bytes = (const u8 *)base + offset;

	return (u32)bytes[0] | ((u32)bytes[1] << 8) |
		((u32)bytes[2] << 16) | ((u32)bytes[3] << 24);
}

static u32 syna_cs_config_round_up(u32 value, u32 alignment)
{
	if (value > 0xffffffffU - (alignment - 1U))
		return 0;
	return ((value + alignment - 1U) / alignment) * alignment;
}

int syna_tcm_update_cs_config(struct tcm_dev *tcm, char *data,
				      unsigned int length, unsigned int offset,
				      unsigned int delay_mode)
{
	struct syna_tcm_flash_access_context access = {};
	struct tcm_buffer boot_config = {};
	struct device *managed_device;
	u8 *boot_data;
	u32 timeout_ms;
	u32 mode_delay_ms;
	u32 boot_length;
	u32 scan_end;
	u32 max_offset;
	u32 cursor;
	u32 block_size;
	u32 rounded_length;
	u32 flash_base;
	u32 scan_index;
	u32 zero_count;
	u32 i;
	int result = -241;
	int retval;

	if (!tcm || !data || !length) {
		printk("\\0013[error] %s: Invalid parameter\\n",
		       "syna_tcm_update_cs_config");
		return -241;
	}

	timeout_ms = delay_mode ? tcm->command_delay_ms : 0;
	mode_delay_ms = delay_mode ? tcm->timing_01e8 : 0;
	mutex_init(access.mutex);
	mutex_init(boot_config.mutex);
	*(u32 *)((u8 *)tcm + 0x388) = 1;

	retval = syna_tcm_set_up_flash_access(tcm, &access, timeout_ms,
						     mode_delay_ms);
	if (retval < 0) {
		result = retval;
		goto cleanup;
	}

	retval = syna_tcm_read_flash_boot_config(tcm, &access, &boot_config,
							(int)timeout_ms);
	if (retval < 0) {
		result = retval;
		goto cleanup;
	}

	boot_data = boot_config.data;
	boot_length = boot_config.data_length;
	if (!boot_data || boot_length < 0x8f) {
		result = -22;
		goto cleanup;
	}

	scan_end = boot_length;
	for (i = 0x80; i != 0; i -= 8) {
		scan_index = boot_length + i;
		if (scan_index < 0x8f)
			continue;
		if (((const signed char *)boot_data)[scan_index - 0x87] < 0 &&
		    ((const signed char *)boot_data)[scan_index - 0x8f] >= 0) {
			scan_end = scan_index;
			break;
		}
	}
	if (scan_end < 0x88) {
		result = -22;
		goto cleanup;
	}
	max_offset = scan_end - 0x88;
	if (max_offset < length) {
		result = retval;
		goto cleanup;
	}

	block_size = access.write_block_size_bytes;
	if (!block_size) {
		result = retval;
		goto cleanup;
	}
	if (offset && offset > 0xffffffffU - (block_size - 1U)) {
		result = -22;
		goto cleanup;
	}
	cursor = offset ? syna_cs_config_round_up(offset, block_size) : 0;
	if (!cursor && offset) {
		result = -22;
		goto cleanup;
	}

	while (cursor < max_offset) {
		if (boot_data[cursor] == 0) {
			zero_count = 0;
			while (zero_count < block_size &&
			       cursor + zero_count < max_offset &&
			       boot_data[cursor + zero_count] == 0)
				++zero_count;
			if (zero_count == block_size)
				break;
		}
		if (cursor > 0xffffffffU - block_size)
			break;
		cursor += block_size;
	}
	if (cursor > max_offset) {
		result = retval;
		goto cleanup;
	}

	rounded_length = syna_cs_config_round_up(length, block_size);
	if (!rounded_length || cursor > max_offset ||
		rounded_length > max_offset - cursor) {
		result = -22;
		goto cleanup;
	}
	memcpy(boot_data + cursor, data, length);
	flash_base = syna_cs_config_read_u32(&access, 0x38);
	if (flash_base > 0x7fffffffU - cursor) {
		result = -22;
		goto cleanup;
	}
	retval = syna_tcm_write_flash(tcm, &access,
					      (int)(flash_base + cursor),
					      boot_data + cursor, rounded_length,
					      delay_mode);
	result = retval < 0 ? retval : (int)rounded_length;

cleanup:
	if (tcm->firmware_mode == 0x0b)
		(void)syna_tcm_switch_fw_mode(tcm, 1, mode_delay_ms);
	*(u32 *)((u8 *)tcm + 0x388) = 0;
	if (boot_config.lock_depth)
		printk("\\0013[error] %s: Temporary buffer release required\\n",
		       "syna_tcm_update_cs_config");
	managed_device = syna_request_managed_device();
	if (managed_device && boot_config.data)
		devm_kfree(managed_device, boot_config.data);
	else if (!managed_device)
		printk("\\0013[error] %s: Managed free unavailable\\n",
		       "syna_tcm_update_cs_config");
	boot_config.data = NULL;
	boot_config.lock_depth = 0;
	if (access.release_required)
		printk("\\0013[error] %s: Temporary access release required\\n",
		       "syna_tcm_update_cs_config");
	managed_device = syna_request_managed_device();
	if (managed_device && access.managed_allocation)
		devm_kfree(managed_device, access.managed_allocation);
	else if (!managed_device)
		printk("\\0013[error] %s: Managed free unavailable\\n",
		       "syna_tcm_update_cs_config");
	access.managed_allocation = NULL;
	access.release_required = 0;
	return result;
}
