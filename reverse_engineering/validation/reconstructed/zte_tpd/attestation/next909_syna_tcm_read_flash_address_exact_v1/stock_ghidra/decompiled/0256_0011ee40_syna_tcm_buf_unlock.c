
void syna_tcm_buf_unlock(long param_1)

{
  char cVar1;
  
  if (*(char *)(param_1 + 0x40) == '\x01') {
    cVar1 = '\0';
  }
  else {
    _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
    cVar1 = *(char *)(param_1 + 0x40) + -1;
  }
  *(char *)(param_1 + 0x40) = cVar1;
  mutex_unlock(param_1 + 0x10);
  return;
}

