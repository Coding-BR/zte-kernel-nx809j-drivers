
int zte_power_supply_batinfo_ocv2cap(long param_1,int param_2,int param_3)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  code *pcVar5;
  uint uVar6;
  long lVar7;
  long lVar8;
  int iVar9;
  
  if (*(long *)(param_1 + 200) != 0) {
    lVar7 = 0;
    uVar6 = 0;
    iVar9 = 0x7fffffff;
    do {
      iVar2 = param_3 - *(int *)(param_1 + 0x5c + lVar7 * 4);
      iVar3 = -iVar2;
      if (-1 < iVar2) {
        iVar3 = iVar2;
      }
      uVar4 = (uint)lVar7;
      if (iVar9 <= iVar3) {
        iVar3 = iVar9;
        uVar4 = uVar6;
      }
      uVar6 = uVar4;
      lVar7 = lVar7 + 1;
      iVar9 = iVar3;
    } while (lVar7 != 0x14);
    if (0x13 < uVar6) {
                    /* WARNING: Does not return */
      pcVar5 = (code *)SoftwareBreakpoint(0x5512,0x1024f8);
      (*pcVar5)();
    }
    lVar7 = ((long *)(param_1 + 200))[uVar6];
    if (lVar7 != 0) {
      uVar6 = *(uint *)(param_1 + (ulong)uVar6 * 4 + 0x168);
      if (0 < (int)uVar6) {
        lVar8 = 0;
        while (param_2 < *(int *)(lVar7 + lVar8)) {
          lVar8 = lVar8 + 8;
          if ((ulong)uVar6 * 8 - lVar8 == 0) {
            return *(int *)(lVar7 + (ulong)uVar6 * 8 + -4);
          }
        }
        if (lVar8 != 0) {
          piVar1 = (int *)(lVar7 + lVar8);
          iVar9 = piVar1[1];
          iVar3 = piVar1[-2] - *piVar1;
          if (iVar3 != 0) {
            iVar2 = 0;
            if (iVar3 != 0) {
              iVar2 = ((piVar1[-1] - iVar9) * (param_2 - *piVar1)) / iVar3;
            }
            return iVar2 + iVar9;
          }
          return iVar9;
        }
      }
      return *(int *)(lVar7 + 4);
    }
  }
  return -0x16;
}

