
int init_module(void)

{
  int iVar1;
  
  _printk(&DAT_0010876c);
  msleep(500);
  _printk(&DAT_001083c8);
  iVar1 = i2c_register_driver(&__this_module,aw22xxx_i2c_driver);
  if (iVar1 != 0) {
    _printk(&DAT_00108087,iVar1);
  }
  return iVar1;
}

