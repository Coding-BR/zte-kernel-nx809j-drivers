
void init_module(void)

{
  __platform_driver_register(&nubia_fan_driver,&__this_module);
  return;
}

