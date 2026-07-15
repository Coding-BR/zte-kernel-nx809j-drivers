
undefined4 zte_goodix_pinctrl_init(long param_1)

{
  ulong uVar1;
  char *pcVar2;
  ulong *puVar3;
  
  _printk(&DAT_001033ac,"zte_goodix_pinctrl_init");
  uVar1 = devm_pinctrl_get(*(long *)(param_1 + 0x18) + 0x10);
  pcVar2 = "Target does not use pinctrl\n";
  puVar3 = (ulong *)(param_1 + 0x80);
  *puVar3 = uVar1;
  if ((uVar1 != 0) && (uVar1 < 0xfffffffffffff001)) {
    uVar1 = pinctrl_lookup_state(uVar1,"goodix_active");
    pcVar2 = "Can not get goodix_active pinstate\n";
    puVar3 = (ulong *)(param_1 + 0x88);
    *puVar3 = uVar1;
    if ((uVar1 != 0) && (uVar1 < 0xfffffffffffff001)) {
      uVar1 = pinctrl_lookup_state(*(undefined8 *)(param_1 + 0x80),"goodix_suspend");
      pcVar2 = "Can not get goodix_suspend pinstate\n";
      puVar3 = (ulong *)(param_1 + 0x90);
      *puVar3 = uVar1;
      if ((uVar1 != 0) && (uVar1 < 0xfffffffffffff001)) {
        return 0;
      }
    }
  }
  _dev_err(*(long *)(param_1 + 0x18) + 0x10,pcVar2);
  uVar1 = *puVar3;
  *(undefined8 *)(param_1 + 0x80) = 0;
  return (int)uVar1;
}

