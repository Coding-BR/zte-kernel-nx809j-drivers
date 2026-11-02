
void cleanup_module(void)

{
  platform_driver_unregister(ftm_driver);
  platform_device_unregister(0x100000);
  return;
}

