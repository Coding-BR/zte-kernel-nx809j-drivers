
int haptic_i2c_read(long param_1,undefined1 param_2,ushort *param_3)

{
  long lVar1;
  int iVar2;
  int iVar3;
  undefined1 local_90 [4];
  ushort local_8c [2];
  undefined2 local_88;
  undefined4 local_86;
  undefined2 local_82;
  undefined1 *local_80;
  undefined2 local_78;
  undefined4 local_76;
  undefined2 local_72;
  ushort *local_70;
  long local_68;
  
  lVar1 = sp_el0;
  local_68 = *(long *)(lVar1 + 0x710);
  iVar3 = 0;
  local_8c[0] = 0;
  do {
    local_88 = *(undefined2 *)(*(long *)(param_1 + 0x1e8) + 2);
    local_86 = 0x10000;
    local_82 = 0;
    local_76 = 0x20001;
    local_72 = 0;
    local_90[0] = param_2;
    local_80 = local_90;
    local_78 = local_88;
    local_70 = local_8c;
    iVar2 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x1e8) + 0x18),&local_88,2);
    if (iVar2 < 0) {
      _printk(&DAT_00103b04,"aw86320",0x86,"i2c_reads");
    }
    else {
      if (iVar2 == 2) {
        *param_3 = local_8c[0] >> 8 | local_8c[0] << 8;
        break;
      }
      _printk(&DAT_00103f45,"aw86320",0x89,"i2c_reads");
      iVar2 = -6;
    }
    _printk(&DAT_001036b0,"aw86320",0x99,"haptic_i2c_read",iVar3,iVar2);
    iVar3 = iVar3 + 1;
  } while (iVar3 != 5);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return iVar2;
}

