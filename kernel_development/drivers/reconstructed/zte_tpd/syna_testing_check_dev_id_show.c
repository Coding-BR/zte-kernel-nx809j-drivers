#ifdef __aarch64__
#define NX809J_REGISTER(name) __asm__(name)
#else
#define NX809J_REGISTER(name)
#endif

#undef syna_pal_mutex_alloc___key_3
static struct lock_class_key syna_pal_mutex_alloc___key_3;

ssize_t syna_testing_check_dev_id_show(struct kobject *kobj,
				       struct kobj_attribute *attr, char *buf)
{
	register char *output NX809J_REGISTER("x19") = buf;
	register struct kobject *parent NX809J_REGISTER("x8");
	register struct syna_tcm *tcm NX809J_REGISTER("x23");
	register struct testing_item *item NX809J_REGISTER("x20");
	register struct tcm_buffer *build_result NX809J_REGISTER("x24");
	register struct tcm_buffer *device_result NX809J_REGISTER("x25");
	struct testing_limit expected_device_id;
	struct device *managed_device;
	const char *result;
	int written;
	u8 connected;

	(void)attr;

#ifdef __aarch64__
	/* Recovered first memory access: keep parent materialization ahead of locals. */
	asm volatile("ldr %0, [%1, #0x18]"
		     : "=r"(parent) : "r"(kobj) : "memory");
#else
	parent = kobj->parent;
#endif
	/* Stock loads parent first, then materializes the two zeroed stack buffers. */
	struct tcm_buffer device_id = {};
	struct tcm_buffer build_id = {};

	build_result = &build_id;
	device_result = &device_id;
#ifdef __aarch64__
	/* Preserve the recovered live register relation across the local setup. */
	asm volatile("" : : "r"(output), "r"(parent) : "memory");
#endif
	/* Stock follows testing -> sysfs -> device and reads driver_data at 0x98. */
	tcm = *(struct syna_tcm **)((u8 *)parent->parent + 0x98);
	connected = *((u8 *)tcm + 0x582);
#ifdef __aarch64__
	/* The recovered stock code branches to the cold sysfs error tail with TBZ. */
	asm goto("tbz %w0, #0, %l[disconnected]" : : "r"(connected) : :
		 disconnected);
#else
	if (!(connected & 1))
		goto disconnected;
#endif

	item = syna_tcm_get_testing_0001();
	if (!item)
		return scnprintf(output, 4096, "Invalid testing item id:%d\n", 1);

	/* The stock routine explicitly resets these fields immediately before init. */
	build_result->lock_depth = 0;
	build_result->data = NULL;
	build_result->buf_size = 0;
	build_result->data_length = 0;
	_mutex_init(build_result->mutex, "(struct mutex *)ptr",
		    &syna_pal_mutex_alloc___key_3);
	item->result_data = build_result;
	device_result->lock_depth = 0;
	device_result->data = NULL;
	device_result->buf_size = 0;
	device_result->data_length = 0;
	_mutex_init(device_result->mutex, "(struct mutex *)ptr",
		    &syna_pal_mutex_alloc___key_3);
	item->result_aux = device_result;
	item->limit_primary = NULL;
	expected_device_id.data = "3908";
	expected_device_id.size = 4;
	expected_device_id.data_length = 0;
	item->limit_secondary = &expected_device_id;

#ifdef __aarch64__
	/* Keep the stock AArch64 register contract across the KCFI callback. */
	asm volatile("" : : "r"(output), "r"(tcm), "r"(item),
		     "r"(build_result), "r"(device_result) : "memory");
#endif
	if (item->run(tcm->tcm_dev, item, false) < 0) {
		printk("\0013[error] %s: Fail to run test, %s\n",
		       "syna_testing_check_dev_id_show", item->name);
		result = "Fail";
	} else if (item->result) {
		result = "Pass";
	} else {
		result = "Fail";
	}

	written = scnprintf(output, 4096, "\n%s (version.%d): %s\n\n",
			    item->name, item->version, result);
	if (build_result->data_length)
		written += scnprintf(output + written, 4096 - written,
				     "Build ID: %d\n", *(u32 *)build_result->data);
	if (device_result->data_length)
		written += scnprintf(output + written, 4096 - written,
				     "Device ID: %s\n", (char *)device_result->data);


#ifdef __aarch64__
	asm goto("cbnz %w0, %l[build_busy]" : :
		 "r"(build_result->lock_depth) : : build_busy);
#else
	if (build_result->lock_depth)
		goto build_busy;
#endif
build_release:
	managed_device = syna_request_managed_device();
	if (managed_device) {
		if (build_result->data)
			devm_kfree(managed_device, build_result->data);
	} else {
		printk("\0013[error] %s: Invalid managed device\n",
		       "syna_pal_mem_free");
	}
	/* Stock clears the adjacent size and length words with one 64-bit store. */
	build_result->buf_size = 0;
	build_result->data_length = 0;
	build_result->lock_depth = 0;

#ifdef __aarch64__
	asm goto("cbnz %w0, %l[device_busy]" : :
		 "r"(device_result->lock_depth) : : device_busy);
#else
	if (device_result->lock_depth)
		goto device_busy;
#endif
device_release:
	managed_device = syna_request_managed_device();
	if (managed_device) {
		if (device_result->data)
			devm_kfree(managed_device, device_result->data);
	} else {
		printk("\0013[error] %s: Invalid managed device\n",
		       "syna_pal_mem_free");
	}

	return written;

disconnected:
	return scnprintf(output, 4096, "Device is NOT connected\n");

build_busy:
	printk("\0013[error] %s: Buffer still in used, %d references\n",
	       "syna_tcm_buf_release", build_result->lock_depth);
	/* The stock cold block branches back to the single release sequence. */
#ifdef __aarch64__
	asm goto("b %l[build_release]" : : : : build_release);
	__builtin_unreachable();
#else
	goto build_release;
#endif

device_busy:
	printk("\0013[error] %s: Buffer still in used, %d references\n",
	       "syna_tcm_buf_release", device_result->lock_depth);
	/* Keep the second cold path joined to its one stock release sequence. */
#ifdef __aarch64__
	asm goto("b %l[device_release]" : : : : device_release);
	__builtin_unreachable();
#else
	goto device_release;
#endif
}

#undef NX809J_REGISTER
