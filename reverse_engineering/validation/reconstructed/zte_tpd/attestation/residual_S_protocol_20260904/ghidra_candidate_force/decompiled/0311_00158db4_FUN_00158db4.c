
void FUN_00158db4(undefined8 param_1,undefined8 param_2,int param_3)

{
  long unaff_x19;
  
  if (param_3 == 1) {
    *(undefined1 *)(unaff_x19 + 0x40) = 0;
    mutex_unlock(unaff_x19 + 0x10);
    return;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00180d77,"syna_tcm_buf_unlock");
}

