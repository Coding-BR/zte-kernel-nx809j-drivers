
undefined8 syna_dev_set_tp_report_rate(undefined8 *param_1,int param_2,undefined4 param_3)

{
  undefined8 uVar1;
  undefined *puVar2;
  
  _printk(&DAT_0013b5e5,"syna_dev_set_tp_report_rate","syna_dev_set_tp_report_rate");
  if (param_1 == (undefined8 *)0x0) {
    return 0xffffffea;
  }
  if (param_2 < 2) {
    if (param_2 == 0) {
      uVar1 = syna_tcm_set_dynamic_config(*param_1,0xe6,0,param_3);
      if ((int)uVar1 < 0) {
        return uVar1;
      }
      puVar2 = &DAT_00135f02;
    }
    else {
      if (param_2 != 1) {
LAB_001113dc:
        _printk(&DAT_0013cc2f,"syna_dev_set_tp_report_rate","syna_dev_set_tp_report_rate");
        return 0;
      }
      uVar1 = syna_tcm_set_dynamic_config(*param_1,0xe6,5,param_3);
      if ((int)uVar1 < 0) {
        return uVar1;
      }
      puVar2 = &DAT_0013a520;
    }
  }
  else if (param_2 == 2) {
    uVar1 = syna_tcm_set_dynamic_config(*param_1,0xe6,4,param_3);
    if ((int)uVar1 < 0) {
      return uVar1;
    }
    puVar2 = &DAT_00137ac0;
  }
  else if (param_2 == 3) {
    uVar1 = syna_tcm_set_dynamic_config(*param_1,0xe6,3,param_3);
    if ((int)uVar1 < 0) {
      return uVar1;
    }
    puVar2 = &DAT_00134533;
  }
  else {
    if (param_2 != 4) goto LAB_001113dc;
    uVar1 = syna_tcm_set_dynamic_config(*param_1,0xe6,1,param_3);
    if ((int)uVar1 < 0) {
      return uVar1;
    }
    puVar2 = &DAT_00138d4b;
  }
  _printk(puVar2,"syna_dev_set_tp_report_rate");
  return 0;
}

