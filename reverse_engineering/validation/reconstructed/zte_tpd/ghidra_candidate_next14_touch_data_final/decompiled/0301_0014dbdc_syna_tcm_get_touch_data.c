
undefined8 syna_tcm_get_touch_data(long param_1,int param_2,uint param_3,uint param_4,uint *param_5)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  undefined8 uVar4;
  uint uVar5;
  
  if (param_4 - 0x21 < 0xffffffe0) {
    _printk(&DAT_0016496f,"syna_tcm_get_touch_data",param_4);
    uVar4 = 0xffffff0f;
  }
  else if (param_1 == 0) {
    _printk(&DAT_001664ef,"syna_tcm_get_touch_data");
    uVar4 = 0xffffff0f;
  }
  else if ((uint)(param_2 * 8) < param_4 + param_3) {
    uVar4 = 0;
    *param_5 = 0;
  }
  else {
    uVar5 = param_3 >> 3;
    uVar3 = 8 - (param_3 & 7);
    if (param_4 <= uVar3) {
      uVar3 = param_4;
    }
    uVar1 = (uint)(*(byte *)(param_1 + (ulong)uVar5) >> (ulong)(param_3 & 7)) &
            0xffU >> (ulong)(8 - uVar3 & 0x1f);
    for (uVar3 = param_4 - uVar3; uVar3 != 0; uVar3 = uVar3 - uVar2) {
      uVar5 = uVar5 + 1;
      uVar2 = uVar3;
      if (7 < uVar3) {
        uVar2 = 8;
      }
      uVar1 = (0xffU >> (ulong)(8 - uVar2 & 0x1f) & (uint)*(byte *)(param_1 + (ulong)uVar5)) <<
              (ulong)(param_4 - uVar3 & 0x1f) | uVar1;
    }
    uVar4 = 0;
    *param_5 = uVar1;
  }
  return uVar4;
}

