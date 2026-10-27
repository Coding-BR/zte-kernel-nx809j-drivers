
undefined8 aw_get_multi_bin_header_1_0_0(long *param_1)

{
  byte bVar1;
  byte bVar2;
  byte bVar3;
  byte bVar4;
  uint uVar5;
  uint uVar6;
  code *pcVar7;
  undefined8 uVar8;
  long lVar9;
  int iVar10;
  
  _printk(&DAT_0010cf82,"aw_get_multi_bin_header_1_0_0",0x161,"aw_get_multi_bin_header_1_0_0");
  lVar9 = *param_1;
  bVar1 = *(byte *)(lVar9 + 0x3f);
  bVar2 = *(byte *)(lVar9 + 0x3e);
  bVar3 = *(byte *)(lVar9 + 0x3d);
  bVar4 = *(byte *)(lVar9 + 0x3c);
  if (*(int *)((long)param_1 + 0xc) == 1) {
    if (99 < *(uint *)(param_1 + 1)) {
                    /* WARNING: Does not return */
      pcVar7 = (code *)SoftwareBreakpoint(0x5512,0x10103c);
      (*pcVar7)();
    }
    *(undefined4 *)((long)param_1 + (ulong)*(uint *)(param_1 + 1) * 0x54 + 0x54) = 0x3c;
  }
  uVar5 = (uint)bVar1 * 0x1000000;
  uVar6 = uVar5 | (uint)bVar2 << 0x10 | (uint)bVar3 << 8 | (uint)bVar4;
  aw_get_single_bin_header_1_0_0(param_1);
  if (uVar6 != 0) {
    iVar10 = 0;
    do {
      _printk(&DAT_0010d756,"aw_get_multi_bin_header_1_0_0",0x16b,iVar10);
      uVar8 = aw_parse_each_of_multi_bins_1_0_0(uVar6,iVar10,param_1);
      if ((int)uVar8 < 0) {
        return uVar8;
      }
      iVar10 = iVar10 + 1;
    } while (uVar5 + (uint)bVar2 * 0x10000 + (uint)bVar3 * 0x100 + (uint)bVar4 != iVar10);
  }
  return 0;
}

