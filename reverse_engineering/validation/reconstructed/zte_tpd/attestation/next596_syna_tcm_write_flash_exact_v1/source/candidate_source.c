static u32 syna_tcm_write_flash_read_u32(const void *base, u32 offset)
{
	const u8 *bytes = (const u8 *)base + offset;

	return (u32)bytes[0] | ((u32)bytes[1] << 8) |
		((u32)bytes[2] << 16) | ((u32)bytes[3] << 24);
}

static void syna_tcm_write_flash_store_u32(void *base, u32 offset, u32 value)
{
	u8 *bytes = (u8 *)base + offset;

	bytes[0] = (u8)value;
	bytes[1] = (u8)(value >> 8);
	bytes[2] = (u8)(value >> 16);
	bytes[3] = (u8)(value >> 24);
}

static u8 *syna_tcm_write_flash_data(
	struct syna_tcm_flash_access_context *access)
{
	return (u8 *)access->managed_allocation;
}

static u32 syna_tcm_write_flash_buffer_size(
	const struct syna_tcm_flash_access_context *access)
{
	return syna_tcm_write_flash_read_u32(access, 0x48);
}

static void syna_tcm_write_flash_set_buffer_size(
	struct syna_tcm_flash_access_context *access, u32 size)
{
	syna_tcm_write_flash_store_u32(access, 0x48, size);
}

static void syna_tcm_write_flash_set_data_length(
	struct syna_tcm_flash_access_context *access, u32 length)
{
	syna_tcm_write_flash_store_u32(access, 0x4c, length);
}

static void syna_tcm_write_flash_release(
	struct syna_tcm_flash_access_context *access)
{
	if (access->release_required != 1) {
		printk("\\0013[error] %s: Temporary buffer unlock\\n",
		       "syna_tcm_buf_unlock");
		--access->release_required;
	} else {
		access->release_required = 0;
	}
	mutex_unlock(access->mutex);
}

int syna_tcm_write_flash(struct tcm_dev *tcm,
	struct syna_tcm_flash_access_context *access,
	int data_offset,
	u8 *data,
	u32 data_length,
	u32 delay_ms)
{
	struct tcm_transport_overlay *transport;
	u32 write_block_size;
	u32 max_write_payload;
	u32 max_chunk;
	u32 remaining;
	u32 processed = 0;
	u32 chunk;
	u32 required_size;
	u32 block_index;
	u32 block_count;
	u32 effective_delay;
	u32 buffer_size;
	u32 total_written;
	u8 *buffer_data;
	u8 *source;
	struct device *managed_device;
	u8 *old_data;
	void *new_data;
	int retval = 0;

	if (!tcm || !access)
		return -241;

	write_block_size = access->write_block_size_bytes;
	max_write_payload = access->max_write_payload_size;
	if (data_length && !write_block_size)
		return -241;
	max_chunk = write_block_size ?
		(max_write_payload / write_block_size) * write_block_size : 0;
	if (data_length && !max_chunk)
		return -241;

	transport = tcm->transport;
	if (access->release_required)
		printk("\\0013[error] %s: Temporary buffer already locked\\n",
		       "syna_tcm_buf_lock");
	mutex_lock(access->mutex);
	++access->release_required;

	remaining = data_length;
	while (remaining) {
		chunk = remaining < max_chunk ? remaining : max_chunk;
		if (chunk > 0xfffffffdU) {
			retval = -22;
			goto write_error;
		}
		required_size = chunk + 2;
		buffer_size = syna_tcm_write_flash_buffer_size(access);
		buffer_data = syna_tcm_write_flash_data(access);
		if (buffer_size < required_size || !buffer_data) {
			old_data = buffer_data;
			if (old_data) {
				managed_device = syna_request_managed_device();
				if (managed_device) {
					devm_kfree(managed_device, old_data);
					access->managed_allocation = NULL;
				} else {
					printk("\\0013[error] %s: Managed free unavailable\\n",
					       "syna_pal_mem_free");
					managed_device = syna_request_managed_device();
					if (!managed_device) {
						retval = -243;
						goto write_error;
					}
					goto allocate_with_device;
				}
			}
			managed_device = syna_request_managed_device();
			if (!managed_device) {
				retval = -243;
				goto write_error;
			}

allocate_with_device:
			if (required_size == 0) {
				retval = -243;
				goto write_error;
			}
			new_data = devm_kmalloc(managed_device, required_size, 3520);
			access->managed_allocation = new_data;
			if (!new_data) {
				syna_tcm_write_flash_set_buffer_size(access, 0);
				retval = -243;
				goto write_error;
			}
			syna_tcm_write_flash_set_buffer_size(access, required_size);
			buffer_data = syna_tcm_write_flash_data(access);
			buffer_size = syna_tcm_write_flash_buffer_size(access);
		}
		if (!buffer_data || buffer_size < required_size) {
			retval = -22;
			goto write_error;
		}

		memset(buffer_data, 0, buffer_size);
		syna_tcm_write_flash_set_data_length(access, 0);
		block_index = (processed + (u32)data_offset) / write_block_size;
		buffer_data[0] = (u8)block_index;
		buffer_data[1] = (u8)(block_index >> 8);
		block_count = (chunk + write_block_size - 1) /
			write_block_size;
		effective_delay = block_count * delay_ms / 1000;
		source = data ? data + processed : NULL;
		if (!source ||
			(data_length - processed) < chunk ||
			chunk > buffer_size - 2) {
			printk("\\0013[error] %s: Copy bounds invalid\\n",
			       "syna_tcm_write_flash");
			retval = -22;
			goto write_error;
		}
		memcpy(buffer_data + 2, source, chunk);

		if (tcm->firmware_mode != 0x0b)
			printk("\\0013[error] %s: Firmware mode is not bootloader\\n",
			       "syna_tcm_reflash_send_command");
		if (!effective_delay) {
			if (!transport || !(transport->flags & 1)) {
				effective_delay = tcm->command_delay_ms;
				printk("\\0016[info] %s: Using command delay\\n",
				       "syna_tcm_reflash_send_command");
			} else {
				effective_delay = 0;
			}
		}
		if (!tcm->write_message) {
			retval = -241;
			goto write_error;
		}
		retval = tcm->write_message(tcm, 0x12, buffer_data,
						required_size, NULL, effective_delay);
		if (retval < 0)
			goto write_error;

		remaining -= chunk;
		processed += chunk;
		total_written = syna_tcm_write_flash_read_u32(access, 0x90);
		syna_tcm_write_flash_store_u32(access, 0x90,
				total_written + chunk);
	}

write_error:
	if (retval < 0)
		printk("\\0013[error] %s: Flash write failed\\n",
		       "syna_tcm_write_flash");
	syna_tcm_write_flash_release(access);
	return retval;
}
