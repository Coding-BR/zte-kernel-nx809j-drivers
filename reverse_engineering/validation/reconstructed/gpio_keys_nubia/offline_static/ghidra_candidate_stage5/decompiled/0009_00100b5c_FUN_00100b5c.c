
long FUN_00100b5c(void)

{
  long lVar1;
  long in_x3;
  
  lVar1 = gpio_keys_attr_store_helper();
  if (lVar1 != 0) {
    in_x3 = lVar1;
  }
  return in_x3;
}

