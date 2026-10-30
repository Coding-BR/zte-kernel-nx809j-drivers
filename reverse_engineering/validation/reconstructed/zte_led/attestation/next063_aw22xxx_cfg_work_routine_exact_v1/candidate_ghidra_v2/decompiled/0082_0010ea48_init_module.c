
int init_module(void)

{
  int iVar1;
  
  _printk(&DAT_0010863a);
  msleep(500);
  _printk(&DAT_0010832d);
  iVar1 = i2c_register_driver(&__this_module,aw22xxx_i2c_driver);
  if (iVar1 != 0) {
    _printk(&DAT_001080c9,iVar1);
  }
  return iVar1;
}

