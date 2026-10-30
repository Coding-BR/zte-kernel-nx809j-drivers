
void init_module(void)

{
  __platform_driver_register(gpio_keys_device_driver,&__this_module);
  return;
}

