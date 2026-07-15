
void cleanup_module(void)

{
  platform_driver_unregister(zte_reboot_ext_driver);
  return;
}

