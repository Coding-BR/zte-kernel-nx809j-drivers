void *syna_pal_mem_alloc(int size)
{
  void *managed_device;

  managed_device = syna_request_managed_device();
  if (!managed_device) {
    printk("\x01" "3[error] %s: Invalid managed device\n", "syna_pal_mem_alloc");
    return NULL;
  }
  if (size <= 0) {
    printk("\x01" "3[error] %s: Invalid parameter\n", "syna_pal_mem_alloc");
    return NULL;
  }
  return devm_kmalloc(managed_device, (unsigned int)size, 0xdc0);
}
