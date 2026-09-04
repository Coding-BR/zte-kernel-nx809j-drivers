
void syna_tcm_buf_lock(long param_1)

{
  if (*(char *)(param_1 + 0x40) != '\0') {
    _printk(&DAT_00138e56,"syna_tcm_buf_lock");
  }
  mutex_lock(param_1 + 0x10);
  *(char *)(param_1 + 0x40) = *(char *)(param_1 + 0x40) + '\x01';
  return;
}

