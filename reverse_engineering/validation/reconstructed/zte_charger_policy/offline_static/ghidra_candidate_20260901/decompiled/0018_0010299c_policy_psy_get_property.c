
undefined8 policy_psy_get_property(undefined8 param_1,int param_2,uint *param_3)

{
  long lVar1;
  ulong uVar2;
  uint uVar3;
  
  lVar1 = power_supply_get_drvdata();
  if (lVar1 == 0) {
    _printk(&DAT_001051a7,"policy_psy_get_property");
    return 0xffffffc3;
  }
  if (param_2 == 4) {
    uVar3 = *(uint *)(lVar1 + 0x1ec);
  }
  else {
    if (param_2 != 5) {
      if (param_2 == 3) {
        _printk(&DAT_0010386b,"policy_psy_get_property",*(int *)(lVar1 + 0x1e8) == 0);
        *param_3 = (uint)(*(int *)(lVar1 + 0x1e8) == 0);
        return 0;
      }
      _printk(&DAT_0010415e,param_2);
      return 0xffffffea;
    }
    if (((*(char *)(lVar1 + 0x219) == '\0') ||
        (uVar2 = charger_policy_check_usb_present(lVar1), (uVar2 & 1) == 0)) &&
       ((*(char *)(lVar1 + 0x21a) == '\0' || (*(char *)(lVar1 + 0x21b) == '\0')))) {
      *param_3 = 0;
      return 0;
    }
    uVar3 = 1;
  }
  *param_3 = uVar3;
  return 0;
}

