
void cleanup_module(void)

{
  i2c_del_driver(aw22xxx_i2c_driver);
  return;
}

