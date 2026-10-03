
long gpio_keys_store_disabled_keys(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  long lVar1;
  
  lVar1 = gpio_keys_attr_store_helper(*(undefined8 *)(param_1 + 0x98),param_3,1);
  if (lVar1 != 0) {
    param_4 = lVar1;
  }
  return param_4;
}

