
int zte_power_supply_temp2resist_simple(long param_1,uint param_2,int param_3)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  long lVar5;
  
  if (0 < (int)param_2) {
    lVar5 = 0;
    while (param_3 < *(int *)(param_1 + lVar5)) {
      lVar5 = lVar5 + 8;
      if ((ulong)param_2 << 3 == lVar5) {
        return *(int *)(param_1 + (ulong)param_2 * 8 + -4);
      }
    }
    if (lVar5 != 0) {
      piVar1 = (int *)(param_1 + lVar5);
      iVar2 = piVar1[1];
      iVar4 = piVar1[-2] - *piVar1;
      if (iVar4 == 0) {
        return iVar2;
      }
      iVar3 = 0;
      if (iVar4 != 0) {
        iVar3 = ((piVar1[-1] - iVar2) * (param_3 - *piVar1)) / iVar4;
      }
      return iVar3 + iVar2;
    }
  }
  return *(int *)(param_1 + 4);
}

