
void cleanup_module(void)

{
  i2c_del_driver(&aw9620x_data_base);
  return;
}

