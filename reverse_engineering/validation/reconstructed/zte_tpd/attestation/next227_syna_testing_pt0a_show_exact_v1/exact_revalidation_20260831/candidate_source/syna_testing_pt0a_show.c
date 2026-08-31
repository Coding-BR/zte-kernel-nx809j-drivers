#ifdef __aarch64__
#define NX809J_REGISTER(name) __asm__(name)
#else
#define NX809J_REGISTER(name)
#endif

#undef syna_pal_mutex_alloc___key_3
static struct lock_class_key syna_testing_pt0a_show_key
	__asm__("syna_testing_pt0a_show.__key");
#define syna_pal_mutex_alloc___key_3 syna_testing_pt0a_show_key

ssize_t syna_testing_pt0a_show(struct kobject *kobj,
			       struct kobj_attribute *attr, char *buf)
{
	struct kobject *parent;
	struct syna_tcm *tcm;
	struct testing_item *item;
	struct tcm_buffer result_buffer = {};
	struct testing_limit high_limit = {};
	struct testing_limit low_limit = {};
	struct device *managed_device;
	u8 *result_data;
	const s16 *samples;
	const char *result;
	u32 written;
	u32 row;
	u32 column;
	u8 connected;
	register unsigned long output_size NX809J_REGISTER("x27") = 4096;

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

	item = syna_tcm_get_testing_0A00();
	if (!item)
		return scnprintf(buf, 4096, "Invalid testing item id:%d\n", 0xA00);

	item->image_cols = tcm->tcm_dev->num_of_image_cols;
	item->image_rows = tcm->tcm_dev->num_of_image_rows;
	result_buffer.lock_depth = 0;
	result_buffer.data = NULL;
	result_buffer.buf_size = 0;
	result_buffer.data_length = 0;
	_mutex_init(result_buffer.mutex, "(struct mutex *)ptr",
		    &syna_pal_mutex_alloc___key_3);

	high_limit.data = pt0a_hi_limits;
	high_limit.size = 3200;
	low_limit.data = pt0a_lo_limits;
	low_limit.size = 3200;
	item->result_data = &result_buffer;
	item->limit_primary = &high_limit;
	item->limit_secondary = &low_limit;

	if (item->run(tcm->tcm_dev, item, false) < 0) {
		printk("\0013[error] %s: Fail to run test, %s\n",
		       "syna_testing_pt0a_show", item->name);
		result = "Fail";
	} else if (item->result) {
		result = "Pass";
	} else {
		result = "Fail";
	}

	written = scnprintf(buf, 4096, "\n%s (version.%d): %s\n\n",
			    item->name, item->version, result);
	if (result_buffer.data_length && item->image_rows) {
		samples = (const s16 *)result_buffer.data;
		for (row = 0; row < item->image_rows; row++) {
			for (column = 0; column < item->image_cols; column++)
				written += scnprintf(buf + written, output_size - written, "%d ",
						     samples[column + row *
						     tcm->tcm_dev->num_of_image_cols]);
			written += scnprintf(buf + written, output_size - written, "\n");
		}
	}

	if (result_buffer.lock_depth)
		printk("\0013[error] %s: Buffer still in used, %d references\n",
		       "syna_tcm_buf_release", result_buffer.lock_depth);

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

disconnected:
	return scnprintf(buf, 4096, "Device is NOT connected\n");
}

#undef NX809J_REGISTER
