
void charger_policy_timeout_handler_work(long param_1)

{
  bool bVar1;
  bool bVar2;
  int iVar3;
  long lVar4;
  ulong uVar5;
  char *pcVar6;
  uint uVar7;
  code *pcVar8;
  undefined8 local_40;
  long local_38;
  
  lVar4 = sp_el0;
  local_38 = *(long *)(lVar4 + 0x710);
  local_40 = 0;
  ktime_get_with_offset(0);
  lVar4 = ns_to_timespec64();
  *(undefined1 *)(param_1 + 0x175) = 0;
  if (300 < (ulong)(lVar4 - charger_policy_logger_limit_time_pre_0)) {
    charger_policy_logger_limit_time_pre_0 = lVar4;
    *(undefined1 *)(param_1 + 0x175) = 1;
  }
  lVar4 = param_1 + -0xa8;
  iVar3 = charger_policy_get_prop_by_name(*(undefined8 *)(param_1 + 0x110),0,(long)&local_40 + 4);
  if (iVar3 < 0) {
    _printk(&DAT_00104ca8,"charger_policy_battery_is_charging");
    pcVar6 = "discharging";
  }
  else {
    bVar1 = local_40._4_4_ == 1;
    bVar2 = local_40._4_4_ == 4;
    _printk(&DAT_00103c86,"charger_policy_battery_is_charging",bVar1 || bVar2);
    pcVar6 = "charging";
    if (!bVar1 && !bVar2) {
      pcVar6 = "discharging";
    }
  }
  uVar7 = *(uint *)(param_1 + 0x144);
  if (uVar7 == *(uint *)(param_1 + 0x148)) {
LAB_00101584:
    if (*(char *)(param_1 + 0x175) != '\0') {
      uVar7 = *(uint *)(param_1 + 0x144);
      goto LAB_00101590;
    }
  }
  else {
    *(undefined1 *)(param_1 + 0x175) = 1;
    if (*(long *)(param_1 + -0xa0) != 0) {
      power_supply_changed();
      goto LAB_00101584;
    }
LAB_00101590:
    if (uVar7 < 4) {
      _printk(&DAT_00103ca3,"charger_policy_status_debug",
              *(undefined8 *)(policy_status_list + (ulong)uVar7 * 0x18 + 8),pcVar6);
    }
  }
  uVar5 = charger_policy_check_usb_present(lVar4);
  if ((uVar5 & 1) != 0) {
    if ((*(char *)(param_1 + 0x171) == '\0') && (*(char *)(param_1 + 0x172) == '\0')) {
      pcVar6 = "demo_enable && overtime_enable is disable";
    }
    else {
      iVar3 = charger_policy_get_prop_by_name(*(undefined8 *)(param_1 + 0x110),0x34,&local_40);
      if (iVar3 < 0) {
        _printk(&DAT_00104203,"charger_policy_check_low_temperature");
        iVar3 = *(int *)(param_1 + 0x140);
      }
      else {
        if (*(char *)(param_1 + 0x170) != '\0') {
          if ((int)local_40 < 0x97) {
            _printk(&DAT_001046c0,"charger_policy_check_low_temperature",local_40 & 0xffffffff,0x96)
            ;
            pcVar6 = "low temperature found";
            goto LAB_001016f0;
          }
        }
        iVar3 = *(int *)(param_1 + 0x140);
      }
      if (iVar3 == 0) {
        if (3 < *(uint *)(param_1 + 0x144)) {
                    /* WARNING: Does not return */
          pcVar8 = (code *)SoftwareBreakpoint(0x800,0x1017d8);
          (*pcVar8)();
        }
        alarm_try_to_cancel(param_1 + -0x80);
        alarm_start_relative(param_1 + -0x80,*(long *)(param_1 + 0x158) * 1000000);
        __pm_stay_awake(*(undefined8 *)(param_1 + 0x138));
        if (3 < *(uint *)(param_1 + 0x144)) {
                    /* WARNING: Does not return */
          pcVar8 = (code *)SoftwareBreakpoint(0x5512,0x1017d4);
          (*pcVar8)();
        }
        pcVar8 = *(code **)(policy_status_list + (ulong)*(uint *)(param_1 + 0x144) * 0x18 + 0x10);
        if (pcVar8 != (code *)0x0) {
          if (*(int *)(pcVar8 + -4) != -0x1e560b7e) {
                    /* WARNING: Does not return */
            pcVar8 = (code *)SoftwareBreakpoint(0x8228,0x10165c);
            (*pcVar8)();
          }
          (*pcVar8)(lVar4);
        }
        __pm_relax(*(undefined8 *)(param_1 + 0x138));
        goto LAB_00101788;
      }
      pcVar6 = "policy force disabled";
    }
LAB_001016f0:
    _printk(&DAT_001053e4,"charger_policy_status_need_sleep",pcVar6);
  }
  if (*(int *)(param_1 + 0x144) == 0) {
    charger_policy_ctrl_charging_enable(lVar4,1,1);
    *(undefined1 *)(param_1 + 0x173) = 0;
    *(undefined8 *)(param_1 + 0x160) = 0;
    *(undefined8 *)(param_1 + 0x144) = 0;
    charger_policy_disable_cas(lVar4,0);
  }
  else {
    __pm_stay_awake(*(undefined8 *)(param_1 + 0x138));
    charger_policy_ctrl_charging_enable(lVar4,1,1);
    *(undefined1 *)(param_1 + 0x173) = 0;
    *(undefined8 *)(param_1 + 0x160) = 0;
    *(undefined8 *)(param_1 + 0x144) = 0;
    charger_policy_disable_cas(lVar4,0);
    __pm_relax(*(undefined8 *)(param_1 + 0x138));
  }
  alarm_try_to_cancel(param_1 + -0x80);
  if (*(char *)(param_1 + 0x175) != '\0') {
    _printk(&DAT_00104b8b,"charger_policy_notifier_handler");
  }
LAB_00101788:
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) != local_38) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

