
void charger_policy_check_usb_present(long param_1)

{
  bool bVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  long lVar6;
  undefined8 local_58;
  undefined8 local_50;
  long local_48;
  
  lVar6 = sp_el0;
  local_48 = *(long *)(lVar6 + 0x710);
  local_58 = 0;
  local_50 = 0;
  lVar6 = power_supply_get_by_name(&DAT_00103c27);
  if (lVar6 == 0) {
    _printk(&DAT_00104de8,"charger_policy_get_prop_by_name",&DAT_00103c27);
LAB_0010332c:
    _printk(&DAT_00104d34,"charger_policy_check_usb_present");
    iVar2 = 0;
  }
  else {
    iVar2 = power_supply_get_property(lVar6,4,&local_50);
    if (iVar2 < 0) {
      _printk(&DAT_0010578e,"charger_policy_get_prop_by_name",&DAT_00103c27,4,iVar2);
      goto LAB_0010332c;
    }
    iVar2 = (int)local_50;
    power_supply_put(lVar6);
  }
  _printk(&DAT_00104a38,"charger_policy_check_usb_present",iVar2);
  iVar3 = zte_charger_policy_get_prop_by_name
                    (*(undefined8 *)(param_1 + 0x1c8),0x11,(long)&local_58 + 4);
  if (iVar3 < 0) {
    _printk(&DAT_001056a2,"charger_policy_check_usb_present");
  }
  iVar3 = local_58._4_4_;
  _printk(&DAT_0010467d,"charger_policy_check_usb_present",local_58._4_4_);
  iVar4 = zte_charger_policy_get_prop_by_name(*(undefined8 *)(param_1 + 0x1c8),0x12,&local_58);
  if (iVar4 < 0) {
    _printk(&DAT_00103ff0,"charger_policy_check_usb_present");
  }
  iVar4 = (int)local_58;
  _printk(&DAT_00104368,"charger_policy_check_usb_present",local_58 & 0xffffffff);
  local_50 = 0;
  lVar6 = power_supply_get_by_name("wireless");
  if (lVar6 == 0) {
    _printk(&DAT_00104de8,"charger_policy_get_prop_by_name","wireless");
  }
  else {
    iVar5 = power_supply_get_property(lVar6,4,&local_50);
    if (-1 < iVar5) {
      iVar5 = (int)local_50;
      power_supply_put(lVar6);
      bVar1 = iVar5 != 0;
      goto LAB_00103430;
    }
    _printk(&DAT_0010578e,"charger_policy_get_prop_by_name","wireless",4,iVar5);
  }
  _printk(&DAT_00104d34,"charger_policy_check_usb_present");
  bVar1 = false;
LAB_00103430:
  lVar6 = sp_el0;
  if ((iVar3 != 0 || iVar2 != 0) || iVar4 != 0) {
    bVar1 = true;
  }
  if (*(long *)(lVar6 + 0x710) == local_48) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(bVar1);
}

