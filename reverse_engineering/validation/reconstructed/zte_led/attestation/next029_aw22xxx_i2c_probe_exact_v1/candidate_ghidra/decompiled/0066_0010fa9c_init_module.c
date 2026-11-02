
int init_module(void)

{
  int iVar1;
  
  _printk(&DAT_001095b2);
  msleep(500);
  _printk(&DAT_00108d5c);
  iVar1 = i2c_register_driver(&__this_module,aw22xxx_i2c_driver);
  if (iVar1 != 0) {
    _printk(&DAT_001087d8,iVar1);
  }
  return iVar1;
}

