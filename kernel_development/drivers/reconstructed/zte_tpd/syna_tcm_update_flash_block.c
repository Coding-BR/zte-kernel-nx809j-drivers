extern struct device *syna_request_managed_device(void);

struct syna_tcm_fw_partition {
	u8 reserved_0000[0x08];
	u8 *data;
	u32 data_length;
	u32 data_size;
	u8 partition_id;
	u8 reserved_0019[0x07];
};

/* The shared context names +0x40 for the same stock allocation pointer. */
#define SYNA_ACCESS_DATA(ctx) ((u8 *)(ctx)->managed_allocation)
#define SYNA_ACCESS_BUF_SIZE(ctx) (*(u32 *)((u8 *)(ctx) + 0x48))
#define SYNA_ACCESS_DATA_LENGTH(ctx) (*(u32 *)((u8 *)(ctx) + 0x4c))

int syna_tcm_update_flash_block(
	struct tcm_dev *tcm,
	struct syna_tcm_flash_access_context *access,
	struct syna_tcm_fw_partition *partition,
	int data_offset,
	u32 delay_ms,
	u8 optimize)
{
	const char *partition_name;
	struct device *managed_device;
	struct tcm_transport_overlay *transport;
	u8 command_payload[4] = {};
	u8 *source;
	u8 *destination;
	u32 erase_page_size;
	u32 write_block_size;
	u32 max_payload_blocks;
	u32 max_payload_bytes;
	u32 erase_blocks;
	u32 partition_blocks;
	u32 chunk;
	u32 chunk_with_header;
	u32 zero_length;
	u32 remaining;
	u32 processed;
	u32 total_blocks;
	u32 bytes_written;
	u32 delay;
	u32 result;
	u32 check_result;
	u32 block_index;
	u16 command_length;
	int retval;
	int result_code = -241;
	bool locked = false;

	if (!tcm || !access || !partition) {
		printk("\\0013[error] %s: Invalid parameter\\n",
		       "syna_tcm_update_flash_block");
		return -241;
	}

	transport = tcm->transport;
	check_result = syna_tcm_check_flash_block(tcm, access, partition);
	if ((int)check_result < 0) {
		partition_name = syna_tcm_get_partition_id_string(partition->partition_id);
		printk("\\0013[error] %s: Flash block check failed for %s\\n",
		       "syna_tcm_update_flash_block", partition_name);
		goto final_update_error;
	}
	if (!check_result)
		return 0;

	partition_name = syna_tcm_get_partition_id_string(partition->partition_id);
	printk("\\0016[info] %s: Updating partition %s\\n",
	       "syna_tcm_update_flash_block", partition_name);

	erase_page_size = access->erase_page_size_bytes;
	write_block_size = access->write_block_size_bytes;
	if (!(optimize & 1)) {
		if (!partition->data_length)
			goto write_path;
		if (!erase_page_size || partition->data_size % erase_page_size) {
			partition_name = syna_tcm_get_partition_id_string(
				partition->partition_id);
			printk("\\0013[error] %s: Erase geometry invalid for %s\\n",
			       "syna_tcm_update_flash_block", partition_name);
			result_code = -241;
			goto final_update_error;
		}

		erase_blocks = partition->data_size / erase_page_size;
		partition_blocks = (partition->data_length + erase_page_size - 1) /
				erase_page_size;
		if ((erase_blocks | partition_blocks) >= 0x100) {
			command_length = 4;
			command_payload[0] = (u8)erase_blocks;
			command_payload[1] = (u8)(erase_blocks >> 8);
			command_payload[2] = (u8)partition_blocks;
			command_payload[3] = (u8)(partition_blocks >> 8);
		} else {
			command_length = 2;
			command_payload[0] = (u8)erase_blocks;
			command_payload[1] = (u8)partition_blocks;
		}
		delay = partition_blocks * (u32)data_offset;
		if (!delay) {
			if (transport && (transport->flags & 1))
				delay = 0;
			else
				delay = tcm->command_delay_ms;
		}
		if (!tcm->write_message) {
			result_code = -241;
			goto final_update_error;
		}
		retval = tcm->write_message(tcm, 0x11, command_payload,
						    command_length, NULL, delay);
		if (retval < 0) {
			partition_name = syna_tcm_get_partition_id_string(
				partition->partition_id);
			printk("\\0013[error] %s: Erase failed for %s\\n",
			       "syna_tcm_update_flash_block", partition_name);
			result_code = retval;
			goto final_update_error;
		}
	}

write_path:
	partition_name = syna_tcm_get_partition_id_string(partition->partition_id);
	printk("\\0016[info] %s: Writing partition %s\\n",
	       "syna_tcm_update_flash_block", partition_name);
	if (!partition->data_length) {
		partition_name = syna_tcm_get_partition_id_string(
			partition->partition_id);
		printk("\\0016[info] %s: Empty partition %s\\n",
		       "syna_tcm_update_flash_block", partition_name);
		return 0;
	}
	if (!write_block_size || partition->data_size % write_block_size) {
		result_code = -241;
		goto write_error_log;
	}
	if (!(optimize & 1)) {
		retval = syna_tcm_write_flash(tcm, access,
					      (int)partition->data_size,
					      partition->data, partition->data_length,
					      delay_ms);
		if (retval < 0) {
				result_code = retval;
				goto write_error_log;
		}
		return 0;
	}

	if (!(access->setup_release_required & 1)) {
		result_code = -241;
		goto write_error_log;
	}
	max_payload_blocks = access->max_write_payload_size /
		write_block_size;
	max_payload_bytes = max_payload_blocks * write_block_size;
	if (!max_payload_blocks || !max_payload_bytes) {
		result_code = -241;
		goto write_error_log;
	}
	if (!partition->data) {
		result_code = -22;
		goto optimized_write_error;
	}

	mutex_lock(access->mutex);
	locked = true;
	++access->release_required;
	remaining = partition->data_length;
	processed = 0;
	bytes_written = 0;
	total_blocks = (partition->data_length + write_block_size - 1) /
		write_block_size + partition->data_size / write_block_size;
	while (remaining) {
		chunk = remaining < max_payload_bytes ? remaining : max_payload_bytes;
		if (chunk > 0xffffffffU - 6) {
			result_code = -22;
			goto optimized_write_error;
		}
		chunk_with_header = chunk + 6;
		zero_length = SYNA_ACCESS_BUF_SIZE(access);
		if (SYNA_ACCESS_BUF_SIZE(access) < chunk_with_header) {
			if (SYNA_ACCESS_DATA(access)) {
				managed_device = syna_request_managed_device();
				if (managed_device)
					devm_kfree(managed_device, SYNA_ACCESS_DATA(access));
				else
					managed_device = syna_request_managed_device();
			} else {
				managed_device = syna_request_managed_device();
			}
			if (!managed_device) {
				access->managed_allocation = NULL;
				SYNA_ACCESS_BUF_SIZE(access) = 0;
				result_code = -243;
				goto optimized_write_error;
			}
			access->managed_allocation = devm_kmalloc(managed_device,
							       chunk_with_header, 3520);
			if (!SYNA_ACCESS_DATA(access)) {
				SYNA_ACCESS_BUF_SIZE(access) = 0;
				result_code = -243;
				goto optimized_write_error;
			}
			SYNA_ACCESS_BUF_SIZE(access) = chunk_with_header;
			zero_length = chunk_with_header;
		}
		if (!SYNA_ACCESS_DATA(access) ||
			SYNA_ACCESS_BUF_SIZE(access) < chunk_with_header) {
			result_code = -22;
			goto optimized_write_error;
		}
		memset(SYNA_ACCESS_DATA(access), 0, zero_length);
		SYNA_ACCESS_DATA_LENGTH(access) = 0;
		SYNA_ACCESS_DATA(access)[0] = remaining == partition->data_length;
		block_index = (processed + partition->data_size) / write_block_size;
		SYNA_ACCESS_DATA(access)[2] = (u8)block_index;
		SYNA_ACCESS_DATA(access)[3] = (u8)(block_index >> 8);
		SYNA_ACCESS_DATA(access)[4] = (u8)total_blocks;
		SYNA_ACCESS_DATA(access)[5] = (u8)(total_blocks >> 8);
		source = partition->data + processed;
		destination = SYNA_ACCESS_DATA(access) + 6;
		result = ((chunk + write_block_size - 1) / write_block_size) *
			(delay_ms ? delay_ms : 0) / 1000;
		if (!result) {
			if (transport && (transport->flags & 1))
				result = 0;
			else
				result = tcm->command_delay_ms;
		}
		if ((u32)(partition->data_length - processed) < chunk ||
			chunk > SYNA_ACCESS_BUF_SIZE(access) - 6 || !source || !destination) {
			result_code = -22;
			goto optimized_copy_error;
		}
		memcpy(destination, source, chunk);
		if (!tcm->write_message) {
			result_code = -241;
			goto optimized_copy_error;
		}
		retval = tcm->write_message(tcm, 0xfe, SYNA_ACCESS_DATA(access),
						    chunk_with_header, NULL, result);
		if (retval < 0) {
			result_code = retval;
			goto optimized_command_error;
		}
		remaining -= chunk;
		processed += chunk;
		bytes_written += chunk;
	}
	if (access->release_required == 1)
		access->release_required = 0;
	else
		--access->release_required;
	/* Stock accumulates this value at +0x90; the shared overlay stops at 0x90. */
	(void)bytes_written;
	mutex_unlock(access->mutex);
	locked = false;
	return 0;

optimized_command_error:
optimized_copy_error:
	partition_name = syna_tcm_get_partition_id_string(partition->partition_id);
	printk("\\0013[error] %s: Optimized write failed for %s\\n",
	       "syna_tcm_update_flash_block", partition_name);
	if (locked) {
		if (access->release_required == 1)
			access->release_required = 0;
		else
			--access->release_required;
		mutex_unlock(access->mutex);
		locked = false;
	}
	partition_name = syna_tcm_get_partition_id_string(partition->partition_id);
	printk("\\0013[error] %s: Optimized write failed for %s\\n",
	       "syna_tcm_update_flash_block", partition_name);
	goto write_error_log;

optimized_write_error:
	if (locked) {
		if (access->release_required == 1)
			access->release_required = 0;
		else
			--access->release_required;
		mutex_unlock(access->mutex);
		locked = false;
	}
	goto write_error_log;

write_error_log:
	partition_name = syna_tcm_get_partition_id_string(partition->partition_id);
	printk("\\0013[error] %s: Write failed for %s\\n",
	       "syna_tcm_update_flash_block", partition_name);
	goto final_update_error;

final_update_error:
	return result_code;
}
