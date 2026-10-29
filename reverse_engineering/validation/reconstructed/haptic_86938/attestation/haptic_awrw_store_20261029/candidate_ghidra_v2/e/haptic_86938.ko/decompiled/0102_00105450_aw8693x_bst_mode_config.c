
void aw8693x_bst_mode_config(undefined8 param_1,char param_2)

{
  if (param_2 == '\0') {
    _printk(&DAT_0010615a,"haptic_hv",0x1fe,"aw8693x_bst_mode_config");
    i2c_w_bits(param_1,6,0xffffffdf,0);
  }
  else if (param_2 == '\x01') {
    _printk(&DAT_00106b39,"haptic_hv",0x1f8,"aw8693x_bst_mode_config");
    i2c_w_bits(param_1,6,0xffffffdf,0x20);
  }
  else {
    _printk(&DAT_00106329,"haptic_hv",0x204,"aw8693x_bst_mode_config",param_2);
  }
  return;
}

