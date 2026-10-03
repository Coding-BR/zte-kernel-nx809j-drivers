
void init_module(void)

{
  __platform_driver_register(zte_reboot_ext_driver,&__this_module);
  return;
}

