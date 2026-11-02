
ulong syna_tcm_testing_0500_check_upper_bound
                (ushort *param_1,ushort *param_2,undefined4 param_3,undefined4 param_4)

{
  ushort uVar1;
  ushort uVar2;
  ulong uVar3;
  
  uVar1 = *param_1;
  uVar2 = *param_2;
  if (uVar1 <= uVar2) {
    return (ulong)(uVar1 <= uVar2);
  }
  uVar3 = _printk(&unk_3C643,"syna_tcm_testing_0500_check_upper_bound",param_4,param_3,uVar1,uVar2);
  return uVar3;
}

