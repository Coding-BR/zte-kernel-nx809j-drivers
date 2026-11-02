
void tp_test_read(void)

{
  long lVar1;
  long lVar2;
  long *in_x3;
  
  lVar1 = sp_el0;
  if (*in_x3 == 0) {
    if (*(char *)(tpd_cdev + 0xc00) == -1) {
      _printk(&DAT_001726a0,*(undefined1 *)(tpd_cdev + 0x446));
      return;
    }
    _printk(&DAT_0016951e);
    return;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}

