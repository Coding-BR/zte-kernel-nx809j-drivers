
long FUN_0013fd88(code *param_1)

{
  code *pcVar1;
  uint in_w16;
  uint in_w17;
  int unaff_w19;
  
  if (in_w16 != (in_w17 & 0xffff | 0x2a700000)) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x13fd98);
    (*pcVar1)();
  }
  (*param_1)();
  return (long)unaff_w19;
}

