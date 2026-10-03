
undefined8 policy_psy_set_property(undefined8 param_1,int param_2,int *param_3)

{
  long lVar1;
  undefined8 uVar2;
  
  lVar1 = power_supply_get_drvdata();
  if (lVar1 == 0) {
    _printk(&DAT_001051a7,"policy_psy_set_property");
    uVar2 = 0xffffffc3;
  }
  else {
    if (param_2 == 4) {
      *(int *)(lVar1 + 0x1ec) = *param_3;
    }
    else {
      if (param_2 != 3) {
        _printk(&DAT_001040ae,param_2);
        return 0xffffffea;
      }
      _printk(&DAT_001048bc,"policy_psy_set_property",*param_3);
      *(uint *)(lVar1 + 0x1e8) = (uint)(*param_3 == 0);
    }
    queue_delayed_work_on(0x20,*(undefined8 *)(lVar1 + 0xa0),lVar1 + 0xa8,0x19);
    uVar2 = 0;
  }
  return uVar2;
}

