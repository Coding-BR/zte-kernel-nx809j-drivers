
undefined8 syna_tcm_v1_parse_idinfo(long param_1,void *param_2,undefined8 param_3,uint param_4)

{
  undefined8 uVar1;
  
  if ((param_2 == (void *)0x0) || (param_4 == 0)) {
    _printk(&DAT_0013c0cd,"syna_tcm_v1_parse_idinfo");
    uVar1 = 0xffffff0f;
  }
  else {
    if (0x2f < param_4) {
      param_4 = 0x30;
    }
    if ((uint)param_3 < param_4) {
      _printk(&DAT_0013a172,"syna_pal_mem_cpy",param_3,0x30);
      _printk(&DAT_001328ec,"syna_tcm_v1_parse_idinfo");
      uVar1 = 0xffffffea;
    }
    else {
      memcpy((void *)(param_1 + 0x80),param_2,(ulong)param_4);
      if (*(int *)(param_1 + 0xc) != *(int *)(param_1 + 0x92)) {
        *(int *)(param_1 + 0xc) = *(int *)(param_1 + 0x92);
      }
      uVar1 = 0;
      *(undefined1 *)(param_1 + 9) = *(undefined1 *)(param_1 + 0x81);
    }
  }
  return uVar1;
}

