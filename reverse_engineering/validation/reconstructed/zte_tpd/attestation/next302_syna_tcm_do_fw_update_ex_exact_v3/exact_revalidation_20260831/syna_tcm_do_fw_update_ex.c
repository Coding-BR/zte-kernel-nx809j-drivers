extern struct device *syna_request_managed_device(void);

/* The image parser proves these two partition descriptors at +0x30/+0x70. */
struct syna_tcm_fw_partition {
	u8 reserved_0000[0x08];
	u8 *data;
	u32 data_length;
	u32 data_size;
	u8 partition_id;
	u8 reserved_0019[0x07];
};

struct syna_tcm_fw_image {
	u32 flags;
	u8 reserved_0004[0x2c];
	struct syna_tcm_fw_partition primary;
	u8 reserved_0050[0x20];
	struct syna_tcm_fw_partition secondary;
};

int syna_tcm_do_fw_update_ex(
	struct tcm_dev *tcm,
	struct syna_tcm_fw_image *image,
	u32 request_flags,
	u32 data_offset,
	u32 data_length,
	u32 mode_delay_ms,
	u8 optimize)
{
	struct syna_tcm_flash_access_context access = {};
	struct device *managed_device;
	u32 *flash_flags;
	u32 *byte_offset;
	u32 *update_in_progress;
	u32 timeout_ms;
	u32 flags;
	u16 app_status;
	int retval;
	int result = -241;

	if (!tcm || !image || !image->flags) {
		printk("\\0013[error] %s: Invalid parameter\\n",
		       "syna_tcm_do_fw_update_ex");
		return -241;
	}

	flash_flags = (u32 *)(void *)access.reserved_0000;
	byte_offset = (u32 *)(void *)((u8 *)&access + 0x8c);
	update_in_progress = (u32 *)(void *)(tcm->reserved_0380 + 0x08);
	flags = request_flags;
	*flash_flags = flags;
	*byte_offset = 0;
	access.managed_allocation = NULL;
	timeout_ms = mode_delay_ms ? tcm->command_delay_ms : 0;
	app_status = (u16)tcm->application_info.status[0] |
			((u16)tcm->application_info.status[1] << 8);

	*update_in_progress = 1;
	if (tcm->firmware_mode == 0x0b) {
		flags |= 0x09;
		*flash_flags = flags;
	} else if (tcm->firmware_mode == 0x01 && app_status) {
		flags |= 0x09;
		*flash_flags = flags;
	}
	if (flags & 0x08)
		*byte_offset += image->primary.data_length;
	if (flags & 0x01)
		*byte_offset += image->secondary.data_length;

	retval = syna_tcm_set_up_flash_access(tcm, &access, timeout_ms,
						      mode_delay_ms);
	if (retval < 0) {
		result = retval;
		goto cleanup;
	}

	if (tcm->firmware_mode == 0x0b) {
		if (*flash_flags & 0x08) {
			retval = syna_tcm_update_flash_block(
				tcm, &access, &image->primary, data_offset,
				data_length, access.setup_release_required & optimize & 1);
			if (retval < 0) {
				result = retval;
				goto cleanup;
			}
		}
		if (*flash_flags & 0x01) {
			retval = syna_tcm_update_flash_block(
				tcm, &access, &image->secondary, data_offset,
				data_length, 0);
			if (retval < 0) {
				result = retval;
				goto cleanup;
			}
		}
	}

	result = syna_tcm_reset(tcm, mode_delay_ms);

cleanup:
	*update_in_progress = 0;
	if (access.release_required)
		printk("\\0013[error] %s: Temporary buffer release required\\n",
		       "syna_tcm_do_fw_update_ex");
	if (access.managed_allocation) {
		managed_device = syna_request_managed_device();
		if (managed_device)
			devm_kfree(managed_device, access.managed_allocation);
		else
			printk("\\0013[error] %s: Managed free unavailable\\n",
			       "syna_tcm_do_fw_update_ex");
	}
	return result;
}
