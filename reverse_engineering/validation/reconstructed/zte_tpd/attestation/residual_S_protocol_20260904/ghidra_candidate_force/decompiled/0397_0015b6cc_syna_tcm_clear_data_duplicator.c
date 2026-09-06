
undefined8 syna_tcm_clear_data_duplicator(long param_1)

{
  if (param_1 != 0) {
    memset((void *)(param_1 + 0x13d8),0,0x1000);
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00168a84,"syna_tcm_clear_data_duplicator");
}

