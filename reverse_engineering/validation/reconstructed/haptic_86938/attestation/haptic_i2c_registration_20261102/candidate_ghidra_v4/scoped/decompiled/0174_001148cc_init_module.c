
int init_module(void)

{
  int iVar1;
  
  _printk(&DAT_00110d4c,"v0.5.0.15");
  iVar1 = i2c_register_driver(&__this_module,&aw_i2c_driver);
  if (iVar1 != 0) {
    _printk(&DAT_001114ec);
  }
  return iVar1;
}

