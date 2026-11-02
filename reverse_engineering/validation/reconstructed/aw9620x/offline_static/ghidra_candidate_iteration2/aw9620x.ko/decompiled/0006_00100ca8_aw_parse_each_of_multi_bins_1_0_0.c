
void aw_parse_each_of_multi_bins_1_0_0(int param_1,int param_2,long *param_3)

{
  uint uVar1;
  uint uVar2;
  code *pcVar3;
  int iVar4;
  
  _printk(&DAT_0010cf82,"aw_parse_each_of_multi_bins_1_0_0",0x141,
          "aw_parse_each_of_multi_bins_1_0_0");
  if (param_2 == 0) {
    uVar1 = *(uint *)(param_3 + 1);
    *param_3 = *param_3 + (ulong)(*(int *)(*param_3 + 0x40) + 0x3c);
    if (uVar1 - 1 < 99) {
      iVar4 = *(int *)((long)param_3 + (ulong)(uVar1 - 1) * 0x54 + 0x54) + param_1 * 8 + 0x40;
LAB_00100d7c:
      *(int *)((long)param_3 + (ulong)uVar1 * 0x54 + 0x54) = iVar4;
      aw_parse_bin_header_1_0_0(param_3);
      return;
    }
  }
  else {
    uVar1 = *(uint *)(param_3 + 1);
    uVar2 = uVar1 - 1;
    if (uVar2 < 100) {
      iVar4 = *(int *)((long)param_3 + (ulong)uVar2 * 0x54 + 0x28);
      *param_3 = *param_3 + (ulong)(iVar4 + 0x3c);
      if (uVar1 < 100) {
        iVar4 = *(int *)((long)param_3 + (ulong)uVar2 * 0x54 + 0x54) + iVar4 + 0x3c;
        goto LAB_00100d7c;
      }
    }
  }
                    /* WARNING: Does not return */
  pcVar3 = (code *)SoftwareBreakpoint(0x5512,0x100da0);
  (*pcVar3)();
}

