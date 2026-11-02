struct syna_tcm_fw_partition {
	u8 reserved_0000[0x08];
	u8 *data;
	u32 data_length;
	u32 data_size;
	u8 partition_id;
	u8 reserved_0019[0x07];
};

static u16 syna_tcm_check_read_le16(const u8 *bytes)
{
	return (u16)bytes[0] | ((u16)bytes[1] << 8);
}

static u32 syna_tcm_check_partition_code(u8 partition_id)
{
	u32 value = (u32)partition_id - 1;

	return (value >> 1) | (value << 31);
}

int syna_tcm_check_flash_block(
	struct tcm_dev *tcm,
	struct syna_tcm_flash_access_context *access,
	struct syna_tcm_fw_partition *partition)
{
	u32 partition_code;
	u32 partition_length;
	u32 expected_size;
	u32 app_config_start_block;
	u32 app_config_size;
	u32 boot_block_count;
	u32 boot_version;
	const u8 *boot_bytes;
	int result = 0;

	if (!access) {
		printk("\\0013[error] %s: Invalid access context\\n",
		       "syna_tcm_check_flash_block");
		return -241;
	}
	if (!partition) {
		printk("\\0013[error] %s: Invalid partition\\n",
		       "syna_tcm_check_flash_block");
		return -241;
	}

	partition_code = syna_tcm_check_partition_code(partition->partition_id);
	if (partition_code <= 2) {
		if (partition_code == 0) {
			if (!partition->data_size)
				return -241;
			return partition->data_size;
		}
		if (partition_code != 1)
			return 0;

		partition_length = partition->data_length;
		if (!partition_length)
			return 0;
		if (!tcm)
			return -241;

		app_config_start_block = syna_tcm_check_read_le16(
			tcm->application_info.app_config_start_write_block);
		app_config_size = syna_tcm_check_read_le16(
			tcm->application_info.app_config_size);
		expected_size = app_config_start_block *
			access->write_block_size_bytes;
		if (!expected_size && !app_config_size)
			return partition_length;
		if (partition->data_size != expected_size) {
			printk("\\0013[error] %s: App config size mismatch\\n",
			       "syna_tcm_check_flash_app_config");
			return -241;
		}
		if (partition_length != app_config_size)
			printk("\\0016[info] %s: App config length differs\\n",
			       "syna_tcm_check_flash_app_config");
		return partition_length;
	}

	if (partition_code == 3)
		return partition->data_length;
	if (partition_code != 9)
		return result;

	partition_length = partition->data_length;
	if (partition_length <= 7) {
		printk("\\0013[error] %s: Tool boot config is too short\\n",
		       "syna_tcm_check_flash_tool_boot_config");
		return -241;
	}
	boot_bytes = (const u8 *)access->boot_info;
	if (!boot_bytes) {
		printk("\\0013[error] %s: Missing boot information\\n",
		       "syna_tcm_check_flash_tool_boot_config");
		return -241;
	}
	boot_version = boot_bytes[0];
	if ((boot_version | 2U) != 3U) {
		printk("\\0013[error] %s: Unsupported boot version\\n",
		       "syna_tcm_check_flash_tool_boot_config");
		return -241;
	}
	if (boot_version == 1)
		boot_block_count = syna_tcm_check_read_le16(boot_bytes + 0x0c);
	else if (boot_version == 3)
		boot_block_count = syna_tcm_check_read_le16(boot_bytes + 0x10);
	else
		boot_block_count = 0;

	expected_size = boot_block_count * access->write_block_size_bytes;
	if (partition->data_size == expected_size)
		return partition_length;
	printk("\\0013[error] %s: Tool boot config size mismatch\\n",
	       "syna_tcm_check_flash_tool_boot_config");
	return -241;
}
