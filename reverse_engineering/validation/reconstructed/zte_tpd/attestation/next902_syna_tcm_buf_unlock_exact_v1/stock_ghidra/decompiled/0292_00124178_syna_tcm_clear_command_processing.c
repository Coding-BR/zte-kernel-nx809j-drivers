
void syna_tcm_clear_command_processing(long param_1)

{
  code *pcVar1;
  
  if ((param_1 != 0) && (pcVar1 = *(code **)(param_1 + 0x3a0), pcVar1 != (code *)0x0)) {
    if (*(int *)(pcVar1 + -4) != -0x6481d8a0) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x1241a8);
      (*pcVar1)();
    }
    (*pcVar1)();
  }
  return;
}

