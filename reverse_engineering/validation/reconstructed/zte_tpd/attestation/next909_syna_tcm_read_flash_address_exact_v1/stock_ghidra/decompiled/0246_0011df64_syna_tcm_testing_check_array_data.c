
uint syna_tcm_testing_check_array_data(long param_1,ulong param_2,long param_3,ulong param_4)

{
  ulong uVar1;
  uint uVar2;
  ulong uVar3;
  uint uVar4;
  
  if ((param_1 == 0) || (param_3 == 0)) {
    _printk(&DAT_00134186,"syna_tcm_testing_check_array_data");
    uVar4 = 0;
  }
  else if ((int)param_2 < 1) {
    uVar4 = 1;
  }
  else {
    uVar3 = 0;
    uVar4 = 1;
    do {
      uVar1 = 0;
      if (param_2 <= param_4) {
        uVar1 = uVar3;
      }
      uVar2 = syna_tcm_testing_0100_check_data(param_1 + uVar3,param_3 + uVar1,uVar3 & 0xffffffff);
      uVar3 = uVar3 + 1;
      uVar4 = uVar2 & uVar4;
    } while ((param_2 & 0x7fffffff) != uVar3);
  }
  return uVar4;
}

