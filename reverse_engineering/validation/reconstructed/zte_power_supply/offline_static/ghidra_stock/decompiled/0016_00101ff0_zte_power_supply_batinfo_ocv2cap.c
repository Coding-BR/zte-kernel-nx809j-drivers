
int zte_power_supply_batinfo_ocv2cap(long param_1,int param_2,int param_3)

{
  int iVar1;
  int iVar2;
  code *pcVar3;
  uint uVar4;
  ulong uVar5;
  long lVar6;
  long lVar7;
  int iVar8;
  
  if (*(long *)(param_1 + 200) != 0) {
    lVar6 = 0;
    uVar5 = 0;
    iVar8 = 0x7fffffff;
    do {
      iVar2 = *(int *)(param_1 + 0x5c + lVar6 * 4) - param_3;
      iVar1 = -iVar2;
      if (-1 < iVar2) {
        iVar1 = iVar2;
      }
      uVar4 = (uint)lVar6;
      if (iVar8 <= iVar1) {
        uVar4 = (uint)uVar5;
      }
      uVar5 = (ulong)uVar4;
      lVar6 = lVar6 + 1;
      if (iVar8 <= iVar1) {
        iVar1 = iVar8;
      }
      iVar8 = iVar1;
    } while (lVar6 != 0x14);
    if (0x13 < (uVar4 & 0xff)) {
                    /* WARNING: Does not return */
      pcVar3 = (code *)SoftwareBreakpoint(0x5512,0x1020c0);
      (*pcVar3)();
    }
    lVar6 = ((long *)(param_1 + 200))[uVar5 & 0xff];
    if (lVar6 != 0) {
      uVar4 = *(uint *)(param_1 + (ulong)(byte)uVar4 * 4 + 0x168);
      if (0 < (int)uVar4) {
        lVar7 = 0;
        while( true ) {
          iVar8 = *(int *)(lVar6 + lVar7);
          if (param_2 - iVar8 != 0 && iVar8 <= param_2) break;
          lVar7 = lVar7 + 8;
          if ((ulong)uVar4 * 8 - lVar7 == 0) {
            return *(int *)(lVar6 + (long)(int)uVar4 * 8 + -4);
          }
        }
        if (lVar7 != 0) {
          lVar6 = lVar6 + lVar7;
          iVar2 = *(int *)(lVar6 + -8) - iVar8;
          iVar1 = 0;
          if (iVar2 != 0) {
            iVar1 = ((*(int *)(lVar6 + -4) - *(int *)(lVar6 + 4)) * (param_2 - iVar8)) / iVar2;
          }
          return iVar1 + *(int *)(lVar6 + 4);
        }
      }
      return *(int *)(lVar6 + 4);
    }
  }
  return -0x16;
}

