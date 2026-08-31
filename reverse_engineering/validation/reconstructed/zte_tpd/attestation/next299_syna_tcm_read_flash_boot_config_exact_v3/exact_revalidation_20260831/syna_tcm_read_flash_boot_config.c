extern void *syna_pal_mem_alloc(int size);
extern void syna_pal_mem_free(void *memory);
extern int syna_tcm_read_flash(struct tcm_dev *tcm, unsigned int address,
			       u8 *destination, unsigned int length,
			       int delay_ms);

__int64 __fastcall syna_tcm_read_flash_boot_config(
	struct tcm_dev *tcm,
	struct syna_tcm_flash_access_context *access,
	struct tcm_buffer *buffer,
	int delay_ms)
{
	struct tcm_boot_info *boot_info;
	u8 *boot_bytes;
	u32 *stored_block_count;
	u32 *stored_address;
	u32 address_blocks;
	u32 block_count;
	u32 address;
	u32 read_length;
	u32 zero_length;
	u32 address_offset;
	u32 length_offset;
	int retval;

	if (!tcm || !access || !buffer) {
		printk("\0013[error] %s: Invalid parameter\n",
		       "syna_tcm_read_flash_boot_config");
		return -241;
	}
	if (tcm->firmware_mode == 0x01) {
		printk("\0013[error] %s: Application mode is not supported\n",
		       "syna_tcm_read_flash_boot_config");
		return -241;
	}

	boot_info = access->boot_info;
	if (!boot_info) {
		printk("\0013[error] %s: Missing boot information\n",
		       "syna_tcm_read_flash_boot_config");
		return -241;
	}

	boot_bytes = (u8 *)boot_info;
	if (boot_info->version == 0x01) {
		address_offset = 0x0c;
		length_offset = 0x0e;
	} else if (boot_info->version == 0x03) {
		address_offset = 0x10;
		length_offset = 0x12;
	} else {
		printk("\0013[error] %s: Unsupported boot version=%u\n",
		       "syna_tcm_read_flash_boot_config",
		       (unsigned int)boot_info->version);
		return -241;
	}

	address_blocks = (u32)boot_bytes[address_offset] |
			 ((u32)boot_bytes[address_offset + 1] << 8);
	block_count = (u32)boot_bytes[length_offset] |
		      ((u32)boot_bytes[length_offset + 1] << 8);
	address = access->write_block_size_bytes * address_blocks;
	read_length = access->write_block_size_bytes * block_count;
	if (!address || !read_length) {
		printk("\0013[error] %s: Invalid boot configuration geometry\n",
		       "syna_tcm_read_flash_boot_config");
		return -241;
	}

	stored_block_count = (u32 *)(void *)access->reserved_0034;
	stored_address = (u32 *)(void *)(access->reserved_0034 + 4);
	if (*stored_address != address)
		*stored_address = address;
	if (*stored_block_count != block_count)
		*stored_block_count = block_count;

	zero_length = buffer->buf_size;
	if (buffer->buf_size < read_length) {
		if (buffer->data)
			syna_pal_mem_free(buffer->data);
		buffer->data = syna_pal_mem_alloc((int)read_length);
		if (!buffer->data) {
			buffer->buf_size = 0;
			printk("\0013[error] %s: Failed to allocate %u bytes\n",
			       "syna_tcm_read_flash_boot_config", read_length);
			return -243;
		}
		buffer->buf_size = read_length;
		zero_length = read_length;
	}
	if (!buffer->data) {
		printk("\0013[error] %s: Missing destination buffer\n",
		       "syna_tcm_read_flash_boot_config");
		return -22;
	}

	memset(buffer->data, 0, zero_length);
	buffer->data_length = 0;
	retval = syna_tcm_read_flash(tcm, address, buffer->data, read_length,
				     delay_ms);
	if (retval < 0) {
		printk("\0013[error] %s: Flash read failed at %u\n",
		       "syna_tcm_read_flash_boot_config", address);
		return retval;
	}
	buffer->data_length = read_length;
	return retval;
}
