
void aw8693x_stop(long param_1)

{
  long lVar1;
  bool bVar2;
  int iVar3;
  undefined1 local_30 [4];
  char local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  _printk(&DAT_00108d4f,"haptic_hv",0x2a9,"aw8693x_stop");
  *(undefined1 *)(param_1 + 0x17) = 0;
  local_30[0] = 1;
  i2c_w_bits(param_1,0x45,0xfffffffb,4);
  usleep_range_state(500,600,2);
  i2c_w_bits(param_1,8,0xfffffffc,3);
  i2c_w_bytes(param_1,9,local_30,1);
  i2c_w_bits(param_1,0x45,0xfffffffb,0);
  iVar3 = -100;
  do {
    local_2c[0] = '\0';
    i2c_r_bytes(param_1,0x3f,local_2c,1);
    if (local_2c[0] == '\0') {
      _printk(&DAT_00109806,"haptic_hv",0x1ea,"aw8693x_wait_enter_standby");
      goto LAB_001071c4;
    }
    usleep_range_state(2000,0x9c4,2);
    bVar2 = iVar3 != -1;
    iVar3 = iVar3 + 1;
  } while (bVar2);
  _printk(&DAT_001088b2,"haptic_hv",0x1ef,"aw8693x_wait_enter_standby");
  _printk(&DAT_001093d9,"haptic_hv",0x2b4,"aw8693x_stop");
  _printk(&DAT_0010896e,"haptic_hv",0x23e,"aw8693x_play_mode");
  *(undefined1 *)(param_1 + 0x17) = 0;
  i2c_w_bits(param_1,0x45,0xffffffdf,0x20);
  i2c_w_bits(param_1,0x45,0xffffffdf,0);
LAB_001071c4:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

