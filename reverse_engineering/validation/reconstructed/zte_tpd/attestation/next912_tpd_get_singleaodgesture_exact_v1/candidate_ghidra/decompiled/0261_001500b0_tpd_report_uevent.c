
void tpd_report_uevent(char param_1)

{
  undefined8 uVar1;
  
  uVar1 = sp_el0;
  if (param_1 == '\x02') {
    _printk(&DAT_0016d8ae,"tpd_report_uevent");
    return;
  }
  if (param_1 != '\x01') {
    if (param_1 == '\0') {
      _printk(&DAT_0016ea8e,"tpd_report_uevent");
      return;
    }
    _printk(&DAT_0016f050,"tpd_report_uevent",param_1);
    return;
  }
  _printk(&DAT_0016e512,"tpd_report_uevent");
  return;
}

