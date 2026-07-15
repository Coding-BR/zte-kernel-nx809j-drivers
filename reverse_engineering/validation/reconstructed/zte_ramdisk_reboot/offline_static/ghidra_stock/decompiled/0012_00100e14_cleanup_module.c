
void cleanup_module(void)

{
  platform_driver_unregister(zte_ramdisk_reboot_driver);
  return;
}

