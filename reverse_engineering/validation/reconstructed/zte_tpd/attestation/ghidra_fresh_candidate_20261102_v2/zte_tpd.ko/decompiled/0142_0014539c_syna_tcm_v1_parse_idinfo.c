
undefined8 syna_tcm_v1_parse_idinfo(long param_1,void *param_2,undefined8 param_3,uint param_4)

{
  if ((param_2 == (void *)0x0) || (param_4 == 0)) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00170d8a,"syna_tcm_v1_parse_idinfo");
  }
  if (0x2f < param_4) {
    param_4 = 0x30;
  }
  if (param_4 <= (uint)param_3) {
    memcpy((void *)(param_1 + 0x80),param_2,(ulong)param_4);
    if (*(int *)(param_1 + 0xc) != *(int *)(param_1 + 0x92)) {
      *(int *)(param_1 + 0xc) = *(int *)(param_1 + 0x92);
    }
    *(undefined1 *)(param_1 + 9) = *(undefined1 *)(param_1 + 0x81);
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016edc2,"syna_pal_mem_cpy",param_3,0x30);
}

