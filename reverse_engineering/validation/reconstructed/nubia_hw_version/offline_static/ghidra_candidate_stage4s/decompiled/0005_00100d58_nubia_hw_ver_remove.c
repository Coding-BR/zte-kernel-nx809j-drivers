
void nubia_hw_ver_remove(long param_1)

{
  long *plVar1;
  
  plVar1 = *(long **)(param_1 + 0xa8);
  if ((plVar1 != (long *)0x0) && (*plVar1 != 0)) {
    devm_pinctrl_put();
  }
  devm_kfree(param_1 + 0x10,plVar1);
  return;
}

