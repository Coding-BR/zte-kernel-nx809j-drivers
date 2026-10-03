
void tp_wake_gesture_read(void)

{
  long lVar1;
  long lVar2;
  undefined4 *puVar3;
  long *in_x3;
  code *pcVar4;
  
  puVar3 = tpd_cdev;
  lVar1 = sp_el0;
  if (*in_x3 == 0) {
    pcVar4 = *(code **)(tpd_cdev + 0x38a);
    if (pcVar4 != (code *)0x0) {
      if (*(int *)(pcVar4 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x159814);
        (*pcVar4)();
      }
      (*pcVar4)(tpd_cdev);
    }
    _printk(&DAT_00181cf8,"tp_wake_gesture_read",*puVar3);
    return;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}

