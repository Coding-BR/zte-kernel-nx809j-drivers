#ifdef __aarch64__
#define NX809J_REGISTER(name) __asm__(name)
#else
#define NX809J_REGISTER(name)
#endif

ssize_t syna_testing_pt01_show(struct kobject *kobj,
			       struct kobj_attribute *attr, char *buf)
{
	struct kobject *parent;
	struct syna_tcm *tcm;
	struct testing_item *item;
	struct tcm_buffer result_buffer = {};
	struct testing_limit pt01_limit = {};
	struct device *managed_device;
	u8 *result_data;
	const char *result;
	u32 written;
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

	item = syna_tcm_get_testing_0100();
	if (!item)
		return scnprintf(buf, 4096, "Invalid testing item id:%d\n", 0x100);

	result_buffer.lock_depth = 0;
	result_buffer.data = NULL;
	result_buffer.buf_size = 0;
	result_buffer.data_length = 0;
	_mutex_init(result_buffer.mutex, "(struct mutex *)ptr",
		    &syna_pal_mutex_alloc___key_3);
	item->result_data = &result_buffer;
	/* Stock writes the pointer and size as distinct stores. */
	asm volatile("" : : : "memory");
	pt01_limit.data = pt01_limits;
	asm volatile("" : : : "memory");
	pt01_limit.size = 16;
	item->limit_primary = &pt01_limit;

	if (item->run(tcm->tcm_dev, item, false) < 0) {
		printk("\0013[error] %s: Fail to run test, %s\n",
		       "syna_testing_pt01_show", item->name);
		result = "Fail";
	} else if (item->result) {
		result = "Pass";
	} else {
		result = "Fail";
	}

	written = scnprintf(buf, 4096, "\n%s (version.%d): %s\n\n",
			    item->name, item->version, result);
	if (result_buffer.data_length) {
		int index = 0;
		register unsigned long output_size NX809J_REGISTER("x23") = 4096;

		for (; (u32)index < result_buffer.data_length; index++)
			written += scnprintf(buf + written, output_size - written, "x%02X ",
					     result_buffer.data[index]);
		written += scnprintf(buf + written, output_size - written, "\n");
	}

#ifdef __aarch64__
	asm goto("cbnz %w0, %l[result_busy]" : :
		 "r"(result_buffer.lock_depth) : : result_busy);
#else
	if (result_buffer.lock_depth)
		goto result_busy;
#endif
result_release:
	result_data = result_buffer.data;
	managed_device = syna_request_managed_device();
	if (managed_device) {
		if (result_data)
			devm_kfree(managed_device, result_data);
	} else {
		printk("\0013[error] %s: Invalid managed device\n",
		       "syna_pal_mem_free");
	}

	return (int)written;

result_busy:
	printk("\0013[error] %s: Buffer still in used, %d references\n",
	       "syna_tcm_buf_release", result_buffer.lock_depth);
#ifdef __aarch64__
	asm goto("b %l[result_release]" : : : : result_release);
	__builtin_unreachable();
#else
	goto result_release;
#endif

disconnected:
	return scnprintf(buf, 4096, "Device is NOT connected\n");
}

#undef NX809J_REGISTER
