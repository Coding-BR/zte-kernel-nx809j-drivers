
void syna_dev_module_exit(void)

{
  platform_driver_unregister(&syna_dev_driver);
  syna_hw_interface_exit();
  return;
}

