
void syna_tcm_write_flash(undefined8 param_1,long param_2)

{
  if (*(char *)(param_2 + 0x80) == '\0') {
                    /* WARNING: Subroutine does not return */
    mutex_lock(param_2 + 0x50);
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016da90,"syna_tcm_buf_lock");
}

