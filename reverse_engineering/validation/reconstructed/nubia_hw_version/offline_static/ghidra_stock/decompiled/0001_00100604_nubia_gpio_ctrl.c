
ulong nubia_gpio_ctrl(long param_1)

{
  int iVar1;
  ulong *puVar2;
  ulong uVar3;
  char *pcVar4;
  ulong *puVar5;
  
  puVar2 = (ulong *)devm_kmalloc(param_1 + 0x10,0x18,0xdc0);
  if (puVar2 == (ulong *)0x0) {
    uVar3 = 0xfffffff4;
  }
  else {
    uVar3 = devm_pinctrl_get(param_1 + 0x10);
    *puVar2 = uVar3;
    if ((uVar3 == 0) || (0xfffffffffffff000 < uVar3)) {
      _dev_err(param_1 + 0x10,"Cannot get hw gpio pinctrl\n");
      uVar3 = *puVar2;
    }
    else {
      uVar3 = pinctrl_lookup_state(uVar3,"pull_up_default");
      pcVar4 = "Cannot get hw gpio pullup pinctrl state\n";
      puVar5 = puVar2 + 1;
      *puVar5 = uVar3;
      if ((uVar3 != 0) && (uVar3 < 0xfffffffffffff001)) {
        uVar3 = pinctrl_lookup_state(*puVar2,"pull_down_default");
        pcVar4 = "Cannot get hw gpio pulldown pinctrl state\n";
        puVar5 = puVar2 + 2;
        *puVar5 = uVar3;
        if ((uVar3 != 0) && (uVar3 < 0xfffffffffffff001)) {
          iVar1 = pinctrl_select_state(*puVar2,puVar2[1]);
          if (iVar1 != 0) {
            _dev_err(param_1 + 0x10,"set hw gpio pullup state fail:\n");
          }
          uVar3 = 0;
          *(ulong **)(param_1 + 0xa8) = puVar2;
          goto LAB_001006f8;
        }
      }
      _dev_err(param_1 + 0x10,pcVar4);
      uVar3 = *puVar5;
      devm_pinctrl_put(*puVar2);
    }
    devm_kfree(param_1 + 0x10,puVar2);
  }
LAB_001006f8:
  return uVar3 & 0xffffffff;
}

