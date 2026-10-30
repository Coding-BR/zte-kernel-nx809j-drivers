
undefined8 syna_tcm_get_touch_data(long param_1,int param_2,uint param_3,uint param_4,uint *param_5)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  
  if (param_4 - 0x21 < 0xffffffe0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00168dd4,"syna_tcm_get_touch_data",param_4);
  }
  if (param_1 != 0) {
    if ((uint)(param_2 * 8) < param_4 + param_3) {
      *param_5 = 0;
    }
    else {
      uVar4 = param_3 >> 3;
      uVar3 = 8 - (param_3 & 7);
      if (param_4 <= uVar3) {
        uVar3 = param_4;
      }
      uVar1 = (uint)(*(byte *)(param_1 + (ulong)uVar4) >> (ulong)(param_3 & 7)) &
              0xffU >> (ulong)(8 - uVar3 & 0x1f);
      for (uVar3 = param_4 - uVar3; uVar3 != 0; uVar3 = uVar3 - uVar2) {
        uVar4 = uVar4 + 1;
        uVar2 = uVar3;
        if (7 < uVar3) {
          uVar2 = 8;
        }
        uVar1 = (0xffU >> (ulong)(8 - uVar2 & 0x1f) & (uint)*(byte *)(param_1 + (ulong)uVar4)) <<
                (ulong)(param_4 - uVar3 & 0x1f) | uVar1;
      }
      *param_5 = uVar1;
    }
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016ca62,"syna_tcm_get_touch_data");
}

