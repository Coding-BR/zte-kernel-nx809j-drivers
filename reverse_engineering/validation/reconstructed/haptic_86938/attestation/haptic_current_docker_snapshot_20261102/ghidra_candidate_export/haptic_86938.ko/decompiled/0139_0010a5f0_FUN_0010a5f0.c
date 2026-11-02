
void FUN_0010a5f0(void)

{
  code *pcVar1;
  
                    /* WARNING: Does not return */
  pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x10a5f4);
  (*pcVar1)();
}

