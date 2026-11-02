
void aw8693x_get_vbat(long param_1)

{
  uint uVar1;
  long lVar2;
  ulong uVar3;
  undefined2 local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  local_2c = 0;
  aw8693x_stop();
  i2c_w_bits(param_1,0x45,0xfffffffb,4);
  usleep_range_state(500,600,2);
  i2c_w_bits(param_1,0x4e,0xffffff87,0);
  i2c_w_bits(param_1,0x4d,0xfffffffc,1);
  usleep_range_state(3000,0xdac,2);
  i2c_w_bits(param_1,0x4d,0xfffffffc,0);
  i2c_r_bytes(param_1,0x4f,&local_2c,2);
  i2c_w_bits(param_1,0x45,0xfffffffb,0);
  uVar1 = (uint)local_2c._1_1_ | ((byte)local_2c & 3) << 8;
  uVar3 = (ulong)(uVar1 * 0x17d4) / 0x3ff;
  *(uint *)(param_1 + 0x68) = (uVar1 * 0x17d4) / 0x3ff;
  if (0x2f2 < uVar1) {
    *(undefined4 *)(param_1 + 0x68) = 0x1194;
    _printk(&DAT_00108e0d,"haptic_hv",0x5d7,"aw8693x_get_vbat",0x1194);
    uVar3 = (ulong)*(uint *)(param_1 + 0x68);
  }
  if ((uint)uVar3 < 3000) {
    *(undefined4 *)(param_1 + 0x68) = 3000;
    _printk(&DAT_001083dd,"haptic_hv",0x5db,"aw8693x_get_vbat",3000);
    uVar3 = (ulong)*(uint *)(param_1 + 0x68);
  }
  _printk(&DAT_001084f6,"haptic_hv",0x5dd,"aw8693x_get_vbat",uVar3,uVar1);
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

