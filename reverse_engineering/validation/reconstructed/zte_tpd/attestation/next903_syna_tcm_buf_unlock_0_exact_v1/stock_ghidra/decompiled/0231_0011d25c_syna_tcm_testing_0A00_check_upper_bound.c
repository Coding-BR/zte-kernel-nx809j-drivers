
bool syna_tcm_testing_0A00_check_upper_bound
               (short *param_1,short *param_2,undefined4 param_3,undefined4 param_4)

{
  short sVar1;
  short sVar2;
  
  sVar1 = *param_1;
  sVar2 = *param_2;
  if (sVar2 < sVar1) {
    _printk(&DAT_0013d4b3,"syna_tcm_testing_0A00_check_upper_bound",param_4,param_3,(int)sVar1,
            (int)sVar2);
  }
  return (int)sVar1 <= (int)sVar2;
}

