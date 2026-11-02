/* SPDX-License-Identifier: GPL-2.0-only */

#define TCM_MODE_APPLICATION_FIRMWARE 1
#define TCM_CMD_SET_GAME_PARTITION_CONFIG 0xc7
#define TCM_STATUS_INVALID -241

int syna_tcm_set_game_partition_config(struct tcm_dev *tcm, u8 config_id,
	int data_length, u8 *data,
				       u32 delay_ms)
{
	size_t payload_length;
	u8 *payload;
	char *out_values;
	int out_length;
	int result;

	if (!tcm) {
		pr_err("zte_tpd: game partition called without tcm_dev\n");
		return TCM_STATUS_INVALID;
	}
	if (tcm->firmware_mode != TCM_MODE_APPLICATION_FIRMWARE) {
		pr_err("zte_tpd: game partition requires application firmware\n");
		return TCM_STATUS_INVALID;
	}
	if (data_length < 0 || (data_length && !data))
		return -EINVAL;
	if (!tcm->write_message)
		return -EOPNOTSUPP;

	if (!delay_ms) {
		if (!tcm->transport)
			return -EINVAL;
		if (!(tcm->transport->flags & BIT(0)))
			delay_ms = tcm->command_delay_ms;
	}

	payload_length = (size_t)data_length + 1;
	payload = kmalloc(payload_length, GFP_KERNEL);
	if (!payload)
		return -ENOMEM;

	out_values = kmalloc((size_t)data_length * 6 + 0x20, GFP_KERNEL);
	out_length = 0;
	if (out_values)
		out_length = snprintf(out_values, (size_t)data_length * 6 + 0x20,
				      "out values: ");

	payload[0] = config_id;
	for (int index = 0; index < data_length; ++index) {
		payload[index + 1] = data[index];
		if (out_values && out_length < data_length * 6 + 0x18)
			out_length += snprintf(out_values + out_length,
					      (size_t)data_length * 6 + 0x20 -
					      (size_t)out_length,
					      "%02x ", data[index]);
	}
	if (out_values) {
		printk("\x01" "6[info ] %s: %s",
		       "syna_tcm_set_game_partition_config", out_values);
		kfree(out_values);
	}

	result = tcm->write_message(tcm, TCM_CMD_SET_GAME_PARTITION_CONFIG,
				    payload, payload_length, NULL, delay_ms);
	kfree(payload);
	if (result < 0) {
		pr_err("zte_tpd: game partition command failed: %d\n", result);
		return result;
	}

	return 0;
}
