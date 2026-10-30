
void FUN_00105ca0(void)

{
  code *pcVar1;
  long unaff_x19;
  
  usleep_range_state();
  if (*(uint *)(unaff_x19 + 0x2f0) < 0xd) {
    FUN_00105cd0();
    FUN_00105ca0();
    _printk(&DAT_00107a84,"aw22xxx_chip_enable",0x1aa,0);
    return;
  }
                    /* WARNING: Does not return */
  pcVar1 = (code *)SoftwareBreakpoint(0x5512,0x105d80);
  (*pcVar1)();
}

