void syna_pal_mem_free_0(void *memory)
{
  void *managed_device;

  managed_device = syna_request_managed_device();
  if (managed_device)
    devm_kfree(managed_device, memory);
  else
    printk("\x01" "3[error] %s: Invalid managed device\n",
           "syna_pal_mem_free");
}
