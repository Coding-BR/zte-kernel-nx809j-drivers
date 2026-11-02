
int init_module(void)

{
  int iVar1;
  
  _printk(&DAT_0010d6d6,"v0.3.0");
  iVar1 = i2c_register_driver(&__this_module,&aw9620x_data_base);
  if (iVar1 != 0) {
    _printk(&DAT_0010cefc);
  }
  return iVar1;
}

