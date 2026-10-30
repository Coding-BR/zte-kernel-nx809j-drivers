
void reg_show(long param_1)

{
  code *pcVar1;
  
  pcVar1 = *(code **)(*(long *)(*(long *)(param_1 + 0x98) + 0x520) + 0x148);
  if (*(int *)(pcVar1 + -4) != -0x20795a12) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8229,0x1012f0);
    (*pcVar1)();
  }
  (*pcVar1)(*(long *)(param_1 + 0x98) + -0xa8,0);
  return;
}

