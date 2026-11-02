
void syna_tcm_read_flash_boot_config(long param_1,long param_2,long param_3)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  undefined *puVar4;
  char cVar5;
  long lVar6;
  char *pcVar7;
  long lVar8;
  long lVar9;
  long lVar10;
  
  if (param_2 == 0) {
    puVar4 = &DAT_0016936a;
  }
  else if (param_3 == 0) {
    puVar4 = &DAT_0016a6a4;
  }
  else {
    if (*(char *)(param_1 + 9) == '\x01') {
      puVar4 = &DAT_001679c0;
      cVar5 = '\x01';
LAB_00135cd8:
      _printk(puVar4,"syna_tcm_read_flash_boot_config",cVar5);
      return;
    }
    pcVar7 = *(char **)(param_2 + 0x20);
    cVar5 = *pcVar7;
    if (cVar5 == '\x01') {
      lVar6 = 0xf;
      lVar8 = 0xe;
      lVar9 = 0xd;
      lVar10 = 0xc;
    }
    else {
      if (cVar5 != '\x03') {
        puVar4 = &DAT_00171d34;
        goto LAB_00135cd8;
      }
      lVar6 = 0x13;
      lVar8 = 0x12;
      lVar9 = 0x11;
      lVar10 = 0x10;
    }
    iVar1 = *(int *)(param_2 + 0x2c) * (uint)CONCAT11(pcVar7[lVar9],pcVar7[lVar10]);
    if (iVar1 != 0) {
      uVar3 = (uint)CONCAT11(pcVar7[lVar6],pcVar7[lVar8]);
      iVar2 = *(int *)(param_2 + 0x2c) * uVar3;
      if (iVar2 != 0) {
        if (*(int *)(param_2 + 0x38) != iVar1) {
          *(int *)(param_2 + 0x38) = iVar1;
        }
        if (*(uint *)(param_2 + 0x34) != uVar3) {
          *(uint *)(param_2 + 0x34) = uVar3;
        }
        _printk(&DAT_00169394,"syna_tcm_read_flash_boot_config",iVar1,iVar1,uVar3,iVar2);
        return;
      }
    }
    puVar4 = &DAT_00168620;
  }
  _printk(puVar4,"syna_tcm_read_flash_boot_config");
  return;
}

