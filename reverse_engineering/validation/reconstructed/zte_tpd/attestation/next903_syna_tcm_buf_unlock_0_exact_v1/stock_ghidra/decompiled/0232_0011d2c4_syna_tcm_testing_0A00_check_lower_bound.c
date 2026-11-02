
bool syna_tcm_testing_0A00_check_lower_bound
               (short *param_1,short *param_2,undefined4 param_3,undefined4 param_4)

{
  short sVar1;
  short sVar2;
  
  sVar1 = *param_1;
  sVar2 = *param_2;
  if (sVar1 < sVar2) {
    _printk(&DAT_00134d2a,"syna_tcm_testing_0A00_check_lower_bound",param_4,param_3,(int)sVar1,
            (int)sVar2);
  }
  return (int)sVar2 <= (int)sVar1;
}

