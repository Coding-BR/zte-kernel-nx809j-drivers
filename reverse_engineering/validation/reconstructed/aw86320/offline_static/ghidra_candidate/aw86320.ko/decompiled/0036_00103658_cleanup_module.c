
void cleanup_module(void)

{
  i2c_del_driver(0x100000);
  return;
}

