
void init_module(void)

{
  __platform_driver_register(charger_policy_driver,&__this_module);
  return;
}

