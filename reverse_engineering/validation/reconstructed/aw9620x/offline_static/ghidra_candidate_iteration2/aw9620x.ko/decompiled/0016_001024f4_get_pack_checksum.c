
int get_pack_checksum(long param_1,long param_2,ushort param_3,uint param_4,uint param_5)

{
  uint *puVar1;
  uint uVar2;
  ulong uVar3;
  int iVar4;
  
  _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n","get_pack_checksum",
              0x64b);
  iVar4 = (uint)param_3 + (param_4 & 0xff) + (param_5 & 0xff);
  if (param_3 != 0) {
    uVar3 = 0;
    do {
      puVar1 = (uint *)(param_2 + uVar3);
      uVar3 = uVar3 + 4;
      uVar2 = (*puVar1 & 0xff00ff00) >> 8 | (*puVar1 & 0xff00ff) << 8;
      iVar4 = (uVar2 >> 0x10 | uVar2 << 0x10) + iVar4;
    } while (uVar3 < param_3);
  }
  _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] aw9610x check_sum = 0x%x\n",
              "get_pack_checksum",0x654,iVar4);
  return -iVar4;
}

