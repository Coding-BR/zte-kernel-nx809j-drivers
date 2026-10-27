
int aw9620x_get_bin_checksum(long param_1,uint param_2,uint param_3)

{
  ulong uVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  
  if (param_3 != 0) {
    uVar5 = 0;
    iVar4 = 0;
    uVar6 = 0;
    do {
      if (uVar6 < param_2) {
        uVar7 = uVar5 + 3;
        uVar2 = uVar5 + 2;
        uVar3 = uVar5 + 1;
        uVar1 = (ulong)uVar5;
        uVar5 = uVar5 + 4;
        uVar7 = (uint)*(byte *)(param_1 + (ulong)uVar7) << 0x18 |
                (uint)*(byte *)(param_1 + (ulong)uVar2) << 0x10 |
                (uint)*(byte *)(param_1 + (ulong)uVar3) << 8 | (uint)*(byte *)(param_1 + uVar1);
      }
      else {
        uVar7 = 0xffffffff;
      }
      uVar6 = uVar6 + 4;
      iVar4 = uVar7 + iVar4;
    } while (uVar6 < param_3);
    return -iVar4;
  }
  return 0;
}

