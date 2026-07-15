
ulong zte_goodix_pinctrl_select(long param_1,uint param_2)

{
  long lVar1;
  char *pcVar2;
  ulong uVar3;
  char *pcVar4;
  ulong uVar5;
  
  lVar1 = 0x88;
  if ((param_2 & 1) == 0) {
    lVar1 = 0x90;
  }
  _printk(&DAT_00102d0e,"zte_goodix_pinctrl_select",param_2 & 1);
  uVar5 = *(ulong *)(param_1 + lVar1);
  uVar3 = 0xffffffea;
  pcVar4 = "not a valid \'%s\' pinstate\n";
  if ((uVar5 != 0) && (uVar5 < 0xfffffffffffff001)) {
    uVar3 = pinctrl_select_state(*(undefined8 *)(param_1 + 0x80),uVar5);
    if ((int)uVar3 == 0) {
      return uVar3;
    }
    pcVar4 = "can not set %s pins\n";
  }
  pcVar2 = "goodix_active";
  if ((param_2 & 1) == 0) {
    pcVar2 = "goodix_suspend";
  }
  _dev_err(*(long *)(param_1 + 0x18) + 0x10,pcVar4,pcVar2);
  return uVar3 & 0xffffffff;
}

