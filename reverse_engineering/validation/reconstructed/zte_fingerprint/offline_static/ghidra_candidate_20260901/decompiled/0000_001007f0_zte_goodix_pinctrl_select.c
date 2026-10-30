
ulong zte_goodix_pinctrl_select(long param_1,uint param_2)

{
  char *pcVar1;
  long lVar2;
  bool bVar3;
  ulong uVar4;
  char *pcVar5;
  
  if ((param_1 != 0) && (*(long *)(param_1 + 0x80) != 0)) {
    bVar3 = (param_2 & 1) == 0;
    pcVar1 = "goodix_active";
    if (bVar3) {
      pcVar1 = "goodix_suspend";
    }
    lVar2 = 0x88;
    if (bVar3) {
      lVar2 = 0x90;
    }
    _printk(&DAT_00102b44,"zte_goodix_pinctrl_select",param_2 & 1);
    if (*(long *)(param_1 + lVar2) == 0) {
      uVar4 = 0xffffffea;
      pcVar5 = "not a valid \'%s\' pinstate\n";
    }
    else {
      uVar4 = pinctrl_select_state(*(undefined8 *)(param_1 + 0x80));
      if ((int)uVar4 == 0) {
        return uVar4;
      }
      uVar4 = uVar4 & 0xffffffff;
      pcVar5 = "can not set %s pins\n";
    }
    _dev_err(*(long *)(param_1 + 0x18) + 0x10,pcVar5,pcVar1);
    return uVar4;
  }
  return 0xffffffea;
}

