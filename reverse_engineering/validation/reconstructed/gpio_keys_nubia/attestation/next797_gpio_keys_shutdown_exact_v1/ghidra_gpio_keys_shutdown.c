
void gpio_keys_shutdown(long param_1)

{
  int iVar1;
  
  iVar1 = gpio_keys_suspend(param_1 + 0x10);
  if (iVar1 != 0) {
    _dev_err(param_1 + 0x10,"failed to shutdown\n");
  }
  return;
}

