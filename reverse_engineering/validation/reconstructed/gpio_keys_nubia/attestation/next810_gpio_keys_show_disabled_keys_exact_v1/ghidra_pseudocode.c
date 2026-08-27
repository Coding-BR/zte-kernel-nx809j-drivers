
void gpio_keys_show_disabled_keys(long param_1,undefined8 param_2,undefined8 param_3)

{
  gpio_keys_attr_show_helper(*(undefined8 *)(param_1 + 0x98),param_3,1,1);
  return;
}

