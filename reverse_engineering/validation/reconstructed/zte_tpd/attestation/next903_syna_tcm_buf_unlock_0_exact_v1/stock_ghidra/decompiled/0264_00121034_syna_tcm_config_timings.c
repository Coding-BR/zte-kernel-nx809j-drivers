
undefined8 syna_tcm_config_timings(long param_1,int *param_2,int param_3,uint param_4)

{
  if ((param_2 == (int *)0x0) && (param_4 == 0xffff)) {
    _printk(&DAT_0013cf28,"syna_tcm_config_timings");
    return 0xffffff0f;
  }
  if ((param_2 != (int *)0x0) && ((param_4 >> 2 & 1) != 0)) {
    if (param_2[2] != 0) {
      *(int *)(param_1 + 0x210) = param_2[2];
    }
    param_3 = param_2[3];
    if (param_3 != 0) {
      *(int *)(param_1 + 0x214) = param_3;
    }
  }
  if ((param_4 & 1) != 0) {
    if ((param_2 != (int *)0x0) && (*param_2 != 0)) {
      param_3 = *param_2;
    }
    if (param_3 != 0) {
      *(int *)(param_1 + 0x208) = param_3;
    }
  }
  if ((param_4 >> 1 & 1) != 0) {
    if ((param_2 != (int *)0x0) && (param_2[1] != 0)) {
      param_3 = param_2[1];
    }
    if (param_3 != 0) {
      *(int *)(param_1 + 0x20c) = param_3;
    }
  }
  if (((param_2 != (int *)0x0) && ((param_4 >> 3 & 1) != 0)) && (param_3 = param_2[4], param_3 != 0)
     ) {
    *(int *)(param_1 + 0x218) = param_3;
  }
  if ((param_4 >> 8 & 1) != 0) {
    if ((param_2 != (int *)0x0) && (param_2[8] != 0)) {
      param_3 = param_2[8];
    }
    if (param_3 != 0) {
      *(int *)(param_1 + 0x1e8) = param_3;
    }
  }
  if ((param_4 >> 9 & 1) != 0) {
    if ((param_2 != (int *)0x0) && (param_2[9] != 0)) {
      param_3 = param_2[9];
    }
    if (param_3 != 0) {
      *(int *)(param_1 + 0x1ec) = param_3;
    }
  }
  return 0;
}

