
void tpd_report_uevent(char param_1)

{
  undefined8 uVar1;
  
  uVar1 = sp_el0;
  if (param_1 == '\x02') {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016d8ee,"tpd_report_uevent");
  }
  if (param_1 != '\x01') {
    if (param_1 == '\0') {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016eace,"tpd_report_uevent");
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016f090,"tpd_report_uevent",param_1);
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016e552,"tpd_report_uevent");
}

