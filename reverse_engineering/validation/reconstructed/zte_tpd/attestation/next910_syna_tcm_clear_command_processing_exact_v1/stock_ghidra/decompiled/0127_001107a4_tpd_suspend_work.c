
void tpd_suspend_work(void)

{
  code *pcVar1;
  
  pcVar1 = *(code **)(tpd_cdev + 0xe10);
  if (pcVar1 != (code *)0x0) {
    if (*(int *)(pcVar1 + -4) != -0x3f961b9c) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x1107dc);
      (*pcVar1)();
    }
    (*pcVar1)(*(undefined8 *)(tpd_cdev + 0xdd8));
  }
  return;
}

