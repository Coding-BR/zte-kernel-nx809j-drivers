
bool syna_tcm_testing_0500_check_lower_bound
               (ushort *param_1,ushort *param_2,undefined4 param_3,undefined4 param_4)

{
  ushort uVar1;
  ushort uVar2;
  
  uVar1 = *param_1;
  uVar2 = *param_2;
  if (uVar2 <= uVar1) {
    return uVar2 <= uVar1;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&unk_34372,"syna_tcm_testing_0500_check_lower_bound",param_4,param_3,uVar1,uVar2);
}

