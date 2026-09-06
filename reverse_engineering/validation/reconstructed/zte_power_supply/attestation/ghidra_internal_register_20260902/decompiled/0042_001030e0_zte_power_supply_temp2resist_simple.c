
int zte_power_supply_temp2resist_simple(int *param_1,int param_2,int param_3)

{
  int iVar1;
  int *piVar2;
  int iVar3;
  
  if (0 < param_2) {
    iVar3 = 0;
    piVar2 = param_1;
    while (param_3 <= *piVar2) {
      iVar3 = iVar3 + 1;
      piVar2 = piVar2 + 2;
      if (param_2 == iVar3) {
        return param_1[(long)param_2 * 2 + -1];
      }
    }
    if (iVar3 != 0) {
      iVar1 = piVar2[-2] - *piVar2;
      iVar3 = 0;
      if (iVar1 != 0) {
        iVar3 = ((param_3 - *piVar2) * (piVar2[-1] - piVar2[1])) / iVar1;
      }
      return iVar3 + piVar2[1];
    }
  }
  return param_1[1];
}

