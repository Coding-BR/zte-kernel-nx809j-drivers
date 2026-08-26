ssize_t syna_testing_check_config_id_show(struct kobject *kobj,
					  struct kobj_attribute *attr, char *buf)
{
	struct kobject *parent;
	struct syna_tcm *tcm;
	struct testing_item *item;
	struct tcm_buffer config_id = {};
	struct testing_limit expected_default;
	struct device *managed_device;
	const char *result;
	int written;
	u8 connected;

	(void)attr;
	parent = kobj->parent;
	/* Stock follows testing -> sysfs -> device and reads driver_data at +0x98. */
	tcm = *(struct syna_tcm **)((u8 *)parent->parent + 0x98);
	connected = *((u8 *)tcm + 0x582);
#ifdef __aarch64__
	asm goto("tbz %w0, #0, %l[disconnected]" : : "r"(connected) : :
		 disconnected);
#else
	if (!(connected & 1))
		goto disconnected;
#endif

	item = syna_tcm_get_testing_0002();
	if (!item)
		return scnprintf(buf, 4096, "Invalid testing item id:%d\n", 2);

	/* These stores and offsets are recovered from the stock stack buffer. */
	config_id.lock_depth = 0;
	config_id.data = NULL;
	config_id.buf_size = 0;
	config_id.data_length = 0;
	_mutex_init(config_id.mutex, "(struct mutex *)ptr",
		    &syna_pal_mutex_alloc___key_3);
	item->result_data = &config_id;
	expected_default.data_length = 0;
	/* Preserve the stock's distinct pointer, size and length stores. */
	asm volatile("" : : : "memory");
	expected_default.data = "Default";
	asm volatile("" : : : "memory");
	expected_default.size = 16;
	item->limit_primary = &expected_default;

	if (item->run(tcm->tcm_dev, item, false) < 0) {
		printk("\0013[error] %s: Fail to run test, %s\n",
		       "syna_testing_check_config_id_show", item->name);
		result = "Fail";
	} else if (item->result) {
		result = "Pass";
	} else {
		result = "Fail";
	}

	written = scnprintf(buf, 4096, "\n%s (version.%d): %s\n\n",
			    item->name, item->version, result);
	if (config_id.data_length)
		written += scnprintf(buf + written, 4096 - written,
				     "\nConfig ID: %s\n", (char *)config_id.data);

#ifdef __aarch64__
	asm goto("cbnz %w0, %l[config_busy]" : : "r"(config_id.lock_depth) : :
		 config_busy);
#else
	if (config_id.lock_depth)
		goto config_busy;
#endif
config_release:
	managed_device = syna_request_managed_device();
	if (managed_device) {
		if (config_id.data)
			devm_kfree(managed_device, config_id.data);
	} else {
		printk("\0013[error] %s: Invalid managed device\n",
		       "syna_pal_mem_free");
	}

	return written;

config_busy:
	printk("\0013[error] %s: Buffer still in used, %d references\n",
	       "syna_tcm_buf_release", config_id.lock_depth);
#ifdef __aarch64__
	/* Stock cold code branches back to the one managed-device sequence. */
	asm goto("b %l[config_release]" : : : : config_release);
	__builtin_unreachable();
#else
	goto config_release;
#endif

disconnected:
	return scnprintf(buf, 4096, "Device is NOT connected\n");
}
