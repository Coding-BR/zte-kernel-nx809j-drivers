
void init_module(void)

{
  _printk(&DAT_0013dd9e,"zte_touch_init");
  __platform_driver_register(zte_touch_device_driver,&__this_module);
  return;
}

