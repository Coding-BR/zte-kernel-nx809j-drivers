/* SPDX-License-Identifier: GPL-2.0-only */

struct device;

extern struct device *syna_request_managed_device(void);
extern void *devm_kmalloc(struct device *device, size_t size,
				  unsigned int flags);
extern int syna_pal_mem_cpy_1(void *destination, unsigned int destination_size,
				      const void *source, unsigned int source_size,
				      unsigned int copy_size);
extern void syna_pal_mem_free_0(void *memory);

static u16 syna_tcm_set_touch_report_config_read_u16(const u8 *value)
{
	return (u16)value[0] | ((u16)value[1] << 8);
}

int syna_tcm_set_touch_report_config(struct tcm_dev *tcm, char *config,
				     unsigned int length,
				     unsigned int delay_ms)
{
	struct device *managed_device;
	void *config_copy;
	u16 current_config_size;
	u16 max_config_size;
	unsigned int effective_delay = delay_ms;
	int result;

	if (!tcm) {
		printk("%s: Invalid tcm device handle\n",
		       "syna_tcm_set_touch_report_config");
		return -241;
	}
	if (!config || !length) {
		printk("%s: Invalid configuration buffer\n",
		       "syna_tcm_set_touch_report_config");
		return -241;
	}
	if (tcm->firmware_mode != 0x01) {
		printk("%s: Device is not in application fw mode, mode: %x\n",
		       "syna_tcm_set_touch_report_config", tcm->firmware_mode);
		return -241;
	}

	if (!effective_delay && !(tcm->transport->flags & 0x01)) {
		effective_delay = tcm->command_delay_ms;
		printk("%s: No support of IRQ control, use polling mode instead\n",
		       "syna_tcm_set_touch_report_config");
	}

	current_config_size = syna_tcm_set_touch_report_config_read_u16(
		tcm->application_info.version);
	if (!current_config_size) {
		printk("%s: Touch report configuration is unavailable\n",
		       "syna_tcm_set_touch_report_config");
		return -241;
	}

	max_config_size = syna_tcm_set_touch_report_config_read_u16(
		tcm->application_info.max_touch_report_config_size);
	if (max_config_size < length) {
		printk("%s: Configuration length exceeds device limit\n",
		       "syna_tcm_set_touch_report_config");
		return -241;
	}

	managed_device = syna_request_managed_device();
	if (!managed_device) {
		printk("%s: Managed device is unavailable\n",
		       "syna_tcm_set_touch_report_config");
		return -243;
	}

	config_copy = devm_kmalloc(managed_device, max_config_size, 0xdc0);
	if (!config_copy) {
		printk("%s: Failed to allocate configuration buffer\n",
		       "syna_tcm_set_touch_report_config");
		return -243;
	}

	result = syna_pal_mem_cpy_1(config_copy, max_config_size, config,
					length, length);
	if (result >= 0)
		result = tcm->write_message(tcm, 0x26, config_copy,
					    max_config_size, NULL, effective_delay);

	if (result < 0)
		printk("%s: Failed to set touch report configuration\n",
		       "syna_tcm_set_touch_report_config");
	else
		printk("%s: Touch report configuration updated\n",
		       "syna_tcm_set_touch_report_config");

	syna_pal_mem_free_0(config_copy);
	return result;
}
