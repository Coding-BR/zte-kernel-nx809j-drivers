
void gpio_keys_close(long param_1)

{
  code *pcVar1;
  
  pcVar1 = *(code **)(**(long **)(param_1 + 0x2c8) + 0x20);
  if (pcVar1 != (code *)0x0) {
    if (*(int *)(pcVar1 + -4) != 0x6c81b8c8) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x101674);
      (*pcVar1)();
    }
    (*pcVar1)(*(undefined8 *)(param_1 + 0x290));
  }
  return;
}

