extern struct device *syna_request_managed_device(void);
extern void *devm_kmalloc(struct device *device, size_t size,
				  unsigned int flags);

void *syna_pal_mem_alloc(int size)
{
	struct device *managed_device;

	managed_device = syna_request_managed_device();
	if (!managed_device) {
		printk("\\0013[error] %s: Invalid managed device\\n",
		       "syna_pal_mem_alloc");
		return NULL;
	}
	if (size <= 0) {
		printk("\\0013[error] %s: Invalid parameter\\n",
		       "syna_pal_mem_alloc");
		return NULL;
	}
	return devm_kmalloc(managed_device, (size_t)size, 0xdc0);
}
