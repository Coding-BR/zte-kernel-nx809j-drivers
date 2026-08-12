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
extern int syna_tcm_check_flash_block(
	struct tcm_dev *tcm,
	struct syna_tcm_flash_access_context *access,
	void *partition);
extern int syna_tcm_write_flash(
	struct tcm_dev *tcm,
	struct syna_tcm_flash_access_context *access,
	int data_size,
	u8 *data,
	u32 data_length,
	u32 delay_ms);
extern int syna_tcm_switch_fw_mode(struct tcm_dev *tcm, u8 mode,
					   u32 delay_ms);
extern char *syna_tcm_get_partition_id_string(enum flash_area partition_id);
extern struct device *syna_request_managed_device(void);
extern void mutex_init(void *lock);
extern void devm_kfree(struct device *device, void *memory);

static u32 syna_lockdown_read_u32(const void *base, u32 offset)
{
	const u8 *bytes = (const u8 *)base + offset;

	return (u32)bytes[0] | ((u32)bytes[1] << 8) |
		((u32)bytes[2] << 16) | ((u32)bytes[3] << 24);
}

static void *syna_lockdown_read_ptr(const void *base, u32 offset)
{
	void *value;

	memcpy(&value, (const u8 *)base + offset, sizeof(value));
	return value;
}

int syna_tcm_update_lockdown_config(struct tcm_dev *tcm,
					    void *config,
					    u32 delay_ms)
{
	struct syna_tcm_flash_access_context access = {};
	struct tcm_buffer boot_config = {};
	struct device *managed_device;
	const u8 *lockdown_data;
	void *boot_data;
	u32 lockdown_length;
	u32 timeout_ms;
	u32 mode_delay_ms;
	u32 v3_page_size_bytes;
	u32 boot_status_offset;
	int result = -241;
	int retval;

	if (!tcm || !config || !syna_lockdown_read_u32(config, 0)) {
		printk("\\0013[error] %s: Invalid parameter\\n",
		       "syna_tcm_update_lockdown_config");
		return -241;
	}

	if (*(const u8 *)((const u8 *)config + 0x270) != 1 ||
	    !syna_lockdown_read_ptr(config, 0x278)) {
		(void)syna_tcm_get_partition_id_string(
			*(const u8 *)((const u8 *)config + 0x288));
		printk("\\0013[error] %s: Lockdown partition unavailable\\n",
		       "syna_tcm_update_lockdown_config");
		return -241;
	}
	lockdown_length = syna_lockdown_read_u32(config, 0x280);
	if (lockdown_length <= 7) {
		printk("\\0013[error] %s: Lockdown partition is too short\\n",
		       "syna_tcm_update_lockdown_config");
		return -241;
	}

	lockdown_data = syna_lockdown_read_ptr(config, 0x278);
	timeout_ms = delay_ms ? tcm->command_delay_ms : 0;
	mode_delay_ms = delay_ms ? tcm->timing_01e8 : 0;
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
	if (!boot_data || boot_config.data_length < 7) {
		result = -22;
		goto cleanup;
	}
	boot_status_offset = boot_config.data_length - 7;
	if (((const signed char *)boot_data)[boot_status_offset] < 0) {
		printk("\\0016[info] %s: Lockdown is already unavailable\\n",
		       "syna_tcm_update_lockdown_config");
		result = 0;
		goto cleanup;
	}

	retval = syna_tcm_check_flash_block(tcm, &access,
						   (u8 *)config + 0x270);
	if (retval <= 0) {
		(void)syna_tcm_get_partition_id_string(
			*(const u8 *)((const u8 *)config + 0x288));
		result = retval;
		goto cleanup;
	}

	/* Stock reads this word at access +0x38 before appending length - 8. */
	v3_page_size_bytes = syna_lockdown_read_u32(&access, 0x38);
	retval = syna_tcm_write_flash(
		tcm, &access, (int)(v3_page_size_bytes + lockdown_length - 8),
		(u8 *)lockdown_data + lockdown_length - 8, 8, delay_ms);
	result = retval < 0 ? retval : 8;

cleanup:
	if (*(u8 *)((u8 *)tcm + 9) == 0x0b)
		(void)syna_tcm_switch_fw_mode(tcm, 1, mode_delay_ms);
	*(u32 *)((u8 *)tcm + 0x388) = 0;
	if (access.release_required)
		printk("\\0013[error] %s: Temporary buffer release required\\n",
		       "syna_tcm_update_lockdown_config");
	if (boot_config.data) {
		managed_device = syna_request_managed_device();
		if (managed_device)
			devm_kfree(managed_device, boot_config.data);
		else
			printk("\\0013[error] %s: Managed free unavailable\\n",
			       "syna_tcm_update_lockdown_config");
	}
	if (access.managed_allocation) {
		managed_device = syna_request_managed_device();
		if (managed_device)
			devm_kfree(managed_device, access.managed_allocation);
		else
			printk("\\0013[error] %s: Managed free unavailable\\n",
			       "syna_tcm_update_lockdown_config");
	}
	return result;
}
