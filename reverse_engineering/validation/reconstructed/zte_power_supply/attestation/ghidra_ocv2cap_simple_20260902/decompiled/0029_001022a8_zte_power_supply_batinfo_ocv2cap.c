
undefined8 zte_power_supply_batinfo_ocv2cap(long param_1,undefined4 param_2,int param_3)

{
  int iVar1;
  int iVar2;
  code *pcVar3;
  undefined8 uVar4;
  uint uVar5;
  ulong uVar6;
  long lVar7;
  int iVar8;
  
  if (*(long *)(param_1 + 200) != 0) {
    lVar7 = 0;
    uVar6 = 0;
    iVar8 = 0x7fffffff;
    do {
      iVar2 = param_3 - *(int *)(param_1 + 0x5c + lVar7 * 4);
      iVar1 = -iVar2;
      if (-1 < iVar2) {
        iVar1 = iVar2;
      }
      uVar5 = (uint)lVar7;
      if (iVar8 <= iVar1) {
        uVar5 = (uint)uVar6;
      }
      uVar6 = (ulong)uVar5;
      lVar7 = lVar7 + 1;
      if (iVar8 <= iVar1) {
        iVar1 = iVar8;
      }
      iVar8 = iVar1;
    } while (lVar7 != 0x14);
    if (0x13 < uVar5) {
                    /* WARNING: Does not return */
      pcVar3 = (code *)SoftwareBreakpoint(0x5512,0x102334);
      (*pcVar3)();
    }
    lVar7 = ((long *)(param_1 + 200))[uVar6];
    if (lVar7 != 0) {
      uVar4 = zte_power_supply_ocv2cap_simple
                        (lVar7,*(undefined4 *)(param_1 + uVar6 * 4 + 0x168),param_2);
      return uVar4;
    }
  }
  return 0xffffffea;
}

