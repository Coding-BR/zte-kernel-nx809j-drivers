
undefined4 syna_tcm_v1_set_up_max_rw_size(long param_1,uint param_2,uint param_3)

{
  uint uVar1;
  ushort uVar2;
  undefined1 *puVar3;
  uint uVar4;
  
  if (param_1 == 0) {
    puVar3 = &DAT_00133fd6;
  }
  else {
    if (*(char *)(param_1 + 0x80) == '\x01') {
      uVar2 = *(ushort *)(param_1 + 0x96);
      uVar1 = *(uint *)(param_1 + 0x40);
      if (param_2 <= uVar2) {
        uVar4 = (uint)uVar2;
        if (uVar1 <= uVar2) {
          uVar4 = uVar1;
        }
        if (param_2 <= uVar4) {
          uVar4 = param_2;
        }
        if (uVar1 != 0) {
          param_2 = uVar4;
        }
        if (*(uint *)(param_1 + 0x38) != param_2) {
          *(uint *)(param_1 + 0x38) = param_2;
        }
      }
      uVar4 = param_3;
      if ((uVar1 != 0) && (uVar4 = *(uint *)(param_1 + 0x44), param_3 <= *(uint *)(param_1 + 0x44)))
      {
        uVar4 = param_3;
      }
      if (*(uint *)(param_1 + 0x3c) == uVar4) {
        return 0;
      }
      *(uint *)(param_1 + 0x3c) = uVar4;
      return 0;
    }
    puVar3 = &DAT_0013773a;
  }
  _printk(puVar3,"syna_tcm_v1_set_up_max_rw_size");
  return 0xffffff0f;
}

