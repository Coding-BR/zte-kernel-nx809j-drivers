
ulong zte_goodix_pinctrl_init(long param_1)

{
  ulong uVar1;
  char *pcVar2;
  
  if (*(long *)(param_1 + 0x18) == 0) {
    return 0xffffffea;
  }
  _printk(&DAT_00103541,"zte_goodix_pinctrl_init");
  uVar1 = devm_pinctrl_get(*(long *)(param_1 + 0x18) + 0x10);
  pcVar2 = "Target does not use pinctrl\n";
  *(ulong *)(param_1 + 0x80) = uVar1;
  if ((uVar1 != 0) && (uVar1 < 0xfffffffffffff001)) {
    uVar1 = pinctrl_lookup_state(uVar1,"goodix_active","Target does not use pinctrl\n");
    pcVar2 = "Can not get goodix_active pinstate\n";
    *(ulong *)(param_1 + 0x88) = uVar1;
    if ((uVar1 != 0) && (uVar1 < 0xfffffffffffff001)) {
      uVar1 = pinctrl_lookup_state
                        (*(undefined8 *)(param_1 + 0x80),"goodix_suspend",
                         "Can not get goodix_active pinstate\n");
      pcVar2 = "Can not get goodix_suspend pinstate\n";
      *(ulong *)(param_1 + 0x90) = uVar1;
      if ((uVar1 != 0) && (uVar1 < 0xfffffffffffff001)) {
        return 0;
      }
    }
  }
  _dev_err(*(long *)(param_1 + 0x18) + 0x10,&DAT_001031b5,pcVar2);
  *(undefined8 *)(param_1 + 0x80) = 0;
  return uVar1;
}

