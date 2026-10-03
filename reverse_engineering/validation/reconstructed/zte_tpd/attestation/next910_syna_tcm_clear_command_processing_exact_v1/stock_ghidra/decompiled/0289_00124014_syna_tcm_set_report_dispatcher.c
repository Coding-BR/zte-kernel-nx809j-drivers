
undefined8
syna_tcm_set_report_dispatcher(long param_1,byte param_2,undefined8 param_3,undefined8 param_4)

{
  undefined8 uVar1;
  
  if (param_1 == 0) {
    _printk(&DAT_00133fd6,"syna_tcm_set_report_dispatcher");
    uVar1 = 0xffffff0f;
  }
  else {
    if (param_2 < 0x10) {
      _printk(&DAT_0013d5ba,"syna_tcm_set_report_dispatcher",param_2);
    }
    param_1 = param_1 + (ulong)param_2 * 0x10;
    *(undefined8 *)(param_1 + 0x3e0) = param_3;
    *(undefined8 *)(param_1 + 0x3d8) = param_4;
    _printk(&DAT_00134239,"syna_tcm_set_report_dispatcher",param_2);
    uVar1 = 0;
  }
  return uVar1;
}

