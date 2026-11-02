
undefined8 aw_check_sum(long param_1,uint param_2)

{
  uint uVar1;
  int iVar2;
  code *pcVar3;
  undefined8 uVar4;
  long lVar5;
  ulong uVar6;
  byte *pbVar7;
  int iVar8;
  ulong uVar9;
  ulong uVar10;
  long lVar11;
  int iVar12;
  ulong uVar13;
  
  _printk(&DAT_0010d838,"aw_check_sum",0x66);
  if (99 < param_2) {
                    /* WARNING: Does not return */
    pcVar3 = (code *)SoftwareBreakpoint(0x5512,0x101a28);
    (*pcVar3)();
  }
  lVar11 = param_1 + (ulong)param_2 * 0x54;
  uVar13 = (ulong)(uint)(*(int *)(lVar11 + 0x54) - *(int *)(lVar11 + 0x14));
  lVar5 = param_1 + uVar13;
  _printk(&DAT_0010c32b,"aw_check_sum",0x6b,lVar5 + 0x20e8);
  iVar2 = *(int *)(lVar5 + 0x20e8);
  uVar1 = *(int *)(lVar11 + 0x14) + *(int *)(lVar11 + 0x28);
  if (uVar1 < 5) {
    iVar12 = 0;
  }
  else {
    uVar6 = (ulong)uVar1 - 4;
    if (uVar6 < 2) {
      iVar12 = 0;
      lVar11 = 4;
    }
    else {
      uVar9 = uVar6 & 0xfffffffffffffffe;
      iVar8 = 0;
      iVar12 = 0;
      lVar11 = uVar9 + 4;
      pbVar7 = (byte *)(lVar5 + 0x20ed);
      uVar10 = uVar9;
      do {
        uVar10 = uVar10 - 2;
        iVar8 = iVar8 + (uint)pbVar7[-1];
        iVar12 = iVar12 + (uint)*pbVar7;
        pbVar7 = pbVar7 + 2;
      } while (uVar10 != 0);
      iVar12 = iVar12 + iVar8;
      if (uVar6 == uVar9) goto LAB_00101998;
    }
    lVar5 = (ulong)uVar1 - lVar11;
    pbVar7 = (byte *)(lVar11 + uVar13 + param_1 + 0x20e8);
    do {
      lVar5 = lVar5 + -1;
      iVar12 = iVar12 + (uint)*pbVar7;
      pbVar7 = pbVar7 + 1;
    } while (lVar5 != 0);
  }
LAB_00101998:
  _printk(&DAT_0010edf2,"aw_check_sum",0x77,param_2,iVar2,iVar12);
  if (iVar12 == iVar2) {
    uVar4 = 0;
  }
  else {
    _printk(&DAT_0010e2d1,"aw_check_sum",0x7a);
    _printk(&DAT_0010d0cc,"aw_check_sum",0x7b,param_2,iVar2,iVar12);
    uVar4 = 0xfffffffd;
  }
  return uVar4;
}

