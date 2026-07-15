
undefined4 policy_psy_set_property(undefined8 param_1,int param_2,int *param_3)

{
  long lVar1;
  undefined4 uVar2;
  
  lVar1 = power_supply_get_drvdata();
  if (lVar1 == 0) {
    _printk(&DAT_00105827,"policy_psy_set_property");
    uVar2 = 0xffffffc3;
  }
  else {
    if (param_2 == 4) {
      uVar2 = 0;
      *(int *)(lVar1 + 0x1ec) = *param_3;
    }
    else if (param_2 == 3) {
      _printk(&DAT_00104c26,"policy_psy_set_property",*param_3);
      uVar2 = 0;
      *(uint *)(lVar1 + 0x1e8) = (uint)(*param_3 == 0);
    }
    else {
      _printk(&DAT_001047b3,param_2);
      uVar2 = 0xffffffea;
    }
    queue_delayed_work_on(0x20,*(undefined8 *)(lVar1 + 0xa0),lVar1 + 0xa8,0x19);
  }
  return uVar2;
}

