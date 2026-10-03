
uint suspend_tp_need_awake(void)

{
  uint uVar1;
  code *pcVar2;
  
  pcVar2 = *(code **)(tpd_cdev + 0xe68);
  if (pcVar2 == (code *)0x0) {
    return 0;
  }
  if (*(int *)(pcVar2 + -4) != -0x7f7ec5d7) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x1104d0);
    (*pcVar2)();
  }
  uVar1 = (*pcVar2)();
  return uVar1 & 1;
}

