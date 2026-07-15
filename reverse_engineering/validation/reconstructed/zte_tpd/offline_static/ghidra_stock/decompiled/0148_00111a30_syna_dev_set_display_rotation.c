
undefined8 syna_dev_set_display_rotation(undefined8 *param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  undefined8 uVar2;
  undefined4 uVar3;
  
  iVar1 = *(int *)((long)param_1 + 0x60c);
  _printk(&DAT_00138d9a,"syna_dev_set_display_rotation",param_2);
  if (param_1 == (undefined8 *)0x0) {
    uVar2 = 0xffffffea;
  }
  else {
    uVar3 = 0;
    if (iVar1 != 0) {
      uVar3 = 3;
    }
    uVar2 = syna_tcm_set_dynamic_config(*param_1,0xb6,uVar3,param_3);
    if (-1 < (int)uVar2) {
      _printk(&DAT_001394b5,"syna_dev_set_display_rotation",uVar3);
      uVar2 = syna_tcm_set_dynamic_config(*param_1,0xb5,iVar1,param_3);
      if (-1 < (int)uVar2) {
        _printk(&DAT_0013af79,"syna_dev_set_display_rotation",iVar1);
        uVar2 = syna_tcm_set_dynamic_config(*param_1,0xb4,param_2,param_3);
        if (-1 < (int)uVar2) {
          _printk(&DAT_00132655,"syna_dev_set_display_rotation",param_2);
          uVar2 = 0;
        }
      }
    }
  }
  return uVar2;
}

