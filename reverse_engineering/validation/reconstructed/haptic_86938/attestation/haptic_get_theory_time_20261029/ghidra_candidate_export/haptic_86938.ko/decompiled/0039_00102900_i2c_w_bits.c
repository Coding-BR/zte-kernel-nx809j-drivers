
void i2c_w_bits(long param_1,undefined4 param_2,byte param_3,byte param_4)

{
  long lVar1;
  int iVar2;
  undefined *puVar3;
  undefined8 uVar4;
  byte local_60 [4];
  undefined1 local_5c [4];
  undefined2 local_58;
  undefined4 local_56;
  undefined2 local_52;
  undefined1 *local_50;
  undefined2 local_48;
  undefined4 local_46;
  undefined2 local_42;
  undefined1 *local_40;
  long local_38;
  
  local_40 = local_60;
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_5c[0] = (undefined1)param_2;
  local_60[0] = 0;
  local_58 = *(undefined2 *)(*(long *)(param_1 + 0x328) + 2);
  local_56 = 0x10000;
  local_50 = local_5c;
  local_52 = 0;
  local_46 = 0x10001;
  local_42 = 0;
  local_48 = local_58;
  iVar2 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x328) + 0x18),&local_58,2);
  if (iVar2 < 0) {
    _printk(&DAT_00105690,"haptic_hv",0x65,"i2c_r_bytes");
LAB_00102a38:
    puVar3 = &DAT_00105aac;
    uVar4 = 0x87;
  }
  else {
    if (iVar2 != 2) {
      _printk(&DAT_001058c8,"haptic_hv",0x68,"i2c_r_bytes");
      iVar2 = -6;
      goto LAB_00102a38;
    }
    local_60[0] = local_60[0] & param_3 | param_4 & (param_3 ^ 0xff);
    iVar2 = i2c_w_bytes(param_1,param_2,local_60,1);
    if (-1 < iVar2) {
      iVar2 = 0;
      goto LAB_001029c0;
    }
    puVar3 = &DAT_00105d63;
    uVar4 = 0x8e;
  }
  _printk(puVar3,"haptic_hv",uVar4,"i2c_w_bits",iVar2);
LAB_001029c0:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar2);
}

