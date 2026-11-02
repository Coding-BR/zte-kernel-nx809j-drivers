
undefined8 syna_tcm_v1_check_max_rw_size(long param_1)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  ushort uVar4;
  undefined1 *puVar5;
  
  if (param_1 == 0) {
    puVar5 = &DAT_00133fd6;
  }
  else if (*(char *)(param_1 + 0x80) == '\x01') {
    uVar4 = *(ushort *)(param_1 + 0x96);
    if (uVar4 != 0) {
      uVar3 = *(uint *)(param_1 + 0x40);
      uVar1 = (uint)uVar4;
      if (uVar3 <= uVar4) {
        uVar1 = uVar3;
      }
      uVar2 = (uint)uVar4;
      if (uVar3 != 0) {
        uVar2 = uVar1;
      }
      if (*(uint *)(param_1 + 0x38) != uVar2) {
        *(uint *)(param_1 + 0x38) = uVar2;
      }
      if ((uVar3 != 0) && (*(uint *)(param_1 + 0x44) < *(uint *)(param_1 + 0x3c))) {
        *(uint *)(param_1 + 0x3c) = *(uint *)(param_1 + 0x44);
      }
      return 0;
    }
    puVar5 = &DAT_00137d35;
  }
  else {
    puVar5 = &DAT_0013773a;
  }
  _printk(puVar5,"syna_tcm_v1_check_max_rw_size");
  return 0xffffff0f;
}

