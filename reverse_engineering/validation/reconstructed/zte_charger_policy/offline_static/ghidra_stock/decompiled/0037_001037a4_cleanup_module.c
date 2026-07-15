
void cleanup_module(void)

{
  platform_driver_unregister(charger_policy_driver);
  return;
}

