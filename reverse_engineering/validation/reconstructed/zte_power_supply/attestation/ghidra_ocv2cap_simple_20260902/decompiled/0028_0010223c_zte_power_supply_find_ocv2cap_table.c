
long zte_power_supply_find_ocv2cap_table(long param_1,int param_2,undefined4 *param_3)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  code *pcVar4;
  uint uVar5;
  long lVar6;
  int iVar7;
  
  if (*(long *)(param_1 + 200) == 0) {
    return 0;
  }
  lVar6 = 0;
  uVar5 = 0;
  iVar7 = 0x7fffffff;
  do {
    iVar2 = param_2 - *(int *)(param_1 + 0x5c + lVar6 * 4);
    iVar1 = -iVar2;
    if (-1 < iVar2) {
      iVar1 = iVar2;
    }
    uVar3 = (uint)lVar6;
    if (iVar7 <= iVar1) {
      iVar1 = iVar7;
      uVar3 = uVar5;
    }
    uVar5 = uVar3;
    lVar6 = lVar6 + 1;
    iVar7 = iVar1;
  } while (lVar6 != 0x14);
  if (0x13 < uVar5) {
                    /* WARNING: Does not return */
    pcVar4 = (code *)SoftwareBreakpoint(0x5512,0x1022a4);
    (*pcVar4)();
  }
  *param_3 = *(undefined4 *)(param_1 + (ulong)uVar5 * 4 + 0x168);
  return ((long *)(param_1 + 200))[uVar5];
}

