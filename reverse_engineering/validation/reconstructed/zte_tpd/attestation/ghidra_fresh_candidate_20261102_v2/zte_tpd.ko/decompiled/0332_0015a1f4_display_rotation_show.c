
void display_rotation_show(void)

{
  long lVar1;
  long lVar2;
  long *in_x3;
  
  lVar1 = sp_el0;
  if (*in_x3 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016fb00,"display_rotation_show",*(undefined4 *)(tpd_cdev + 0x10));
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}

