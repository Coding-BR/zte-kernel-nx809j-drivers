
void aw8693x_set_pwm(undefined8 param_1,byte param_2)

{
  undefined8 uVar1;
  
  if (param_2 < 2) {
    if (param_2 == 0) {
      uVar1 = 0x20;
    }
    else {
      if (param_2 != 1) {
LAB_00104650:
        _printk(&DAT_0010524e,"haptic_hv",0x156,"aw8693x_set_pwm");
        return;
      }
      uVar1 = 0;
    }
  }
  else if (param_2 == 2) {
    uVar1 = 0x40;
  }
  else {
    if (param_2 != 3) goto LAB_00104650;
    uVar1 = 0x60;
  }
  i2c_w_bits(param_1,0x46,0xffffff9f,uVar1);
  return;
}

