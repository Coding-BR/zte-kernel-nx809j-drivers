
void cleanup_module(void)

{
  i2c_del_driver(&DAT_00100260);
  return;
}

