
void tpd_reset_gpio_output(uint param_1)

{
  code *pcVar1;
  
  pcVar1 = *(code **)(tpd_cdev + 0xeb0);
  if (pcVar1 != (code *)0x0) {
    if (*(int *)(pcVar1 + -4) != -0x5d031687) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x110610);
      (*pcVar1)();
    }
    (*pcVar1)(param_1 & 1);
  }
  return;
}

