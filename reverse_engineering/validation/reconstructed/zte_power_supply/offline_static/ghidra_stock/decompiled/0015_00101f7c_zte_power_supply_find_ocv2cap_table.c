
long zte_power_supply_find_ocv2cap_table(long param_1,int param_2,undefined4 *param_3)

{
  int iVar1;
  int iVar2;
  code *pcVar3;
  uint uVar4;
  ulong uVar5;
  long lVar6;
  int iVar7;
  
  if (*(long *)(param_1 + 200) == 0) {
    return 0;
  }
  lVar6 = 0;
  uVar5 = 0;
  iVar7 = 0x7fffffff;
  do {
    iVar2 = *(int *)(param_1 + 0x5c + lVar6 * 4) - param_2;
    iVar1 = -iVar2;
    if (-1 < iVar2) {
      iVar1 = iVar2;
    }
    uVar4 = (uint)lVar6;
    if (iVar7 <= iVar1) {
      uVar4 = (uint)uVar5;
    }
    uVar5 = (ulong)uVar4;
    lVar6 = lVar6 + 1;
    if (iVar7 <= iVar1) {
      iVar1 = iVar7;
    }
    iVar7 = iVar1;
  } while (lVar6 != 0x14);
  if ((uVar4 & 0xff) < 0x14) {
    *param_3 = *(undefined4 *)(param_1 + (ulong)(byte)uVar4 * 4 + 0x168);
    return ((long *)(param_1 + 200))[uVar5 & 0xff];
  }
                    /* WARNING: Does not return */
  pcVar3 = (code *)SoftwareBreakpoint(0x5512,0x101fec);
  (*pcVar3)();
}

