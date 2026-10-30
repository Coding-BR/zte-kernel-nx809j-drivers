extern int syna_tcm_parse_fw_image(const u8 *image, u32 image_size,
					void *parsed_image);
extern int syna_tcm_do_fw_update_ex(struct tcm_dev *tcm,
					    void *parsed_image,
					    u32 request_flags,
					    u32 data_offset,
					    u32 data_length,
					    u32 mode_delay_ms,
					    u8 optimize);

struct syna_tcm_parsed_partition {
	u8 enabled;
	u8 reserved_0001[0x07];
	u8 *data;
	u32 data_length;
	u32 data_offset;
	u8 partition_id;
	u8 reserved_0019[0x03];
	u32 checksum;
};

/* This is the parser's proven 0x310-byte output, not a firmware-file header. */
struct syna_tcm_parsed_image {
	u32 image_size;
	u8 reserved_0004[0x04];
	u8 *image_data;
	struct syna_tcm_parsed_partition partitions[24];
};

static u8 syna_tcm_protocol_version(const struct tcm_dev *tcm)
{
	return *(const u8 *)((const u8 *)tcm + 0x08);
}

static u32 syna_tcm_build_id(const struct tcm_dev *tcm)
{
	const u8 *bytes = (const u8 *)tcm + 0x0c;

	return (u32)bytes[0] | ((u32)bytes[1] << 8) |
		((u32)bytes[2] << 16) | ((u32)bytes[3] << 24);
}

static u32 syna_tcm_read_le32(const u8 *bytes)
{
	return (u32)bytes[0] | ((u32)bytes[1] << 8) |
		((u32)bytes[2] << 16) | ((u32)bytes[3] << 24);
}

static bool syna_tcm_image_id_matches(const struct tcm_dev *tcm,
					      const struct syna_tcm_parsed_partition *part)
{
	const u8 *image_id;
	const u8 *device_id;
	u32 id_offset;
	u32 i;

	if (!part->data)
		return false;
	id_offset = syna_tcm_protocol_version(tcm) == 2 ? 0x10 : 0x0e;
	image_id = part->data + id_offset;
	device_id = (const u8 *)tcm + 0xc0;
	for (i = 0; i < 0x10; ++i) {
		if (image_id[i] != device_id[i])
			return false;
	}
	return true;
}

int syna_tcm_do_fw_update(struct tcm_dev *tcm,
				  const u8 *image,
				  u32 image_size,
				  u32 flash_area,
				  bool force_reflash)
{
	struct syna_tcm_parsed_image parsed = {};
	const struct syna_tcm_parsed_partition *compare_partition;
	u32 request_flags;
	u32 data_offset;
	u32 data_length;
	u32 mode_delay_ms;
	u32 device_build_id;
	u32 image_build_id;
	int parse_result;

	if (!tcm || !image || !image_size) {
		printk("\\0013[error] %s: Invalid parameter\\n",
		       "syna_tcm_do_fw_update");
		return -241;
	}

	if (flash_area) {
		data_offset = flash_area >> 16;
		request_flags = 0;
		mode_delay_ms = tcm->timing_01e8;
		data_length = flash_area & 0xffff;
	} else {
		data_offset = 0;
		request_flags = 0;
		mode_delay_ms = 0;
		data_length = 0;
	}

	memset(&parsed, 0, sizeof(parsed));
	printk("\\0016[info] %s: Parsing firmware image\\n",
	       "syna_tcm_do_fw_update");
	parse_result = syna_tcm_parse_fw_image(image, image_size, &parsed);
	if (parse_result < 0) {
		printk("\\0013[error] %s: Firmware parse failed\\n",
		       "syna_tcm_do_fw_update");
		return parse_result;
	}

	if (force_reflash) {
		request_flags = 9;
	} else {
		compare_partition = &parsed.partitions[3];
		if (compare_partition->data_length < 0x22) {
			printk("\\0016[info] %s: Image identification is unavailable\\n",
			       "syna_tcm_do_fw_update");
			return 0;
		}

		device_build_id = syna_tcm_build_id(tcm);
		image_build_id = syna_tcm_read_le32(compare_partition->data +
						(syna_tcm_protocol_version(tcm) == 2 ?
						 0x10 : 0x0e));
		if (image_build_id == device_build_id &&
		    syna_tcm_image_id_matches(tcm, compare_partition)) {
			printk("\\0016[info] %s: Image already matches device\\n",
			       "syna_tcm_do_fw_update");
			return 0;
		}
		request_flags = image_build_id == device_build_id ? 1 : 9;
	}

	return syna_tcm_do_fw_update_ex(tcm, &parsed, request_flags,
					data_offset, data_length, mode_delay_ms, 1);
}
