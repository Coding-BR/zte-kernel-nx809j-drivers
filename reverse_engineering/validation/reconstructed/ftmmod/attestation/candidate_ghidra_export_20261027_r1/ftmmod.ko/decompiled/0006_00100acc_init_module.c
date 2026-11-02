
int init_module(void)

{
  int iVar1;
  
  _printk(&DAT_00100ecb,"ftm_init");
  iVar1 = platform_device_register(0x100000);
  if (iVar1 == 0) {
    iVar1 = __platform_driver_probe(ftm_driver,ftm_probe,&__this_module);
    if (iVar1 == 0) {
      _printk(&DAT_00100e46,"ftm_init");
    }
    else {
      _printk(&DAT_00100edf,iVar1);
    }
  }
  else {
    _printk(&DAT_00100f61,iVar1);
    iVar1 = -0x13;
  }
  return iVar1;
}

