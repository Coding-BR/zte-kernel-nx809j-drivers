
void charger_policy_timeout_handler_work(long param_1)

{
  bool bVar1;
  bool bVar2;
  int iVar3;
  long lVar4;
  ulong uVar5;
  undefined *puVar6;
  code *pcVar7;
  long lVar8;
  char *pcVar9;
  int local_3c;
  long local_38;
  
  lVar4 = sp_el0;
  local_38 = *(long *)(lVar4 + 0x710);
  ktime_get_with_offset(1);
  lVar4 = ns_to_timespec64();
  lVar8 = lVar4 - charger_policy_logger_limit_time_pre_0;
  if (300 < lVar8) {
    charger_policy_logger_limit_time_pre_0 = lVar4;
  }
  local_3c = 0;
  *(bool *)(param_1 + 0x175) = 300 < lVar8;
  iVar3 = charger_policy_get_prop_by_name(*(undefined8 *)(param_1 + 0x110),0,&local_3c);
  if (iVar3 < 0) {
    _printk(&DAT_00104cc5,"charger_policy_battery_is_charging");
    pcVar9 = "discharging";
  }
  else {
    bVar1 = local_3c == 1;
    bVar2 = local_3c == 4;
    _printk(&DAT_00104f2b,"charger_policy_battery_is_charging",bVar1 || bVar2);
    pcVar9 = "charging";
    if (!bVar1 && !bVar2) {
      pcVar9 = "discharging";
    }
  }
  if ((*(int *)(param_1 + 0x144) != *(int *)(param_1 + 0x148)) &&
     (*(undefined1 *)(param_1 + 0x175) = 1, *(long *)(param_1 + -0xa0) != 0)) {
    power_supply_changed();
  }
  if (*(char *)(param_1 + 0x175) == '\x01') {
    if (3 < *(uint *)(param_1 + 0x144)) goto LAB_0010328c;
    _printk(&DAT_001050de,"charger_policy_status_debug",
            (&PTR_s_POLICY_IDLE_00100018)[(ulong)*(uint *)(param_1 + 0x144) * 3],pcVar9);
  }
  lVar4 = param_1 + -0xa8;
  uVar5 = charger_policy_check_usb_present(lVar4);
  if ((uVar5 & 1) != 0) {
    if (((*(byte *)(param_1 + 0x171) & 1) == 0) && (*(char *)(param_1 + 0x172) != '\x01')) {
      puVar6 = &DAT_00105667;
    }
    else {
      local_3c = 0;
      iVar3 = charger_policy_get_prop_by_name(*(undefined8 *)(param_1 + 0x110),0x34,&local_3c);
      if (iVar3 < 0) {
        _printk(&DAT_00104a59,"charger_policy_check_low_temperature");
        if (*(int *)(param_1 + 0x140) == 0) goto LAB_00103090;
LAB_00103170:
        puVar6 = &DAT_001048d0;
      }
      else if ((*(char *)(param_1 + 0x170) == '\x01') && (local_3c < 0x97)) {
        _printk(&DAT_00104e87,"charger_policy_check_low_temperature",local_3c,0x96);
        puVar6 = &DAT_00104607;
      }
      else {
        if (*(int *)(param_1 + 0x140) != 0) goto LAB_00103170;
LAB_00103090:
        if (*(uint *)(param_1 + 0x144) < 4) {
          alarm_try_to_cancel(param_1 + -0x80);
          alarm_start_relative(param_1 + -0x80,*(long *)(param_1 + 0x158) * 1000000);
          __pm_stay_awake(*(undefined8 *)(param_1 + 0x138));
          if (3 < *(uint *)(param_1 + 0x144)) {
LAB_0010328c:
                    /* WARNING: Does not return */
            pcVar7 = (code *)SoftwareBreakpoint(0x5512,0x103290);
            (*pcVar7)();
          }
          pcVar7 = (code *)(&PTR_charger_policy_status_ide_00100020)
                           [(ulong)*(uint *)(param_1 + 0x144) * 3];
          if (pcVar7 != (code *)0x0) {
            if (*(int *)(pcVar7 + -4) != -0x1e560b7e) {
                    /* WARNING: Does not return */
              pcVar7 = (code *)SoftwareBreakpoint(0x8228,0x103108);
              (*pcVar7)();
            }
            (*pcVar7)(lVar4);
          }
          __pm_relax(*(undefined8 *)(param_1 + 0x138));
          goto LAB_00103248;
        }
        puVar6 = &DAT_001048f7;
      }
    }
    _printk(puVar6,"charger_policy_status_need_sleep");
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
  if (*(char *)(param_1 + 0x175) == '\x01') {
    _printk(&DAT_00105046,"charger_policy_notifier_handler");
  }
LAB_00103248:
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

