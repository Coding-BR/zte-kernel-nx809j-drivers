
void init_module(void)

{
  _printk(&DAT_0010214f,"zte_misc_init");
  __platform_driver_register(zte_misc_device_driver,&__this_module);
  return;
}

