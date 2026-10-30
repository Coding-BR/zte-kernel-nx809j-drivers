
int init_module(void)

{
  int iVar1;
  
  _printk(&DAT_00108728);
  msleep(500);
  _printk(&DAT_00108403);
  iVar1 = i2c_register_driver(&__this_module,aw22xxx_i2c_driver);
  if (iVar1 != 0) {
    _printk(&DAT_00108150,iVar1);
  }
  return iVar1;
}

