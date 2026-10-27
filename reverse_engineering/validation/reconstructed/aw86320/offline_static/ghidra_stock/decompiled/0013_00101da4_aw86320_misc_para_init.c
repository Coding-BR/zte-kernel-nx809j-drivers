
void aw86320_misc_para_init(undefined8 param_1)

{
  haptic_i2c_write(param_1,0,0xaaaa);
  haptic_i2c_write(param_1,0x40,0x7d7d);
  haptic_i2c_write(param_1,0x12,0x1108);
  haptic_i2c_write(param_1,0x36,0x2825);
  haptic_i2c_write(param_1,0x42,0x1800);
  haptic_i2c_write(param_1,0x46,0x103a);
  haptic_i2c_write(param_1,0x47,0x13e5);
  haptic_i2c_write(param_1,0x48,0x869c);
  haptic_i2c_write(param_1,0x4a,0x805);
  haptic_i2c_write(param_1,0x4b,0x8000);
  return;
}

