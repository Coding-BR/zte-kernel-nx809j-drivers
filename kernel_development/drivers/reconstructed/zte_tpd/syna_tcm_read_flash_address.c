struct syna_tcm_flash_access_context {
	u8 reserved_0000[0x40];
	void *temporary_allocation;
	u8 reserved_0048[0x38];
	u8 release_required;
	u8 reserved_0081[0x07];
	void *managed_allocation;
	u8 reserved_0090[0x10];
};

extern int syna_tcm_set_up_flash_access(__int64 tcm,
					__int64 access_context,
					__int64 delay_ms,
					unsigned int timeout_ms);
extern int syna_tcm_read_flash(__int64 tcm, unsigned int address,
			       __int64 destination, unsigned int length,
			       int delay_ms);
extern int syna_tcm_switch_fw_mode(struct tcm_dev *tcm, u8 mode,
				    unsigned int delay_ms);
extern struct device *syna_request_managed_device(void);

__int64 __fastcall syna_tcm_read_flash_address(__int64 raw_tcm,
					       unsigned int address,
					       __int64 raw_length,
					       __int64 raw_buffer,
					       unsigned int delay_ms)
{
	struct tcm_dev *tcm = (struct tcm_dev *)(unsigned long)raw_tcm;
	struct tcm_buffer *buffer =
		(struct tcm_buffer *)(unsigned long)raw_buffer;
	struct syna_tcm_flash_access_context access = {};
	struct device *managed_device;
	u32 length = (u32)raw_length;
	u32 timeout_ms;
	u8 initial_mode;
	int retval = 0;

	if (!tcm || !buffer) {
		printk("\0013[error] %s: Invalid parameter\n",
		       "syna_tcm_read_flash_address");
		return -241;
	}

	initial_mode = tcm->firmware_mode;
	timeout_ms = delay_ms ? tcm->timing_01e8 : 0;
	if (initial_mode != 0x0b) {
		retval = syna_tcm_set_up_flash_access(
			(__int64)(unsigned long)tcm,
			(__int64)(unsigned long)&access,
			delay_ms, timeout_ms);
		if (retval < 0) {
			printk("\0013[error] %s: Failed to set up flash access\n",
			       "syna_tcm_read_flash_address");
			return retval;
		}
	}

	if (length) {
		if (buffer->buf_size < length) {
			if (buffer->data) {
				managed_device = syna_request_managed_device();
				if (managed_device)
					devm_kfree(managed_device, buffer->data);
				else {
					printk("\0013[error] %s: Failed to release flash buffer\n",
					       "syna_tcm_read_flash_address");
					managed_device = syna_request_managed_device();
					if (!managed_device) {
						printk("\0013[error] %s: Failed to allocate flash buffer\n",
						       "syna_tcm_read_flash_address");
						retval = -243;
						goto out;
					}
				}
			}

			managed_device = syna_request_managed_device();
			if (!managed_device) {
				printk("\0013[error] %s: Failed to allocate flash buffer\n",
				       "syna_tcm_read_flash_address");
				retval = -243;
				goto out;
			}

			if (buffer->data)
				buffer->data = NULL;

			buffer->data = devm_kmalloc(managed_device, length, 3520);
			if (!buffer->data) {
				buffer->buf_size = 0;
				printk("\0013[error] %s: Failed to allocate flash buffer\n",
				       "syna_tcm_read_flash_address");
				retval = -243;
				goto out;
			}
			buffer->buf_size = length;
		}

		memset(buffer->data, 0, length);
		buffer->data_length = 0;
		retval = syna_tcm_read_flash(
			(__int64)(unsigned long)tcm, address,
			(__int64)(unsigned long)buffer->data, length,
			(int)delay_ms);
		if (retval < 0) {
			printk("\0013[error] %s: Failed to read flash address\n",
			       "syna_tcm_read_flash_address");
			goto out;
		}
		buffer->data_length = length;
	}

out:
	if (initial_mode == 0x01)
		syna_tcm_switch_fw_mode(tcm, 0x01, delay_ms);

	managed_device = syna_request_managed_device();
	if (managed_device && access.managed_allocation)
		devm_kfree(managed_device, access.managed_allocation);
	else if (!managed_device && access.managed_allocation)
		printk("\0013[error] %s: Failed to release flash context\n",
		       "syna_tcm_read_flash_address");

	return retval;
}
