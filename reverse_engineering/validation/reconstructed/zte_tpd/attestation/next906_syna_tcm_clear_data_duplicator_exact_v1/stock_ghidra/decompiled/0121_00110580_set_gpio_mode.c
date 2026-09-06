
undefined8 set_gpio_mode(undefined4 param_1)

{
  undefined8 uVar1;
  code *pcVar2;
  
  pcVar2 = *(code **)(tpd_cdev + 0xf58);
  if (pcVar2 == (code *)0x0) {
    return 0xfffffffb;
  }
  if (*(int *)(pcVar2 + -4) != -0x1e29c23f) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8229,0x1105bc);
    (*pcVar2)();
  }
  uVar1 = (*pcVar2)(tpd_cdev,param_1);
  return uVar1;
}

