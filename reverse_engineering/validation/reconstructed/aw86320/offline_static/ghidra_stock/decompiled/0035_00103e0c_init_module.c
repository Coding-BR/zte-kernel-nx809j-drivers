
int init_module(void)

{
  int iVar1;
  
  _printk(&DAT_00104b0c,"aw86320","aw_i2c_init","V0.0.1");
  iVar1 = i2c_register_driver(&__this_module,&aw_i2c_driver);
  if (iVar1 != 0) {
    _printk(&DAT_00104d14,"aw86320","aw_i2c_init");
  }
  return iVar1;
}

