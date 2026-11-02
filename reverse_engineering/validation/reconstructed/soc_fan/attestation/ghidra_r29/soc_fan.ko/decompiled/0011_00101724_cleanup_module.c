
void cleanup_module(void)

{
  platform_driver_unregister(&nubia_fan_driver);
  return;
}

