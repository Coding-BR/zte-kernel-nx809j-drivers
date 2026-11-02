
undefined8 aw_parse_bin_header_1_0_0(long *param_1)

{
  uint uVar1;
  code *pcVar2;
  undefined8 uVar3;
  
  _printk(&DAT_0010d125,"aw_parse_bin_header_1_0_0",0x183,"aw_parse_bin_header_1_0_0");
  uVar1 = *(uint *)(*param_1 + 8);
  _printk(&DAT_0010f5cb,"aw_parse_bin_header_1_0_0",0x187,(ulong)uVar1);
  if ((uVar1 < 0x22) && ((1L << ((ulong)uVar1 & 0x3f) & 0x200010001U) != 0)) {
    _printk(&DAT_0010e534,"aw_parse_bin_header_1_0_0",400);
    *(int *)(param_1 + 2) = (int)param_1[2] + 1;
    _printk(&DAT_0010d637,"aw_parse_bin_header_1_0_0",0x193,"aw_parse_bin_header_1_0_0");
    if (*(int *)((long)param_1 + 0xc) == 0) {
      if (99 < *(uint *)(param_1 + 1)) {
                    /* WARNING: Does not return */
        pcVar2 = (code *)SoftwareBreakpoint(0x5512,0x10220c);
        (*pcVar2)();
      }
      *(undefined4 *)((long)param_1 + (ulong)*(uint *)(param_1 + 1) * 0x54 + 0x54) = 0x3c;
    }
    aw_get_single_bin_header_1_0_0(param_1);
  }
  else {
    if (uVar1 != 0x2000) {
      _printk(&DAT_0010d14d,"aw_parse_bin_header_1_0_0",0x1a3);
      return 0xfffffffe;
    }
    _printk(&DAT_0010f814,"aw_parse_bin_header_1_0_0",0x19a);
    *(int *)((long)param_1 + 0xc) = *(int *)((long)param_1 + 0xc) + 1;
    _printk(&DAT_0010efb6,"aw_parse_bin_header_1_0_0",0x19d,"aw_parse_bin_header_1_0_0");
    uVar3 = aw_get_multi_bin_header_1_0_0(param_1);
    if ((int)uVar3 < 0) {
      return uVar3;
    }
  }
  return 0;
}

