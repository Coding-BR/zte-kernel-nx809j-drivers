
undefined8 charger_policy_status_forcedischging(long param_1)

{
  int iVar1;
  ulong uVar2;
  undefined8 uVar3;
  
  iVar1 = charger_policy_ctrl_charging_enable(param_1,0,0);
  if (iVar1 == 0) {
    alarm_try_to_cancel(param_1 + 0x28);
  }
  uVar2 = charger_policy_check_soc_reach_min(param_1);
  if ((uVar2 & 1) != 0) {
    ktime_get_with_offset(0);
    uVar3 = ns_to_timespec64();
    *(undefined4 *)(param_1 + 0x1f0) = *(undefined4 *)(param_1 + 0x1ec);
    *(undefined4 *)(param_1 + 0x1ec) = 1;
    charger_policy_ctrl_charging_enable(param_1,1,1);
    *(undefined8 *)(param_1 + 0x208) = uVar3;
    _printk(&DAT_00104d91,"charger_policy_status_forcedischging",uVar3);
  }
  return 0;
}

