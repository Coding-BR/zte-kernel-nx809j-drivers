
void cleanup_module(void)

{
  platform_driver_unregister(gpio_keys_device_driver);
  return;
}

