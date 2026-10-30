
void cleanup_module(void)

{
  i2c_del_driver(&aw9620x_i2c_driver);
  return;
}

