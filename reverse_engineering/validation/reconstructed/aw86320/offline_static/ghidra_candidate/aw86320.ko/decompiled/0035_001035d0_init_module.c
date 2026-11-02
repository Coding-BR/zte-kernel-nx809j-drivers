
int init_module(void)

{
  int iVar1;
  
  _printk(&DAT_0010421e,"aw86320","aw_i2c_init","V0.0.1");
  iVar1 = i2c_register_driver(&__this_module,0x100000);
  if (iVar1 != 0) {
    _printk(&DAT_00104426,"aw86320","aw_i2c_init");
  }
  return iVar1;
}

