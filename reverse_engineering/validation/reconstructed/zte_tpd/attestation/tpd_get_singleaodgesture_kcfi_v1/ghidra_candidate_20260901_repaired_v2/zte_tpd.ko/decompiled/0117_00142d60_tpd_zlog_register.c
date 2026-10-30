
void tpd_zlog_register(long param_1)

{
  long lVar1;
  
  if (*(long *)(param_1 + 0xa48) != 0) {
    _printk(&DAT_00181167);
    return;
  }
  lVar1 = zlog_register_client(&zlog_tp_dev);
  *(long *)(param_1 + 0xa48) = lVar1;
  if (lVar1 != 0) {
    lVar1 = vmalloc_noprof(0x800);
    *(long *)(param_1 + 0xbe8) = lVar1;
    if (lVar1 != 0) {
      if (*(char *)(param_1 + 0xc00) != -1) {
        if (*(char **)(tpd_cdev + 0xbe8) != (char *)0x0) {
          snprintf(*(char **)(tpd_cdev + 0xbe8),0x800,"tp probe fail, chip id:%d");
        }
        tpd_zlog_record_notify(0xd);
      }
      *(undefined1 *)(param_1 + 0xbf0) = 1;
      return;
    }
    _printk(&DAT_0017f4c6);
    return;
  }
  _printk(&DAT_00180175,"tpd_zlog_register");
  return;
}

