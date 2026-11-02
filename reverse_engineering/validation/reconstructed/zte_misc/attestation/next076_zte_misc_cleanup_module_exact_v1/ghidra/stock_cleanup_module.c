
void cleanup_module(void)

{
  platform_driver_unregister(zte_misc_device_driver);
  return;
}

