
void aw8693x_play_mode(long param_1,byte param_2)

{
  undefined8 uVar1;
  undefined8 uVar2;
  undefined8 uVar3;
  
  if (param_2 < 3) {
    if (param_2 != 0) {
      if (param_2 == 1) {
        _printk(&DAT_001128c0,"haptic_hv",0x24f,"aw8693x_play_mode");
        *(undefined1 *)(param_1 + 0x17) = 1;
        i2c_w_bits(param_1,8,0xfffffffc,0);
        uVar2 = 0;
      }
      else {
        if (param_2 != 2) {
LAB_0010b4f8:
          _printk(&DAT_0011425a,"haptic_hv",0x27f,"aw8693x_play_mode",param_2);
          return;
        }
        _printk(&DAT_00113e34,"haptic_hv",0x263,"aw8693x_play_mode");
        *(undefined1 *)(param_1 + 0x17) = 2;
        i2c_w_bits(param_1,8,0xfffffffc,1);
        uVar2 = 4;
      }
      i2c_w_bits(param_1,8,0xfffffffb,uVar2);
      _printk(&DAT_00113e54,"haptic_hv",0x1f8,"aw8693x_bst_mode_config");
      uVar2 = 6;
      uVar1 = 0xffffffdf;
      uVar3 = 0x20;
      goto LAB_0010b5a4;
    }
    _printk(&DAT_00111972,"haptic_hv",0x23e,"aw8693x_play_mode");
    *(undefined1 *)(param_1 + 0x17) = 0;
    i2c_w_bits(param_1,0x45,0xffffffdf,0x20);
    uVar2 = 0x45;
    uVar1 = 0xffffffdf;
  }
  else {
    if (param_2 != 3) {
      if (param_2 == 4) {
        _printk(&DAT_00112fe6,"haptic_hv",0x275,"aw8693x_play_mode");
        *(undefined1 *)(param_1 + 0x17) = 4;
        i2c_w_bits(param_1,8,0xfffffffc,2);
        uVar2 = 4;
      }
      else {
        if (param_2 != 5) goto LAB_0010b4f8;
        _printk(&DAT_0011289a,"haptic_hv",0x259,"aw8693x_play_mode");
        *(undefined1 *)(param_1 + 0x17) = 5;
        i2c_w_bits(param_1,8,0xfffffffc,0);
        uVar2 = 0;
      }
      i2c_w_bits(param_1,8,0xfffffffb,uVar2);
      _printk(&DAT_00111cbe,"haptic_hv",0x1fe,"aw8693x_bst_mode_config");
      i2c_w_bits(param_1,6,0xffffffdf,0);
      uVar2 = 0x4c;
      uVar1 = 0xffffffbf;
      uVar3 = 0x40;
      goto LAB_0010b650;
    }
    _printk(&DAT_0011240c,"haptic_hv",0x26d,"aw8693x_play_mode");
    uVar2 = 8;
    uVar1 = 0xfffffffc;
    uVar3 = 0;
    *(undefined1 *)(param_1 + 0x17) = 3;
LAB_0010b5a4:
    i2c_w_bits(param_1,uVar2,uVar1,uVar3);
    uVar2 = 0x4c;
    uVar1 = 0xffffffbf;
  }
  uVar3 = 0;
LAB_0010b650:
  i2c_w_bits(param_1,uVar2,uVar1,uVar3);
  return;
}

