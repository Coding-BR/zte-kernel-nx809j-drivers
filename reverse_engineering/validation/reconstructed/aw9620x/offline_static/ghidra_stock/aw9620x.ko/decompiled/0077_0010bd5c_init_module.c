
int init_module(void)

{
  int iVar1;
  
  _printk(&DAT_0010ea76,"v0.3.0");
  iVar1 = i2c_register_driver(&__this_module,&aw9620x_i2c_driver);
  if (iVar1 != 0) {
    _printk(&DAT_0010e29c);
  }
  return iVar1;
}

