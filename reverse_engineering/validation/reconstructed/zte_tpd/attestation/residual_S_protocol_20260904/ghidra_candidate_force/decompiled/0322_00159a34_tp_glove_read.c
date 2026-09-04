
void tp_glove_read(void)

{
  long lVar1;
  long lVar2;
  long *in_x3;
  code *pcVar3;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  if (*in_x3 == 0) {
    pcVar3 = *(code **)(tpd_cdev + 0xe48);
    if (pcVar3 != (code *)0x0) {
      if (*(int *)(pcVar3 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x159ad0);
        (*pcVar3)();
      }
      (*pcVar3)(tpd_cdev);
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00181cf8,"tp_glove_read",*(undefined4 *)(lVar2 + 8));
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}

