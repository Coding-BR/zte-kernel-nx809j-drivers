
void aw8693x_offset_cali(long param_1)

{
  int iVar1;
  long lVar2;
  int iVar3;
  undefined2 local_2c;
  undefined1 local_2a;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  local_2a = 0;
  local_2c = 0;
  i2c_w_bits(param_1,0x4e,0xfffffff8,*(undefined1 *)(param_1 + 0x495));
  i2c_w_bits(param_1,0x45,0xfffffffb,4);
  usleep_range_state(500,600,2);
  i2c_w_bits(param_1,0x4e,0xffffff87,0x20);
  i2c_w_bits(param_1,0x4d,0xfffffffc,1);
  usleep_range_state(3000,0xdac,2);
  i2c_w_bits(param_1,0x4d,0xfffffffc,0);
  i2c_r_bytes(param_1,0x4f,&local_2c,2);
  i2c_w_bits(param_1,0x45,0xfffffffb,0);
  if ((ulong)*(byte *)(param_1 + 0x495) < 8) {
    iVar3 = *(int *)(&DAT_00109f4c + (ulong)*(byte *)(param_1 + 0x495) * 4);
  }
  else {
    _printk(&DAT_00109441,"haptic_hv",0x609,"aw8693x_offset_cali");
    iVar3 = 0;
  }
  iVar1 = 0;
  if (iVar3 != 0) {
    iVar1 = (int)(((uint)local_2c._1_1_ | ((byte)local_2c & 3) << 8) * 0x988 + -0x131000) / iVar3;
  }
  _printk(&DAT_00109d46,"haptic_hv",0x60e,"aw8693x_offset_cali",iVar1);
  if (iVar1 - 0x10U < 0xffffffe1) {
    _printk(&DAT_00109885,"haptic_hv",0x610,"aw8693x_offset_cali");
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

