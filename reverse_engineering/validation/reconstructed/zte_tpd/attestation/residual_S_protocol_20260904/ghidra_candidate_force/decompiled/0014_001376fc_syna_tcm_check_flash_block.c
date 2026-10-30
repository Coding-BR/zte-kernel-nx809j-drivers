
uint syna_tcm_check_flash_block(long param_1,long param_2,long param_3)

{
  int iVar1;
  byte bVar2;
  int iVar3;
  undefined *puVar4;
  char *pcVar5;
  uint uVar6;
  uint uVar7;
  long lVar8;
  byte *pbVar9;
  long lVar10;
  
  if (param_2 == 0) {
    puVar4 = &DAT_0016936a;
LAB_0013781c:
                    /* WARNING: Subroutine does not return */
    _printk(puVar4,"syna_tcm_check_flash_block");
  }
  if (param_3 == 0) {
    puVar4 = &DAT_00166dea;
    goto LAB_0013781c;
  }
  uVar6 = *(byte *)(param_3 + 0x18) - 1;
  uVar6 = uVar6 >> 1 | uVar6 * -0x80000000;
  if ((int)uVar6 < 3) {
    if (uVar6 == 0) {
      if (*(uint *)(param_3 + 0x10) == 0) {
        return 0xffffff0f;
      }
      return *(uint *)(param_3 + 0x10);
    }
    if (uVar6 != 1) {
      return 0;
    }
    uVar6 = *(uint *)(param_3 + 0x10);
    if (uVar6 == 0) {
      return 0;
    }
    iVar3 = (uint)*(ushort *)(param_1 + 0xb8) * *(int *)(param_2 + 0x2c);
    if (iVar3 == 0 && *(ushort *)(param_1 + 0xba) == 0) {
      return uVar6;
    }
    iVar1 = *(int *)(param_3 + 0x14);
    if (iVar1 == iVar3) {
      if (uVar6 == *(ushort *)(param_1 + 0xba)) {
        return uVar6;
      }
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00166e9a,"syna_tcm_check_flash_app_config",uVar6);
    }
    puVar4 = &DAT_0016bf3a;
    pcVar5 = "syna_tcm_check_flash_app_config";
    goto LAB_001378cc;
  }
  if (uVar6 == 3) {
    return *(uint *)(param_3 + 0x10);
  }
  if (uVar6 != 9) {
    return 0;
  }
  uVar6 = *(uint *)(param_3 + 0x10);
  if (uVar6 < 8) {
    puVar4 = &DAT_0016f538;
LAB_001378ac:
                    /* WARNING: Subroutine does not return */
    _printk(puVar4,"syna_tcm_check_flash_tool_boot_config",uVar6);
  }
  pbVar9 = *(byte **)(param_2 + 0x20);
  bVar2 = *pbVar9;
  if ((bVar2 | 2) != 3) {
    puVar4 = &DAT_00171d34;
    uVar6 = (uint)bVar2;
    goto LAB_001378ac;
  }
  iVar3 = *(int *)(param_3 + 0x14);
  if (bVar2 == 1) {
    lVar8 = 0xd;
    lVar10 = 0xc;
LAB_00137838:
    uVar7 = (uint)CONCAT11(pbVar9[lVar8],pbVar9[lVar10]);
  }
  else {
    if (bVar2 == 3) {
      lVar8 = 0x11;
      lVar10 = 0x10;
      goto LAB_00137838;
    }
    uVar7 = 0;
  }
  iVar1 = uVar7 * *(int *)(param_2 + 0x2c);
  if (iVar3 == iVar1) {
    return uVar6;
  }
  puVar4 = &DAT_00167a6c;
  pcVar5 = "syna_tcm_check_flash_tool_boot_config";
LAB_001378cc:
                    /* WARNING: Subroutine does not return */
  _printk(puVar4,pcVar5,iVar1,iVar3);
}

