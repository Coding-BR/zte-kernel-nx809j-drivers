
void haptic_i2c_write(undefined8 param_1,ulong param_2,uint param_3)

{
  long lVar1;
  uint uVar2;
  ulong uVar3;
  ulong uVar4;
  ushort local_2c [2];
  long local_28;
  
  lVar1 = sp_el0;
  local_2c[0] = (ushort)(param_3 >> 8) & 0xff | (ushort)((param_3 & 0xff00ff) << 8);
  local_28 = *(long *)(lVar1 + 0x710);
  uVar4 = param_2 & 0xffffffff;
  uVar3 = haptic_i2c_writes(param_1,param_2,local_2c,2);
  if ((int)uVar3 < 0) {
    _printk(&DAT_00103e66,"aw86320",0x66,"haptic_i2c_write",0,uVar3 & 0xffffffff);
    uVar3 = haptic_i2c_writes(param_1,uVar4,local_2c,2);
    if ((int)uVar3 < 0) {
      _printk(&DAT_00103e66,"aw86320",0x66,"haptic_i2c_write",1,uVar3 & 0xffffffff);
      uVar3 = haptic_i2c_writes(param_1,uVar4,local_2c,2);
      if ((int)uVar3 < 0) {
        _printk(&DAT_00103e66,"aw86320",0x66,"haptic_i2c_write",2,uVar3 & 0xffffffff);
        uVar3 = haptic_i2c_writes(param_1,uVar4,local_2c,2);
        if ((int)uVar3 < 0) {
          _printk(&DAT_00103e66,"aw86320",0x66,"haptic_i2c_write",3,uVar3 & 0xffffffff);
          uVar2 = haptic_i2c_writes(param_1,uVar4,local_2c,2);
          uVar3 = (ulong)uVar2;
          if ((int)uVar2 < 0) {
            _printk(&DAT_00103e66,"aw86320",0x66,"haptic_i2c_write",4,uVar3);
          }
        }
      }
    }
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) != local_28) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar3);
  }
  return;
}

