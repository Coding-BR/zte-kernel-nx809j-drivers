extern int syna_tcm_buf_copy_2(__int64 destination, __int64 source);

int syna_tcm_send_command(__int64 raw_tcm, unsigned int command,
			  __int64 raw_payload, __int64 payload_length,
			  u8 *response_code, __int64 raw_event_data,
			  unsigned int delay_ms)
{
	struct tcm_dev *tcm = (struct tcm_dev *)(unsigned long)raw_tcm;
	struct tcm_buffer *event_data =
		(struct tcm_buffer *)(unsigned long)raw_event_data;
	u8 local_response_code = 0;
	int retval;
	int copy_ret;

	if (!tcm) {
		printk("\0013[error] %s: Invalid tcm device handle\n",
		       "syna_tcm_send_command");
		return -241;
	}

	if (!delay_ms) {
		if (tcm->transport->flags & 0x01) {
			delay_ms = 0;
		} else {
			delay_ms = tcm->command_delay_ms;
			printk("\0015[info ] %s: No support of IRQ control, use polling mode instead\n",
			       "syna_tcm_send_command");
		}
	}

	retval = tcm->write_message(tcm, (u8)command,
				    (u8 *)(unsigned long)raw_payload,
				    (u32)payload_length, &local_response_code,
				    delay_ms);
	if (retval < 0)
		printk("\0013[error] %s: Fail to send command 0x%02x\n",
		       "syna_tcm_send_command", command & 0xff);

	if (response_code)
		*response_code = local_response_code;

	if (!event_data)
		return retval;

	if (local_response_code >= 0x10 && local_response_code <= 0xfe) {
		if (!tcm->report_buf.data_length)
			return retval;

		copy_ret = syna_tcm_buf_copy_2(
			(__int64)(unsigned long)event_data,
			(__int64)(unsigned long)&tcm->report_buf);
		if (copy_ret < 0) {
			printk("\0013[error] %s: Fail to copy report data, report type: %x\n",
			       "syna_tcm_send_command", local_response_code);
			return -243;
		}
		 return retval;
	}

	if (local_response_code >= 1 && local_response_code <= 0x0f) {
		if (!tcm->response.data_length)
			return retval;

		copy_ret = syna_tcm_buf_copy_2(
			(__int64)(unsigned long)event_data,
			(__int64)(unsigned long)&tcm->response);
		if (copy_ret < 0) {
			printk("\0013[error] %s: Fail to copy response data, status code: %x\n",
			       "syna_tcm_send_command", local_response_code);
			return -243;
		}
	}

	return retval;
}
