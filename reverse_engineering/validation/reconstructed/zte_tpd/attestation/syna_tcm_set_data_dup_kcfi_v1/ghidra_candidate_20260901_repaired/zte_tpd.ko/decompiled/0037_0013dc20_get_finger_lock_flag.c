
void get_finger_lock_flag(void)

{
  long lVar1;
  long lVar2;
  long *in_x3;
  
  lVar1 = sp_el0;
  if (*in_x3 == 0) {
    _printk(&DAT_00181cf8,"get_finger_lock_flag",*(undefined4 *)(tpd_cdev + 0x474));
    return;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}

