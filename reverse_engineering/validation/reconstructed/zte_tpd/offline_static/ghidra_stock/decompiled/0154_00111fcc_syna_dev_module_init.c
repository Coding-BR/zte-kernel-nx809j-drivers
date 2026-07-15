
void syna_dev_module_init(void)

{
  int iVar1;
  
  iVar1 = syna_hw_interface_init();
  if (-1 < iVar1) {
    msleep(200);
    __platform_driver_register(&syna_dev_driver,&__this_module);
  }
  return;
}

