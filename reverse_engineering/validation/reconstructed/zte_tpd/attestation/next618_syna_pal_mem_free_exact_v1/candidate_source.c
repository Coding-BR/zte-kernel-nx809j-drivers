void syna_pal_mem_free(void *memory)
{
  void *managed_device;

  managed_device = syna_request_managed_device();
  if (!managed_device)
    printk("\x01" "3[error] %s: Invalid managed device\n",
           "syna_pal_mem_free");
  else if (memory)
    devm_kfree(managed_device, memory);
}
