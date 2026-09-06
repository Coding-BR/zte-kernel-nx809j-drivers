/* SPDX-License-Identifier: GPL-2.0-only */

struct device;

extern struct device *syna_request_managed_device(void);
extern void *devm_kmalloc(struct device *device, size_t size,
				  unsigned int flags);

static void syna_tcm_preserve_buf_lock(struct tcm_buffer *buffer)
{
	if (buffer->lock_depth)
		printk("%s: Buffer access out-of balance, %d\n",
		       "syna_tcm_buf_lock", buffer->lock_depth);
	mutex_lock(buffer->mutex);
	++buffer->lock_depth;
}

static void syna_tcm_preserve_buf_unlock(struct tcm_buffer *buffer)
{
	if (buffer->lock_depth == 1) {
		buffer->lock_depth = 0;
	} else {
		printk("%s: Buffer access out-of balance, %d\n",
		       "syna_tcm_buf_unlock", buffer->lock_depth);
		--buffer->lock_depth;
	}
	mutex_unlock(buffer->mutex);
}

static void syna_tcm_preserve_decode_format(struct tcm_dev *tcm,
						const u8 *format, u32 length)
{
	u32 cursor = 0;
	u32 report_offset = 0;
	u32 header_bits = 0;
	u32 report_size = 0;
	u32 format_base = 0;
	bool in_report = false;
	bool in_header = false;

	while (cursor < length) {
		u8 entity = format[cursor];
		u32 next = cursor + 1;

		if (entity < 3) {
			if (entity == 0) {
				in_report = false;
				in_header = false;
			} else {
				in_report = true;
			}
		} else if (entity == 3) {
			in_report = false;
			tcm->touch_report_config.format_offset = next;
			in_header = true;
		} else if (entity == 4) {
			format_base = format_base + 7U;
			if (!in_report)
				format_base = report_offset;
			report_offset = format_base;
			if (in_header) {
				in_header = true;
				header_bits = (header_bits + 7U) & ~7U;
			} else {
				in_header = false;
			}
		} else {
			u8 width = format[next];
			u32 end = report_offset + width;
			u32 selected = end;

			next = cursor + 2;
			if (!in_report)
				selected = report_offset;
			if (in_header) {
				header_bits += width;
				in_header = true;
				report_offset = selected;
			} else if (in_report) {
				in_header = false;
				in_report = true;
				report_offset = end;
			} else {
				in_report = false;
				in_header = false;
				report_size += width;
			}
		}
		cursor = next;
	}

	tcm->touch_report_config.report_size = report_size;
	tcm->touch_report_config.report_offset = report_offset;
	tcm->touch_report_config.header_bits = header_bits;
}

int syna_tcm_preserve_touch_report_config(struct tcm_dev *tcm,
						 unsigned int delay_ms)
{
	struct tcm_buffer *response;
	struct tcm_buffer *preserved;
	unsigned int effective_delay = delay_ms;
	u32 response_length;
	int result;

	if (!tcm) {
		printk("%s: Invalid tcm device handle\n",
		       "syna_tcm_preserve_touch_report_config");
		return -241;
	}
	if (tcm->firmware_mode != 0x01) {
		printk("%s: Device is not in application fw mode\n",
		       "syna_tcm_preserve_touch_report_config");
		return -241;
	}

	if (!effective_delay && !(tcm->transport->flags & 0x01)) {
		effective_delay = tcm->command_delay_ms;
		printk("%s: No support of IRQ control, use polling mode instead\n",
		       "syna_tcm_preserve_touch_report_config");
	}

	result = tcm->write_message(tcm, 0x25, NULL, 0, NULL, effective_delay);
	if (result < 0) {
		printk("%s: Failed to request touch report configuration\n",
		       "syna_tcm_preserve_touch_report_config");
		tcm->touch_report_parser_mode = 0;
		return result;
	}

	response = &tcm->response;
	preserved = &tcm->touch_report_config.buffer;
	if (!response->data) {
		printk("%s: Response buffer is unavailable\n",
		       "syna_tcm_preserve_touch_report_config");
		return -241;
	}
	if (!response->buf_size) {
		printk("%s: Response buffer has no capacity\n",
		       "syna_tcm_preserve_touch_report_config");
		return -241;
	}

	syna_tcm_preserve_buf_lock(response);
	syna_tcm_preserve_buf_lock(preserved);
	tcm->touch_report_parser_mode = 1;
	response_length = response->data_length;

	if (response_length > preserved->buf_size) {
		struct device *managed_device;

		if (preserved->data) {
			managed_device = syna_request_managed_device();
			if (managed_device) {
				devm_kfree(managed_device, preserved->data);
			} else {
				printk("%s: Invalid managed device\n",
				       "syna_pal_mem_free");
			}
		}

		managed_device = syna_request_managed_device();
		if (!managed_device) {
			printk("%s: Invalid managed device\n",
			       "syna_pal_mem_alloc");
			preserved->data = NULL;
			preserved->buf_size = 0;
			managed_device = syna_request_managed_device();
		}
		if (!managed_device || (int)response_length < 1) {
			printk("%s: Failed to allocate %u bytes\n",
			       "syna_tcm_buf_alloc", response_length);
			preserved->data = NULL;
			preserved->buf_size = 0;
			syna_tcm_preserve_buf_unlock(preserved);
			syna_tcm_preserve_buf_unlock(response);
			tcm->touch_report_parser_mode = 0;
			return -243;
		}

		preserved->data = devm_kmalloc(managed_device, response_length,
						      0xdc0);
		if (!preserved->data) {
			printk("%s: Failed to allocate %u bytes\n",
			       "syna_tcm_buf_alloc", response_length);
			preserved->buf_size = 0;
			syna_tcm_preserve_buf_unlock(preserved);
			syna_tcm_preserve_buf_unlock(response);
			tcm->touch_report_parser_mode = 0;
			return -243;
		}
		preserved->buf_size = response_length;
	}

	memset(preserved->data, 0, preserved->buf_size);
	preserved->data_length = 0;
	if (!preserved->data || response_length > response->buf_size ||
	    response_length > preserved->buf_size) {
		printk("%s: Response copy bounds are invalid\n",
		       "syna_tcm_preserve_touch_report_config");
		syna_tcm_preserve_buf_unlock(preserved);
		syna_tcm_preserve_buf_unlock(response);
		tcm->touch_report_parser_mode = 0;
		return -22;
	}

	memcpy(preserved->data, response->data, response_length);
	preserved->data_length = response_length;
	syna_tcm_preserve_buf_unlock(preserved);
	syna_tcm_preserve_buf_unlock(response);

	syna_tcm_preserve_decode_format(tcm, preserved->data, response_length);
	tcm->touch_report_parser_mode = 0;
	return 0;
}
