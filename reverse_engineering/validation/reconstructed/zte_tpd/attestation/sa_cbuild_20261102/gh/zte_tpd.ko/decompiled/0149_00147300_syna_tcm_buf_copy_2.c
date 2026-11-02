
void syna_tcm_buf_copy_2(long param_1)

{
  if (*(char *)(param_1 + 0x40) == '\0') {
                    /* WARNING: Subroutine does not return */
    mutex_lock(param_1 + 0x10);
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016da90,"syna_tcm_buf_lock");
}

