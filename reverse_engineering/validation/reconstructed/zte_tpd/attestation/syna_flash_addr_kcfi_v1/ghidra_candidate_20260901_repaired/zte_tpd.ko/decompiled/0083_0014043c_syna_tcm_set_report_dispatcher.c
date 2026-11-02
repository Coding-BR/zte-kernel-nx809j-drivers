
void syna_tcm_set_report_dispatcher(long param_1,byte param_2,undefined8 param_3,undefined8 param_4)

{
  if (param_1 == 0) {
    _printk(&DAT_0017eb2d,"syna_tcm_set_report_dispatcher");
    return;
  }
  if (param_2 < 0x10) {
    _printk(&DAT_00182c37,"syna_tcm_set_report_dispatcher",param_2);
    return;
  }
  param_1 = param_1 + (ulong)param_2 * 0x10;
  *(undefined8 *)(param_1 + 0x3e0) = param_3;
  *(undefined8 *)(param_1 + 0x3d8) = param_4;
  _printk(&DAT_0017eb56,"syna_tcm_set_report_dispatcher",param_2);
  return;
}

