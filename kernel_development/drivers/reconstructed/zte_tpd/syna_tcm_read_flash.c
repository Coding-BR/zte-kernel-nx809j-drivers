int syna_tcm_read_flash(__int64 raw_tcm, unsigned int address,
			__int64 raw_destination, unsigned int length, int delay_ms)
{
	struct tcm_dev *tcm = (struct tcm_dev *)(unsigned long)raw_tcm;
	u8 *destination = (u8 *)(unsigned long)raw_destination;
	u8 command_payload[6];
	u32 chunk_size = length;
	u32 chunk_count;
	u32 offset = 0;

	if (!destination) {
		printk("\0013[error] %s: Invalid destination\n",
		       "syna_tcm_read_flash");
		return -241;
	}
	if (!address || !length) {
		printk("\0013[error] %s: Invalid address or length\n",
		       "syna_tcm_read_flash");
		return -241;
	}

	if ((u8)tcm->detection_state == 0x02 &&
	    tcm->max_write_size < length && tcm->max_write_size == 6) {
		chunk_size = 0;
		chunk_count = 0;
	} else {
		chunk_count = (length + chunk_size - 1) / chunk_size;
	}
	if (chunk_count < 2)
		chunk_count = 1;

	do {
		u32 chunk = length - offset >= chunk_size ?
			chunk_size : length - offset;
		u32 command_delay = delay_ms ?
			(u32)(((u64)(chunk >> 1) * (u32)delay_ms) / 1000) : 0;
		u32 response_length;
		int retval;
		struct tcm_buffer *response = &tcm->resp_buf;

		address += offset;
		command_payload[0] = (u8)(address >> 1);
		command_payload[1] = (u8)(address >> 9);
		command_payload[2] = (u8)(address >> 17);
		command_payload[3] = (u8)(address >> 25);
		command_payload[4] = (u8)(chunk >> 1);
		command_payload[5] = (u8)(chunk >> 9);

		if (tcm->firmware_mode != 0x0b)
			printk("\0014[warn] %s: Unexpected firmware mode=%u\n",
			       "syna_tcm_reflash_send_command",
			       (unsigned int)tcm->firmware_mode);
		if (!command_delay) {
			if (!(tcm->transport->flags & 0x01))
				command_delay = tcm->command_delay_ms;
		}

		retval = tcm->write_message(tcm, 0x13, command_payload, 6,
					     NULL, command_delay);
		if (retval < 0) {
			printk("\0013[error] %s: Flash command failed\n",
			       "syna_tcm_reflash_send_command");
			printk("\0013[error] %s: address=%u length=%u\n",
			       "syna_tcm_read_flash", address, chunk);
			return retval;
		}

		response_length = response->data_length;
		if (response_length != chunk) {
			printk("\0013[error] %s: Response length=%u expected=%u\n",
			       "syna_tcm_read_flash", response_length, chunk);
			return -241;
		}
		if (!response->data) {
			printk("\0013[error] %s: Missing response or destination\n",
			       "syna_tcm_read_flash");
			return -22;
		}
		if (chunk > length || chunk > response->buf_size) {
			printk("\0013[error] %s: Response buffer too small\n",
			       "syna_tcm_read_flash");
			return -22;
		}

		memcpy(destination + offset, response->data, chunk);
		--chunk_count;
		offset += response_length;
	} while (chunk_count != 0);

	return 0;
}
