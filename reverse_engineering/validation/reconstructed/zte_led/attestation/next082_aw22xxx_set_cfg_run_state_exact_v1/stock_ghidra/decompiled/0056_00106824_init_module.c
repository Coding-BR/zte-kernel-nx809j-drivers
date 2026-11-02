
int init_module(void)

{
  int iVar1;
  
  _printk(&DAT_0010d321,"v1.1.3");
  msleep(500);
  _printk(&DAT_0010ce3a);
  iVar1 = i2c_register_driver(&__this_module,aw22xxx_i2c_driver);
  if (iVar1 != 0) {
    _printk(&DAT_0010e24d);
  }
  return iVar1;
}

