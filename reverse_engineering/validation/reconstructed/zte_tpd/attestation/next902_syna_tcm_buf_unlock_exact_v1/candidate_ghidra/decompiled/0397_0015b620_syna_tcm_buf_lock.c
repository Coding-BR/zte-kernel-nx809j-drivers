
void syna_tcm_buf_lock(long param_1)

{
  if (*(char *)(param_1 + 0x40) == '\0') {
    mutex_lock(param_1 + 0x10);
    *(char *)(param_1 + 0x40) = *(char *)(param_1 + 0x40) + '\x01';
    return;
  }
  _printk(&DAT_0016da50,"syna_tcm_buf_lock");
  return;
}

