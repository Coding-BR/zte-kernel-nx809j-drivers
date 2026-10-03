
void syna_pal_mem_cpy(void *param_1,uint param_2,void *param_3,uint param_4,uint param_5)

{
  if ((param_1 != (void *)0x0) && (param_3 != (void *)0x0)) {
    if ((param_2 < param_5) || (param_4 < param_5)) {
      _printk(&DAT_0013a172,"syna_pal_mem_cpy",param_4,param_2);
    }
    else {
      memcpy(param_1,param_3,(ulong)param_5);
    }
  }
  return;
}

