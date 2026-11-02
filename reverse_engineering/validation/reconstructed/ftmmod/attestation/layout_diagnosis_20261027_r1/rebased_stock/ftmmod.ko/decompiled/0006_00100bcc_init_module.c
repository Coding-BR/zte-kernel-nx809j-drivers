
int init_module(void)

{
  int iVar1;
  
  _printk(&DAT_00100fb2,"ftm_init");
  iVar1 = platform_device_register(&ftm_dev);
  if (iVar1 == 0) {
    iVar1 = __platform_driver_probe(ftm_driver,ftm_probe,&__this_module);
    if (iVar1 == 0) {
      _printk(&DAT_00100f2d,"ftm_init");
    }
    else {
      _printk(&DAT_00100fc6,iVar1);
    }
  }
  else {
    _printk(&DAT_00101048,iVar1);
    iVar1 = -0x13;
  }
  return iVar1;
}

