extern int syna_tcm_set_up_flash_access(
	struct tcm_dev *tcm,
	struct syna_tcm_flash_access_context *access,
	u32 timeout_ms,
	u32 mode_delay_ms);
extern int syna_tcm_write_flash(
	struct tcm_dev *tcm,
	struct syna_tcm_flash_access_context *access,
	int data_size,
	u8 *data,
	u32 data_length,
	u32 delay_ms);
extern struct device *syna_request_managed_device(void);
extern void *devm_kmalloc(struct device *device, size_t size,
				  unsigned int flags);
extern int syna_tcm_switch_fw_mode(struct tcm_dev *tcm, u8 mode,
					   u32 delay_ms);

static u32 syna_mtp_round_up(u32 value, u32 alignment)
{
	if (value > 0xffffffffU - (alignment - 1U))
		return 0;
	return ((value + alignment - 1U) / alignment) * alignment;
}

int syna_tcm_update_mtp_data(struct tcm_dev *tcm, char *data,
				      unsigned int length, unsigned int offset,
				      unsigned int delay_mode)
{
	struct syna_tcm_flash_access_context access = {};
	struct device *managed_device;
	struct tcm_boot_info *boot_info;
	void *payload = NULL;
	u32 timeout_ms;
	u32 mode_delay_ms;
	u32 block_size;
	u32 aligned_offset;
	u32 rounded_length;
	u32 flash_offset;
	int result = -241;
	int retval;

	if (!tcm || !data || !length) {
		printk("\\0013[error] %s: Invalid parameter\\n",
		       "syna_tcm_update_mtp_data");
		return -241;
	}

	timeout_ms = delay_mode ? tcm->command_delay_ms : 0;
	mode_delay_ms = delay_mode ? tcm->timing_01e8 : 0;
	mutex_init(access.mutex);
	*(u32 *)((u8 *)tcm + 0x388) = 1;

	retval = syna_tcm_set_up_flash_access(tcm, &access, timeout_ms,
						     mode_delay_ms);
	if (retval < 0) {
		result = retval;
		goto cleanup;
	}

	boot_info = access.boot_info;
	if (!boot_info || boot_info->version < 3) {
		result = retval;
		goto cleanup;
	}

	block_size = access.write_block_size_bytes;
	if (!block_size) {
		result = retval;
		goto cleanup;
	}
	aligned_offset = offset ? syna_mtp_round_up(offset, block_size) : 0;
	rounded_length = syna_mtp_round_up(length, block_size);
	if ((offset && !aligned_offset) || !rounded_length ||
		rounded_length < length) {
		result = -22;
		goto cleanup;
	}
	if (access.v3_page_size_bytes > 0x7fffffffU - aligned_offset) {
		result = -22;
		goto cleanup;
	}
	flash_offset = access.v3_page_size_bytes + aligned_offset;

	managed_device = syna_request_managed_device();
	if (!managed_device || rounded_length < 1) {
		result = -243;
		goto cleanup;
	}
	payload = devm_kmalloc(managed_device, rounded_length, 0xdc0);
	if (!payload) {
		result = -243;
		goto cleanup;
	}
	memcpy(payload, data, length);
	retval = syna_tcm_write_flash(tcm, &access, (int)flash_offset,
					      payload, rounded_length, delay_mode);
	result = retval < 0 ? retval : (int)rounded_length;

cleanup:
	if (tcm->firmware_mode == 0x0b)
		(void)syna_tcm_switch_fw_mode(tcm, 1, mode_delay_ms);
	*(u32 *)((u8 *)tcm + 0x388) = 0;
	if (access.release_required)
		printk("\\0013[error] %s: Temporary buffer release required\\n",
		       "syna_tcm_update_mtp_data");
	managed_device = syna_request_managed_device();
	if (managed_device && access.managed_allocation)
		devm_kfree(managed_device, access.managed_allocation);
	else if (!managed_device)
		printk("\\0013[error] %s: Managed free unavailable\\n",
		       "syna_tcm_update_mtp_data");
	access.managed_allocation = NULL;
	access.release_required = 0;
	return result;
}
