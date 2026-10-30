
uint aw8693x_get_theory_time(long param_1)

{
  long lVar1;
  uint uVar2;
  uint uVar3;
  byte local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c[0] = 0;
  i2c_r_bytes(param_1,0x46,local_2c,1);
  if ((local_2c[0] & 0x60) == 0x40) {
    uVar2 = 0xc;
  }
  else if ((local_2c[0] & 0x60) == 0x20) {
    uVar2 = 0x30;
  }
  else {
    if ((local_2c[0] & 0x60) != 0) {
      uVar3 = 0;
      goto LAB_00105398;
    }
    uVar2 = 0x18;
  }
  uVar3 = 0;
  if (uVar2 != 0) {
    uVar3 = (uint)(*(int *)(param_1 + 0x78) * 1000) / uVar2;
  }
LAB_00105398:
  _printk(&DAT_00105e20,"haptic_hv",0x6a0,"aw8693x_get_theory_time",*(undefined8 *)(param_1 + 0xa0),
          uVar3);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) != local_28) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return uVar3;
}

