
int init_module(void)

{
  int iVar1;
  
  _printk(&DAT_00107880);
  msleep(500);
  _printk(&DAT_00106b15);
  iVar1 = i2c_register_driver(&__this_module,&aw22xxx_i2c_driver);
  if (iVar1 != 0) {
    _printk(&DAT_001062c8,iVar1);
  }
  return iVar1;
}

