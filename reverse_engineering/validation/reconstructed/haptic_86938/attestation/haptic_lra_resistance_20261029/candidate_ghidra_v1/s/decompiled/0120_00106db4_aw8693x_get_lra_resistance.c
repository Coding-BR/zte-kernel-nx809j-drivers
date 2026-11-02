
void aw8693x_get_lra_resistance(long param_1)

{
  long lVar1;
  byte bVar2;
  byte bVar3;
  byte local_40 [4];
  undefined2 local_3c;
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_40[0] = 0;
  local_3c = 0;
  aw8693x_stop();
  i2c_w_bits(param_1,0x45,0xfffffffb,4);
  usleep_range_state(500,600,2);
  i2c_w_bits(param_1,0x4e,0xffffff87,0x18);
  i2c_r_bytes(param_1,0x4d,local_40,1);
  bVar2 = local_40[0];
  i2c_r_bytes(param_1,0x4e,local_40,1);
  bVar3 = local_40[0];
  i2c_w_bits(param_1,0x4e,0xfffffff8,4);
  i2c_w_bits(param_1,0x4d,0xfffffff0,5);
  usleep_range_state(3000,0xdac,2);
  i2c_w_bits(param_1,0x4d,0xfffffffc,0);
  i2c_w_bits(param_1,0x45,0xfffffffb,0);
  i2c_w_bits(param_1,0x4d,0xfffffff3,bVar2 & 0xc);
  i2c_w_bits(param_1,0x4e,0xfffffff8,bVar3 & 7);
  i2c_r_bytes(param_1,0x4f,&local_3c,2);
  *(uint *)(param_1 + 100) = (((uint)local_3c._1_1_ | ((byte)local_3c & 3) << 8) * 610000) / 0x27f6;
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

