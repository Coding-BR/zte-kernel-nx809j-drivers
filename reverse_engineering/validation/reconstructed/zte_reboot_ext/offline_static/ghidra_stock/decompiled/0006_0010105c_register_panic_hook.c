
void register_panic_hook(long param_1)

{
  int iVar1;
  
  iVar1 = register_kretprobe(panic_probe);
  if (iVar1 == 0) {
    _dev_info(param_1 + 0x10,"ztedbg register p_hook\n");
  }
  else {
    _dev_err(param_1 + 0x10,"ztedbg failed to register p_hook: %d\n",iVar1);
  }
  return;
}

