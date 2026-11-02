
void init_module(void)

{
  __platform_driver_register(zte_ramdisk_reboot_driver,&__this_module);
  return;
}

