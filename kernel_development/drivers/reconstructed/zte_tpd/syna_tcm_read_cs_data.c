extern int syna_tcm_set_up_flash_access(
	struct tcm_dev *tcm,
	struct syna_tcm_flash_access_context *access,
	u32 timeout_ms,
	u32 mode_delay_ms);
extern int syna_tcm_read_flash_boot_cs_config(
	struct tcm_dev *tcm,
	struct syna_tcm_flash_access_context *access,
	struct tcm_buffer *buffer,
	u32 read_length,
	u32 offset,
	u32 delay_mode);
extern int syna_tcm_switch_fw_mode(struct tcm_dev *tcm, u8 mode,
					   u32 delay_ms);
extern struct device *syna_request_managed_device(void);

static u32 syna_cs_data_round_up(u32 value, u32 alignment)
{
	if (value > 0xffffffffU - (alignment - 1U))
		return 0;
	return ((value + alignment - 1U) / alignment) * alignment;
}

int syna_tcm_read_cs_data(struct tcm_dev *tcm, char *data,
				  unsigned int length, unsigned int offset,
				  unsigned int delay_mode)
{
	struct syna_tcm_flash_access_context access = {};
	struct tcm_buffer boot_config = {};
	struct device *managed_device;
	u32 timeout_ms;
	u32 mode_delay_ms;
	u32 read_length;
	u32 block_size;
	int result = -241;
	int retval;

	if (!tcm || !data || !length) {
		printk("\\0013[error] %s: Invalid parameter\\n",
		       "syna_tcm_read_cs_data");
		return -241;
	}

	timeout_ms = delay_mode ? tcm->command_delay_ms : 0;
	mode_delay_ms = delay_mode ? tcm->timing_01e8 : 0;
	mutex_init(access.mutex);
	mutex_init(boot_config.mutex);

	retval = syna_tcm_set_up_flash_access(tcm, &access, timeout_ms,
						     mode_delay_ms);
	if (retval < 0) {
		result = retval;
		goto cleanup;
	}

	block_size = access.write_block_size_bytes;
	if (block_size)
		read_length = syna_cs_data_round_up(length, block_size);
	else
		read_length = 0;
	if (block_size && !read_length) {
		result = -22;
		goto cleanup;
	}

	retval = syna_tcm_read_flash_boot_cs_config(tcm, &access, &boot_config,
							read_length, offset, delay_mode);
	if (retval < 0) {
		result = retval;
		goto cleanup;
	}
	if (!boot_config.data || boot_config.data_length < length) {
		result = -22;
		goto cleanup;
	}

	memcpy(data, boot_config.data, length);
	result = 0;

cleanup:
	if (tcm->firmware_mode == 0x0b)
		(void)syna_tcm_switch_fw_mode(tcm, 1, mode_delay_ms);
	if (boot_config.lock_depth)
		printk("\\0013[error] %s: Temporary buffer release required\\n",
		       "syna_tcm_read_cs_data");
	managed_device = syna_request_managed_device();
	if (managed_device && boot_config.data)
		devm_kfree(managed_device, boot_config.data);
	else if (!managed_device)
		printk("\\0013[error] %s: Managed free unavailable\\n",
		       "syna_tcm_read_cs_data");
	boot_config.data = NULL;
	boot_config.lock_depth = 0;
	if (access.release_required)
		printk("\\0013[error] %s: Temporary access release required\\n",
		       "syna_tcm_read_cs_data");
	managed_device = syna_request_managed_device();
	if (managed_device && access.managed_allocation)
		devm_kfree(managed_device, access.managed_allocation);
	else if (!managed_device)
		printk("\\0013[error] %s: Managed free unavailable\\n",
		       "syna_tcm_read_cs_data");
	access.managed_allocation = NULL;
	access.release_required = 0;
	return result;
}
