
void FUN_00102b64(void)

{
  code *pcVar1;
  
                    /* WARNING: Does not return */
  pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x102b68);
  (*pcVar1)();
}

