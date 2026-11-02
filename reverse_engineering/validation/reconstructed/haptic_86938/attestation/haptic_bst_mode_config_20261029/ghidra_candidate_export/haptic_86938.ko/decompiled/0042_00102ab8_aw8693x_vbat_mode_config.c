
void aw8693x_vbat_mode_config(undefined8 param_1,char param_2)

{
  i2c_w_bits(param_1,0x4c,0xffffffbf,(ulong)(param_2 == '\x01') << 6);
  return;
}

