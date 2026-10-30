
void syna_tcm_buf_unlock(long param_1)

{
  if (*(char *)(param_1 + 0x40) == '\x01') {
    *(undefined1 *)(param_1 + 0x40) = 0;
    mutex_unlock(param_1 + 0x10);
    return;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00180d77,"syna_tcm_buf_unlock");
}

