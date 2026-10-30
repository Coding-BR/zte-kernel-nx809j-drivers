
void aw22xxx_led_imax_cfg(long param_1)

{
  aw22xxx_i2c_write();
  aw22xxx_i2c_write();
  *(undefined4 *)(param_1 + 0x2f0) = 7;
  _printk(&DAT_001071ac,"aw22xxx_led_imax_cfg",
          *(undefined8 *)(aw22xxx_cfg_name + (ulong)*(uint *)(param_1 + 0x300) * 8),7);
  return;
}

