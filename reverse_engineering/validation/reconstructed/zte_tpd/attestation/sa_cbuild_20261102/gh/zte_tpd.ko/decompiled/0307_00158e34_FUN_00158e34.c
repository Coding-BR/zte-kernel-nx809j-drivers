
void FUN_00158e34(undefined8 param_1,undefined8 param_2,int param_3)

{
  long unaff_x19;
  long unaff_x20;
  
  if (param_3 != 1) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00180db7,"syna_tcm_buf_unlock");
  }
  *(undefined1 *)(unaff_x20 + 0x40) = 0;
  mutex_unlock(unaff_x20 + 0x10);
  if (*(char *)(unaff_x19 + 0x40) == '\x01') {
    *(undefined1 *)(unaff_x19 + 0x40) = 0;
    mutex_unlock(unaff_x19 + 0x10);
    return;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00180db7,"syna_tcm_buf_unlock");
}

