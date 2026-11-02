
void cleanup_module(void)

{
  i2c_del_driver(&aw_i2c_driver);
  return;
}

