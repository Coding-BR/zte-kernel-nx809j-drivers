
ulong syna_tcm_testing_0A00_check_upper_bound
                (short *param_1,short *param_2,undefined4 param_3,undefined4 param_4)

{
  short sVar1;
  short sVar2;
  ulong uVar3;
  
  sVar1 = *param_1;
  sVar2 = *param_2;
  if (sVar1 <= sVar2) {
    return (ulong)((int)sVar1 <= (int)sVar2);
  }
  uVar3 = _printk(&unk_3C643,"syna_tcm_testing_0A00_check_upper_bound",param_4,param_3,(int)sVar1,
                  (int)sVar2);
  return uVar3;
}

