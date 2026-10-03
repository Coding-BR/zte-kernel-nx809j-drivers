/* 001008a4 charger_policy_get_status */

void charger_policy_get_status(void)

{
  bool bVar1;
  int iVar2;
  long lVar3;
  undefined8 local_30;
  long local_28;
  
  lVar3 = sp_el0;
  local_28 = *(long *)(lVar3 + 0x710);
  local_30 = 0;
  lVar3 = power_supply_get_by_name("policy");
  if (lVar3 == 0) {
    _printk(&DAT_00104bb4,"charger_policy_get_status");
    bVar1 = false;
  }
  else {
    iVar2 = power_supply_get_property(lVar3,5,&local_30);
    if (iVar2 < 0) {
      _printk(&DAT_00104f5d,"charger_policy_get_status",5,"policy");
      bVar1 = false;
    }
    else {
      power_supply_put(lVar3);
      bVar1 = (int)local_30 != 0;
    }
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(bVar1);
}



/* 00100974 charger_policy_probe */

undefined8 charger_policy_probe(long param_1)

{
  long *plVar1;
  int iVar2;
  uint uVar3;
  long *plVar4;
  long lVar5;
  char *pcVar6;
  undefined *puVar7;
  undefined8 uVar8;
  
  uVar8 = *(undefined8 *)(param_1 + 0x2f8);
  _printk(&DAT_00104644,"charger_policy_probe");
  iVar2 = zte_poweroff_charging_status();
  if (iVar2 != 0) {
    _printk(&DAT_00103a7a,"charger_policy_probe");
    return 0;
  }
  lVar5 = param_1 + 0x10;
  plVar4 = (long *)devm_kmalloc(lVar5,0x220,0xdc0);
  if (plVar4 == (long *)0x0) {
    return 0xfffffff4;
  }
  plVar1 = plVar4 + 0x30;
  *plVar4 = lVar5;
  *(long **)(param_1 + 0xa8) = plVar4;
  uVar3 = of_property_read_variable_u32_array(uVar8,"policy,enable",plVar1,1,0);
  if ((int)uVar3 < 0) {
    if (uVar3 == 0xffffffea) {
      *(undefined4 *)plVar1 = 0;
    }
    else {
      _printk(&DAT_001039cc,uVar3 & (int)uVar3 >> 0x1f);
    }
  }
  _printk(&DAT_001041a9,"charger_policy_probe",(int)plVar4[0x30]);
  uVar3 = of_property_read_variable_u32_array(uVar8,"policy,retry-times",plVar4 + 0x32,1,0);
  if ((int)uVar3 < 0) {
    if (uVar3 == 0xffffffea) {
      *(undefined4 *)(plVar4 + 0x32) = 10;
    }
    else {
      _printk(&DAT_00103c40,uVar3 & (int)uVar3 >> 0x1f);
    }
  }
  _printk(&DAT_00104c28,"charger_policy_probe",(int)plVar4[0x32]);
  uVar3 = of_property_read_variable_u32_array
                    (uVar8,"policy,expired-mode-enable",(undefined4 *)((long)plVar4 + 0x184),1,0);
  if ((int)uVar3 < 0) {
    if (uVar3 == 0xffffffea) {
      *(undefined4 *)((long)plVar4 + 0x184) = 1;
    }
    else {
      _printk(&DAT_001035ae,uVar3 & (int)uVar3 >> 0x1f);
    }
  }
  _printk(&DAT_00103f8e,"charger_policy_probe",*(undefined4 *)((long)plVar4 + 0x184));
  uVar3 = of_property_read_variable_u32_array(uVar8,"policy,low-temp-enable",plVar4 + 0x31,1,0);
  if ((int)uVar3 < 0) {
    if (uVar3 == 0xffffffea) {
      *(undefined4 *)(plVar4 + 0x31) = 0;
    }
    else {
      _printk(&DAT_00104676,uVar3 & (int)uVar3 >> 0x1f);
    }
  }
  _printk(&DAT_0010436d,"charger_policy_probe",(int)plVar4[0x31]);
  uVar3 = of_property_read_variable_u32_array
                    (uVar8,"policy,have-power-path",(undefined4 *)((long)plVar4 + 0x18c),1,0);
  if ((int)uVar3 < 0) {
    if (uVar3 == 0xffffffea) {
      *(undefined4 *)((long)plVar4 + 0x18c) = 1;
    }
    else {
      _printk(&DAT_00104c5e,uVar3 & (int)uVar3 >> 0x1f);
    }
  }
  _printk(&DAT_00104767,"charger_policy_probe",*(undefined4 *)((long)plVar4 + 0x18c));
  uVar3 = of_property_read_variable_u32_array
                    (uVar8,"policy,timeout-seconds",(undefined4 *)((long)plVar4 + 0x194),1,0);
  if ((int)uVar3 < 0) {
    if (uVar3 == 0xffffffea) {
      *(undefined4 *)((long)plVar4 + 0x194) = 0x15180;
    }
    else {
      _printk(&DAT_00105348,uVar3 & (int)uVar3 >> 0x1f);
    }
  }
  _printk(&DAT_00104a76,"charger_policy_probe",*(undefined4 *)((long)plVar4 + 0x194));
  uVar3 = of_property_read_variable_u32_array(uVar8,"policy,expired-max-capacity",plVar4 + 0x33,1,0)
  ;
  if ((int)uVar3 < 0) {
    if (uVar3 == 0xffffffea) {
      *(undefined4 *)(plVar4 + 0x33) = 0x46;
    }
    else {
      _printk(&DAT_001038f2,uVar3 & (int)uVar3 >> 0x1f);
    }
  }
  _printk(&DAT_0010493e,"charger_policy_probe",(int)plVar4[0x33]);
  uVar3 = of_property_read_variable_u32_array
                    (uVar8,"policy,expired-min-capacity",(undefined4 *)((long)plVar4 + 0x19c),1,0);
  if ((int)uVar3 < 0) {
    if (uVar3 == 0xffffffea) {
      *(undefined4 *)((long)plVar4 + 0x19c) = 0x32;
    }
    else {
      _printk(&DAT_001047a1,uVar3 & (int)uVar3 >> 0x1f);
    }
  }
  _printk(&DAT_001035fc,"charger_policy_probe",*(undefined4 *)((long)plVar4 + 0x19c));
  uVar3 = of_property_read_variable_u32_array(uVar8,"policy,demo-max-capacity",plVar4 + 0x34,1,0);
  if ((int)uVar3 < 0) {
    if (uVar3 == 0xffffffea) {
      *(undefined4 *)(plVar4 + 0x34) = 0x46;
    }
    else {
      _printk(&DAT_00103501,uVar3 & (int)uVar3 >> 0x1f);
    }
  }
  _printk(&DAT_001036cb,"charger_policy_probe",(int)plVar4[0x34]);
  uVar3 = of_property_read_variable_u32_array
                    (uVar8,"policy,demo-min-capacity",(undefined4 *)((long)plVar4 + 0x1a4),1,0);
  if ((int)uVar3 < 0) {
    if (uVar3 == 0xffffffea) {
      *(undefined4 *)((long)plVar4 + 0x1a4) = 0x32;
    }
    else {
      _printk(&DAT_00103ad0,uVar3 & (int)uVar3 >> 0x1f);
    }
  }
  _printk(&DAT_00105392,"charger_policy_probe",*(undefined4 *)((long)plVar4 + 0x1a4));
  uVar3 = of_property_read_variable_u32_array
                    (uVar8,"policy,no-powerpath-delta-capacity",plVar4 + 0x35,1,0);
  if ((int)uVar3 < 0) {
    if (uVar3 == 0xffffffea) {
      *(undefined4 *)(plVar4 + 0x35) = 10;
    }
    else {
      _printk(&DAT_0010445b,uVar3 & (int)uVar3 >> 0x1f);
    }
  }
  _printk(&DAT_00105094,"charger_policy_probe",(int)plVar4[0x35]);
  iVar2 = of_property_read_string(uVar8,"policy,battery-phy-name",plVar4 + 0x37);
  if (iVar2 == -0x16) {
    pcVar6 = "battery";
    plVar4[0x37] = (long)"battery";
LAB_00100e68:
    _printk(&DAT_0010428c,"charger_policy_probe",pcVar6);
    iVar2 = of_property_read_string(uVar8,"policy,zte-battery-phy-name",plVar4 + 0x38);
    if (iVar2 == -0x16) {
      pcVar6 = "zte_battery";
      plVar4[0x38] = (long)"zte_battery";
    }
    else {
      if (iVar2 < 0) {
        pcVar6 = "policy,zte-battery-phy-name";
        goto LAB_00100fc0;
      }
      pcVar6 = (char *)plVar4[0x38];
    }
    _printk(&DAT_0010451c,"charger_policy_probe",pcVar6);
    iVar2 = of_property_read_string(uVar8,"policy,zte-usb-phy-name",plVar4 + 0x39);
    if (iVar2 == -0x16) {
      pcVar6 = "zte_usb";
      plVar4[0x39] = (long)"zte_usb";
    }
    else {
      if (iVar2 < 0) {
        pcVar6 = "policy,zte-usb-phy-name";
        goto LAB_00100fc0;
      }
      pcVar6 = (char *)plVar4[0x39];
    }
    _printk(&DAT_00104598,"charger_policy_probe",pcVar6);
    iVar2 = of_property_read_string(uVar8,"policy,interface-phy-name",plVar4 + 0x36);
    if (iVar2 == -0x16) {
      pcVar6 = "interface";
      plVar4[0x36] = (long)"interface";
    }
    else {
      if (iVar2 < 0) {
        pcVar6 = "policy,interface-phy-name";
        goto LAB_00100fc0;
      }
      pcVar6 = (char *)plVar4[0x36];
    }
    _printk(&DAT_00104047,"charger_policy_probe",pcVar6);
    iVar2 = of_property_read_string(uVar8,"policy,cas-phy-name",plVar4 + 0x3a);
    if (iVar2 == -0x16) {
      puVar7 = &DAT_00103723;
      plVar4[0x3a] = (long)&DAT_00103723;
    }
    else {
      if (iVar2 < 0) {
        pcVar6 = "policy,cas-phy-name";
        goto LAB_00100fc0;
      }
      puVar7 = (undefined *)plVar4[0x3a];
    }
    _printk(&DAT_00103b1c,"charger_policy_probe",puVar7);
    if ((int)*plVar1 != 0) {
      lVar5 = alloc_workqueue(&DAT_00104200,0x6000a,1,"policy_probe_wq");
      plVar4[0x22] = lVar5;
      if (lVar5 != 0) {
        plVar4[0x23] = 0xfffffffe00000;
        plVar4[0x24] = (long)(plVar4 + 0x24);
        plVar4[0x25] = (long)(plVar4 + 0x24);
        plVar4[0x26] = (long)charger_policy_probe_work;
        init_timer_key(plVar4 + 0x27,&delayed_work_timer_fn,0x200000,0,0);
        queue_delayed_work_on(0x20,plVar4[0x22],plVar4 + 0x23,0x4e2);
        return 0;
      }
      return 0xfffffff4;
    }
    _printk(&DAT_001051fc,"charger_policy_probe");
  }
  else {
    if (-1 < iVar2) {
      pcVar6 = (char *)plVar4[0x37];
      goto LAB_00100e68;
    }
    pcVar6 = "policy,battery-phy-name";
LAB_00100fc0:
    _printk(&DAT_00104ab0,pcVar6,iVar2);
  }
  devm_kfree(lVar5,plVar4);
  return 0;
}



/* 00101098 charger_policy_remove */

void charger_policy_remove(long param_1)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0xa8);
  _printk(&DAT_0010503e,"charger_policy_remove");
  if (lVar1 != 0) {
    power_supply_unreg_notifier(lVar1 + 0x10);
    if (*(long *)(lVar1 + 0x1e0) != 0) {
      wakeup_source_unregister();
    }
    devm_kfree(param_1 + 0x10,lVar1);
  }
  _printk(&DAT_0010442e,"charger_policy_remove");
  return;
}



/* 00101110 charger_policy_probe_work */

void charger_policy_probe_work(long param_1)

{
  int iVar1;
  long lVar2;
  ulong uVar3;
  undefined8 *puVar4;
  undefined8 local_70;
  undefined8 local_68;
  undefined8 *local_60;
  undefined8 local_58;
  undefined8 uStack_50;
  undefined8 local_48;
  undefined8 uStack_40;
  long local_38;
  
  lVar2 = sp_el0;
  puVar4 = (undefined8 *)(param_1 + -0x118);
  local_38 = *(long *)(lVar2 + 0x710);
  local_48 = 0;
  uStack_40 = 0;
  local_58 = 0;
  uStack_50 = 0;
  local_68 = 0;
  local_60 = (undefined8 *)0x0;
  local_70 = 0;
  _printk(&DAT_0010455b,"charger_policy_probe_work");
  *(undefined4 *)(param_1 + 0xc0) = 0;
  *(undefined8 *)(param_1 + 0xd4) = 0;
  *(undefined1 *)(param_1 + 0x101) = 0;
  *(undefined4 *)(param_1 + 0xdc) = *(undefined4 *)(param_1 + 0x7c);
  *(undefined4 *)(param_1 + 0xe0) = 0x278d00;
  *(bool *)(param_1 + 0x102) = *(int *)(param_1 + 0x6c) != 0;
  *(undefined8 *)(param_1 + 0xe8) = 30000;
  *(undefined8 *)(param_1 + 0xf0) = 0;
  *(undefined1 *)(param_1 + 0x103) = 0;
  *(bool *)(param_1 + 0x104) = *(int *)(param_1 + 0x74) != 0;
  *(bool *)(param_1 + 0x100) = *(int *)(param_1 + 0x70) != 0;
  alarm_init(param_1 + -0xf0,1,charger_policy_timeout_alarm_cb);
  lVar2 = alloc_workqueue(&DAT_00104200,0x6000a,1,"charger-policy-service");
  *(long *)(param_1 + -0x78) = lVar2;
  if (lVar2 == 0) {
    _printk(&DAT_0010480a,"charger_policy_probe_work");
  }
  else {
    *(undefined8 *)(param_1 + -0x70) = 0xfffffffe00000;
    *(long *)(param_1 + -0x68) = param_1 + -0x68;
    *(long *)(param_1 + -0x60) = param_1 + -0x68;
    *(code **)(param_1 + -0x58) = charger_policy_timeout_handler_work;
    init_timer_key(param_1 + -0x50,&delayed_work_timer_fn,0x200000,0,0);
    *(code **)(param_1 + -0x108) = charger_policy_notifier_switch;
    iVar1 = power_supply_reg_notifier(param_1 + -0x108);
    if (iVar1 < 0) {
      _printk(&DAT_001050e2,"charger_policy_probe_work",iVar1);
    }
    else {
      local_60 = puVar4;
      uVar3 = devm_power_supply_register(*puVar4,policy_psy_desc,&local_70);
      *(ulong *)(param_1 + -0x110) = uVar3;
      if (uVar3 < 0xfffffffffffff001) {
        zte_misc_register_callback(demo_charging_policy_node,puVar4);
        zte_misc_register_callback(expired_charging_policy_node,puVar4);
        zte_misc_register_callback(charging_time_sec_node,puVar4);
        zte_misc_register_callback(force_disching_sec_node,puVar4);
        zte_misc_register_callback(policy_cap_min_node,puVar4);
        zte_misc_register_callback(policy_cap_max_node,puVar4);
        zte_misc_register_callback(policy_enable_node,puVar4);
        lVar2 = wakeup_source_register(*puVar4,"charger_policy_service");
        *(long *)(param_1 + 200) = lVar2;
        if (lVar2 != 0) {
          queue_delayed_work_on
                    (0x20,*(undefined8 *)(param_1 + -0x78),(undefined8 *)(param_1 + -0x70),0x19);
          _printk(&DAT_00104fa6,"charger_policy_probe_work");
          goto LAB_001013d0;
        }
        _printk(&DAT_00104e84,"charger_policy_probe_work");
      }
      else {
        _printk(&DAT_0010363b,"charger_policy_probe_work",uVar3);
      }
      power_supply_unreg_notifier(param_1 + -0x108);
    }
  }
  charger_policy_check_retry_probe_count = charger_policy_check_retry_probe_count + 1;
  if (charger_policy_check_retry_probe_count < *(uint *)(param_1 + 0x78)) {
    _printk(&DAT_00103b53,"charger_policy_probe_work");
    queue_delayed_work_on(0x20,*(undefined8 *)(param_1 + -8),param_1,0x4e2);
  }
  else {
    _printk(&DAT_00105244,"charger_policy_probe_work");
    devm_kfree(*puVar4,puVar4);
  }
LAB_001013d0:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00101430 charger_policy_timeout_alarm_cb */

undefined8 charger_policy_timeout_alarm_cb(long param_1)

{
  alarm_start_relative(param_1,*(long *)(param_1 + 0x1d8) * 1000000);
  if ((*(ulong *)(param_1 + 0x80) & 1) == 0) {
    queue_delayed_work_on(0x20,*(undefined8 *)(param_1 + 0x78),(ulong *)(param_1 + 0x80),0x19);
  }
  return 1;
}



/* 0010148c charger_policy_timeout_handler_work */

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



/* 001017dc charger_policy_notifier_switch */

undefined8 charger_policy_notifier_switch(long param_1,long param_2,undefined8 *param_3)

{
  int iVar1;
  char *__s1;
  
  if (param_2 != 0) {
    return 1;
  }
  if ((*(ulong *)(param_1 + 0x98) & 1) == 0) {
    __s1 = *(char **)*param_3;
    iVar1 = strcmp(__s1,*(char **)(param_1 + 0x1a8));
    if ((iVar1 == 0) || (iVar1 = strcmp(__s1,"usb"), iVar1 == 0)) {
      queue_delayed_work_on(0x20,*(undefined8 *)(param_1 + 0x90),(ulong *)(param_1 + 0x98),0x32);
    }
  }
  return 1;
}



/* 0010186c charger_policy_get_prop_by_name */

void charger_policy_get_prop_by_name(long param_1,undefined4 param_2,undefined4 *param_3)

{
  int iVar1;
  long lVar2;
  undefined8 local_40;
  long local_38;
  
  lVar2 = sp_el0;
  local_38 = *(long *)(lVar2 + 0x710);
  local_40 = 0;
  if (param_1 == 0) {
    _printk(&DAT_001040ec,"charger_policy_get_prop_by_name");
    iVar1 = -0x16;
  }
  else {
    lVar2 = power_supply_get_by_name();
    if (lVar2 == 0) {
      _printk(&DAT_00105126,"charger_policy_get_prop_by_name",param_1);
      iVar1 = -0x13;
    }
    else {
      iVar1 = power_supply_get_property(lVar2,param_2,&local_40);
      if (iVar1 < 0) {
        _printk(&DAT_00104f5d,"charger_policy_get_prop_by_name",param_2,param_1);
      }
      else {
        *param_3 = (undefined4)local_40;
        power_supply_put(lVar2);
        iVar1 = 0;
      }
    }
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar1);
}



/* 0010196c charger_policy_check_usb_present */

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
  lVar6 = power_supply_get_by_name(&DAT_00103793);
  if (lVar6 == 0) {
    _printk(&DAT_00104ec5,"charger_policy_check_usb_present");
    iVar2 = 0;
  }
  else {
    iVar2 = power_supply_get_property(lVar6,4,&local_50);
    if (iVar2 < 0) {
      _printk(&DAT_00104cd3,"charger_policy_check_usb_present");
      _printk(&DAT_00103be9,"charger_policy_check_usb_present");
      iVar2 = 0;
    }
    else {
      iVar2 = (int)local_50;
    }
    power_supply_put(lVar6);
  }
  _printk(&DAT_0010460c,"charger_policy_check_usb_present",iVar2);
  iVar3 = zte_charger_policy_get_prop_by_name
                    (*(undefined8 *)(param_1 + 0x1c8),0x11,(long)&local_58 + 4);
  if (iVar3 < 0) {
    _printk(&DAT_00104fd4,"charger_policy_check_usb_present");
  }
  iVar3 = local_58._4_4_;
  _printk(&DAT_001052ad,"charger_policy_check_usb_present",local_58._4_4_);
  iVar4 = zte_charger_policy_get_prop_by_name(*(undefined8 *)(param_1 + 0x1c8),0x12,&local_58);
  if (iVar4 < 0) {
    _printk(&DAT_00103dcf,"charger_policy_check_usb_present");
  }
  iVar4 = (int)local_58;
  _printk(&DAT_0010500e,"charger_policy_check_usb_present",local_58 & 0xffffffff);
  lVar6 = power_supply_get_by_name("wireless");
  if (lVar6 == 0) {
    _printk(&DAT_00103ed4,"charger_policy_check_usb_present");
    bVar1 = false;
  }
  else {
    iVar5 = power_supply_get_property(lVar6,4,&local_50);
    if (iVar5 < 0) {
      _printk(&DAT_001052ce,"charger_policy_check_usb_present");
      _printk(&DAT_0010497d,"charger_policy_check_usb_present");
      bVar1 = false;
    }
    else {
      bVar1 = (int)local_50 != 0;
    }
    power_supply_put(lVar6);
  }
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



/* 00101b80 charger_policy_ctrl_charging_enable */

void charger_policy_ctrl_charging_enable(long param_1,int param_2,int param_3)

{
  long lVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  undefined8 uVar5;
  undefined *puVar6;
  int local_54;
  int local_50;
  int local_4c;
  long local_48;
  
  lVar1 = sp_el0;
  local_48 = *(long *)(lVar1 + 0x710);
  local_4c = 0;
  local_54 = 0;
  local_50 = 0;
  iVar2 = charger_policy_get_prop_by_name(*(undefined8 *)(param_1 + 0x1b8),0,&local_4c);
  iVar4 = local_4c;
  if (-1 < iVar2) {
    _printk(&DAT_00104ef1,"charger_policy_ctrl_charging_enable",local_4c == 1 || local_4c == 4);
  }
  else {
    _printk(&DAT_001049b3,"charger_policy_ctrl_charging_enable");
  }
  _printk(&DAT_0010410a,"charger_policy_ctrl_charging_enable",
          -1 < iVar2 && (iVar4 == 1 || iVar4 == 4));
  iVar2 = zte_charger_policy_get_prop_by_name(*(undefined8 *)(param_1 + 0x1c0),3,&local_50);
  iVar4 = local_50;
  if (iVar2 < 0) {
    puVar6 = &DAT_001037a0;
  }
  else {
    _printk(&DAT_00105493,"charger_policy_ctrl_charging_enable",local_50);
    iVar3 = zte_charger_policy_get_prop_by_name(*(undefined8 *)(param_1 + 0x1c0),4,&local_54);
    iVar2 = local_54;
    if (-1 < iVar3) {
      _printk(&DAT_0010382e,"charger_policy_ctrl_charging_enable",local_54);
      if (iVar4 != param_3) {
        _printk(&DAT_001049df,"charger_policy_ctrl_charging_enable",param_3);
        iVar4 = zte_charger_policy_set_prop_by_name(*(undefined8 *)(param_1 + 0x1c0),3,param_3);
        if (iVar4 < 0) {
          puVar6 = &DAT_00103991;
          goto LAB_00101c84;
        }
      }
      if (iVar2 != param_2) {
        _printk(&DAT_001042f7,"charger_policy_ctrl_charging_enable",param_2);
        iVar4 = zte_charger_policy_set_prop_by_name(*(undefined8 *)(param_1 + 0x1c0),4,param_2);
        if (iVar4 < 0) {
          puVar6 = &DAT_00104257;
          goto LAB_00101c84;
        }
      }
      uVar5 = 1;
      goto LAB_00101cc8;
    }
    puVar6 = &DAT_001037e3;
  }
LAB_00101c84:
  _printk(puVar6,"charger_policy_ctrl_charging_enable");
  uVar5 = 0;
LAB_00101cc8:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_48) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar5);
}



/* 00101d6c charger_policy_disable_cas */

void charger_policy_disable_cas(long param_1,undefined4 param_2)

{
  int iVar1;
  long lVar2;
  undefined8 local_30;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  local_30 = 0;
  _printk(&DAT_00104f36,"charger_policy_disable_cas",param_2);
  if (*(long *)(param_1 + 0x1d0) == 0) {
    _printk(&DAT_00104a0f,"charger_policy_disable_cas");
  }
  else {
    lVar2 = power_supply_get_by_name();
    if (lVar2 == 0) {
      _printk(&DAT_00104401,"charger_policy_disable_cas");
    }
    else {
      local_30 = CONCAT44(local_30._4_4_,param_2);
      iVar1 = power_supply_set_property(lVar2,5,&local_30);
      if (iVar1 < 0) {
        _printk(&DAT_00103f05,"charger_policy_disable_cas",iVar1);
        _printk(&DAT_0010432f,"charger_policy_disable_cas",iVar1);
      }
      else {
        power_supply_put(lVar2);
      }
    }
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00101e7c charger_policy_status_ide */

undefined8 charger_policy_status_ide(long param_1)

{
  undefined4 uVar1;
  char cVar2;
  long lVar3;
  long lVar4;
  
  if (*(char *)(param_1 + 0x21d) != '\0') {
    _printk(&DAT_00105152,"charger_policy_status_ide",*(undefined1 *)(param_1 + 0x219),
            *(undefined1 *)(param_1 + 0x21a));
  }
  ktime_get_with_offset(0);
  lVar3 = ns_to_timespec64();
  if (*(char *)(param_1 + 0x219) == '\0') {
    lVar4 = *(long *)(param_1 + 0x208);
    if (lVar4 == 0) {
      *(long *)(param_1 + 0x208) = lVar3;
      _printk(&DAT_001043a7,"charger_policy_status_ide",lVar3);
      lVar4 = *(long *)(param_1 + 0x208);
      cVar2 = *(char *)(param_1 + 0x21d);
    }
    else {
      cVar2 = *(char *)(param_1 + 0x21d);
    }
    if (cVar2 != '\0') {
      _printk(&DAT_0010374a,"charger_policy_status_ide",lVar3,lVar4,lVar3 - lVar4,
              *(undefined4 *)(param_1 + 500));
      lVar4 = *(long *)(param_1 + 0x208);
    }
    if ((ulong)*(uint *)(param_1 + 500) <= (ulong)(lVar3 - lVar4)) {
      _printk(&DAT_00104afc,"charger_policy_status_ide");
      charger_policy_disable_cas(param_1,1);
      uVar1 = *(undefined4 *)(param_1 + 0x1ec);
      *(undefined1 *)(param_1 + 0x21b) = 1;
      *(undefined4 *)(param_1 + 0x1ec) = 1;
      *(undefined4 *)(param_1 + 0x1f0) = uVar1;
    }
  }
  else {
    _printk(&DAT_001045d3,"charger_policy_status_ide");
    charger_policy_disable_cas(param_1,1);
    uVar1 = *(undefined4 *)(param_1 + 0x1ec);
    *(undefined4 *)(param_1 + 0x1ec) = 1;
    *(undefined4 *)(param_1 + 0x1f0) = uVar1;
    *(long *)(param_1 + 0x208) = lVar3;
    _printk(&DAT_00104869,"charger_policy_status_ide");
  }
  return 0;
}



/* 00102000 charger_policy_status_runchging */

undefined8 charger_policy_status_runchging(long param_1)

{
  undefined4 uVar1;
  int iVar2;
  long lVar3;
  undefined *puVar4;
  uint uVar5;
  int local_3c;
  long local_38;
  
  lVar3 = sp_el0;
  local_38 = *(long *)(lVar3 + 0x710);
  local_3c = 0;
  if (*(char *)(param_1 + 0x21c) == '\0') {
LAB_0010205c:
    charger_policy_ctrl_charging_enable(param_1,1,1);
    iVar2 = charger_policy_get_prop_by_name(*(undefined8 *)(param_1 + 0x1b8),0x2f,&local_3c);
    if (-1 < iVar2) {
      if (*(char *)(param_1 + 0x21d) == '\0') {
        if (*(char *)(param_1 + 0x219) == '\0') goto LAB_001020d4;
LAB_00102090:
        iVar2 = local_3c;
        if (*(char *)(param_1 + 0x21c) == '\0') {
          uVar5 = *(int *)(param_1 + 0x1a0) + *(int *)(param_1 + 0x1a8);
        }
        else {
          uVar5 = *(uint *)(param_1 + 0x1a0);
          if (*(int *)(param_1 + 0x1f0) != 0) {
            uVar5 = *(int *)(param_1 + 0x1a4) + uVar5 >> 1;
          }
        }
        if (*(char *)(param_1 + 0x21d) != '\0') {
          _printk(&DAT_001042c7,"charger_policy_status_runchging",local_3c,uVar5);
        }
        if (iVar2 < (int)uVar5) goto LAB_001020d4;
        puVar4 = &DAT_0010527c;
      }
      else {
        _printk(&DAT_00103e29,"charger_policy_status_runchging",*(undefined1 *)(param_1 + 0x219),
                *(undefined1 *)(param_1 + 0x21a),*(undefined1 *)(param_1 + 0x21b),
                *(undefined1 *)(param_1 + 0x21c));
        if (*(char *)(param_1 + 0x219) != '\0') goto LAB_00102090;
LAB_001020d4:
        iVar2 = local_3c;
        if ((*(char *)(param_1 + 0x21a) == '\0') || (*(char *)(param_1 + 0x21b) == '\0'))
        goto LAB_00102254;
        if (*(char *)(param_1 + 0x21c) == '\0') {
          uVar5 = *(int *)(param_1 + 0x198) + *(int *)(param_1 + 0x1a8);
        }
        else {
          uVar5 = *(uint *)(param_1 + 0x198);
          if (*(int *)(param_1 + 0x1f0) != 0) {
            uVar5 = *(int *)(param_1 + 0x19c) + uVar5 >> 1;
          }
        }
        if (*(char *)(param_1 + 0x21d) != '\0') {
          _printk(&DAT_0010395d,"charger_policy_status_runchging",local_3c,uVar5);
        }
        if (iVar2 < (int)uVar5) goto LAB_00102254;
        puVar4 = &DAT_00103bb4;
      }
      _printk(puVar4,"charger_policy_status_runchging",iVar2,uVar5);
      uVar1 = *(undefined4 *)(param_1 + 0x1ec);
      *(undefined4 *)(param_1 + 0x1ec) = 2;
      *(undefined4 *)(param_1 + 0x1f0) = uVar1;
      charger_policy_ctrl_charging_enable(param_1,0,0);
      goto LAB_00102254;
    }
    puVar4 = &DAT_00103b87;
  }
  else {
    ktime_get_with_offset(0);
    lVar3 = ns_to_timespec64();
    if (*(char *)(param_1 + 0x21d) != '\0') {
      _printk(&DAT_00103e89,"charger_policy_status_runchging",lVar3,*(long *)(param_1 + 0x208),
              lVar3 - *(long *)(param_1 + 0x208),*(undefined4 *)(param_1 + 0x1f8));
    }
    if ((ulong)(lVar3 - *(long *)(param_1 + 0x208)) <= (ulong)*(uint *)(param_1 + 0x1f8))
    goto LAB_0010205c;
    uVar1 = *(undefined4 *)(param_1 + 0x1ec);
    puVar4 = &DAT_0010470d;
    *(undefined4 *)(param_1 + 0x1ec) = 3;
    *(undefined4 *)(param_1 + 0x1f0) = uVar1;
  }
  _printk(puVar4,"charger_policy_status_runchging");
LAB_00102254:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) != local_38) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return 0;
}



/* 0010228c charger_policy_status_rundischging */

undefined8 charger_policy_status_rundischging(long param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  long lVar5;
  ulong uVar6;
  undefined8 uVar7;
  uint uVar8;
  int local_4c;
  long local_48;
  
  lVar5 = sp_el0;
  local_48 = *(long *)(lVar5 + 0x710);
  local_4c = 0;
  if (*(char *)(param_1 + 0x21c) != '\0') {
    ktime_get_with_offset(0);
    lVar5 = ns_to_timespec64();
    if (*(char *)(param_1 + 0x21d) != '\0') {
      _printk(&DAT_00103e89,"charger_policy_status_rundischging",lVar5,*(long *)(param_1 + 0x208),
              lVar5 - *(long *)(param_1 + 0x208),*(undefined4 *)(param_1 + 0x1f8));
    }
    if ((ulong)*(uint *)(param_1 + 0x1f8) < (ulong)(lVar5 - *(long *)(param_1 + 0x208))) {
      *(undefined4 *)(param_1 + 0x1f0) = *(undefined4 *)(param_1 + 0x1ec);
      *(undefined4 *)(param_1 + 0x1ec) = 3;
      _printk(&DAT_0010470d,"charger_policy_status_rundischging");
      goto LAB_00102494;
    }
  }
  iVar4 = charger_policy_get_prop_by_name(*(undefined8 *)(param_1 + 0x1b8),0x2f,&local_4c);
  if (iVar4 < 0) {
    _printk(&DAT_00103b87,"charger_policy_status_rundischging");
  }
  else {
    if ((*(char *)(param_1 + 0x21a) == '\0') || (*(char *)(param_1 + 0x21b) == '\0')) {
      uVar8 = 0;
      iVar4 = 0;
    }
    else {
      iVar1 = *(int *)(param_1 + 0x198);
      iVar4 = iVar1;
      if (*(char *)(param_1 + 0x21c) == '\0') {
        iVar4 = *(int *)(param_1 + 0x1a8) + iVar1;
      }
      uVar8 = (uint)(*(int *)(param_1 + 0x19c) + iVar1) >> 1;
      if (*(char *)(param_1 + 0x21d) != '\0') {
        _printk(&DAT_00105412,"charger_policy_status_rundischging",local_4c,iVar4,uVar8);
      }
    }
    iVar1 = local_4c;
    if (*(char *)(param_1 + 0x219) == '\0') {
      if (iVar4 <= local_4c) goto LAB_00102474;
    }
    else {
      iVar2 = *(int *)(param_1 + 0x1a0);
      iVar4 = iVar2;
      if (*(char *)(param_1 + 0x21c) == '\0') {
        iVar4 = *(int *)(param_1 + 0x1a8) + iVar2;
      }
      iVar3 = *(int *)(param_1 + 0x1a4);
      if (*(char *)(param_1 + 0x21d) != '\0') {
        _printk(&DAT_001043d1,"charger_policy_status_rundischging",local_4c,iVar4);
      }
      if (iVar4 <= iVar1) {
LAB_00102474:
        iVar4 = charger_policy_ctrl_charging_enable(param_1,0,0);
        if (iVar4 == 0) {
          _printk(&DAT_00103d28,"charger_policy_status_rundischging");
          alarm_try_to_cancel(param_1 + 0x28);
        }
        goto LAB_00102488;
      }
      uVar8 = (uint)(iVar3 + iVar2) >> 1;
    }
    if (iVar1 <= (int)uVar8) {
      charger_policy_ctrl_charging_enable(param_1,0,1);
    }
  }
LAB_00102488:
  uVar6 = charger_policy_check_soc_reach_min(param_1);
  if ((uVar6 & 1) != 0) {
    ktime_get_with_offset(0);
    uVar7 = ns_to_timespec64();
    *(undefined4 *)(param_1 + 0x1f0) = *(undefined4 *)(param_1 + 0x1ec);
    *(undefined4 *)(param_1 + 0x1ec) = 1;
    _printk(&DAT_00103fcc,"charger_policy_status_rundischging");
    charger_policy_ctrl_charging_enable(param_1,1,1);
    *(undefined8 *)(param_1 + 0x208) = uVar7;
    _printk(&DAT_00104d91,"charger_policy_status_rundischging",uVar7);
  }
LAB_00102494:
  lVar5 = sp_el0;
  if (*(long *)(lVar5 + 0x710) == local_48) {
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00102554 charger_policy_status_forcedischging */

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



/* 001025f0 charger_policy_check_soc_reach_min */

void charger_policy_check_soc_reach_min(long param_1)

{
  long lVar1;
  int iVar2;
  int iVar3;
  undefined8 uVar4;
  undefined *puVar5;
  int local_3c;
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_3c = 0;
  iVar3 = charger_policy_get_prop_by_name(*(undefined8 *)(param_1 + 0x1b8),0x2f,&local_3c);
  if (iVar3 < 0) {
    _printk(&DAT_00103b87,"charger_policy_check_soc_reach_min");
    uVar4 = 0;
    goto LAB_001026a4;
  }
  if (*(char *)(param_1 + 0x21d) == '\0') {
    if (*(char *)(param_1 + 0x219) == '\0') goto LAB_00102668;
LAB_00102640:
    iVar2 = local_3c;
    iVar3 = *(int *)(param_1 + 0x1a4);
    if (*(char *)(param_1 + 0x21c) == '\0') {
      iVar3 = iVar3 - *(int *)(param_1 + 0x1a8);
    }
    if (*(char *)(param_1 + 0x21d) != '\0') {
      _printk(&DAT_001043d1,"charger_policy_check_soc_reach_min",local_3c,iVar3);
    }
    if (iVar3 < iVar2) goto LAB_00102668;
    puVar5 = &DAT_00105462;
LAB_00102790:
    _printk(puVar5,"charger_policy_check_soc_reach_min",iVar2,iVar3);
    uVar4 = 1;
  }
  else {
    _printk(&DAT_00103e29,"charger_policy_check_soc_reach_min",*(undefined1 *)(param_1 + 0x219),
            *(undefined1 *)(param_1 + 0x21a),*(undefined1 *)(param_1 + 0x21b),
            *(undefined1 *)(param_1 + 0x21c));
    if (*(char *)(param_1 + 0x219) != '\0') goto LAB_00102640;
LAB_00102668:
    iVar2 = local_3c;
    if ((*(char *)(param_1 + 0x21a) != '\0') && (*(char *)(param_1 + 0x21b) != '\0')) {
      iVar3 = *(int *)(param_1 + 0x19c);
      if (*(char *)(param_1 + 0x21c) == '\0') {
        iVar3 = iVar3 - *(int *)(param_1 + 0x1a8);
      }
      if (*(char *)(param_1 + 0x21d) != '\0') {
        _printk(&DAT_00103d66,"charger_policy_check_soc_reach_min",local_3c,iVar3);
      }
      if (iVar2 <= iVar3) {
        puVar5 = &DAT_00103d9a;
        goto LAB_00102790;
      }
    }
    uVar4 = 0;
  }
LAB_001026a4:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) != local_38) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar4);
  }
  return;
}



/* 001027a4 zte_charger_policy_get_prop_by_name */

void zte_charger_policy_get_prop_by_name(long param_1,undefined4 param_2,undefined4 *param_3)

{
  int iVar1;
  long lVar2;
  undefined8 local_40;
  long local_38;
  
  lVar2 = sp_el0;
  local_38 = *(long *)(lVar2 + 0x710);
  local_40 = 0;
  if (param_1 == 0) {
    _printk(&DAT_001040ec,"zte_charger_policy_get_prop_by_name");
    iVar1 = -0x16;
  }
  else {
    lVar2 = zte_power_supply_get_by_name();
    if (lVar2 == 0) {
      _printk(&DAT_00105126,"zte_charger_policy_get_prop_by_name",param_1);
      iVar1 = -0x13;
    }
    else {
      iVar1 = zte_power_supply_get_property(lVar2,param_2,&local_40);
      if (iVar1 < 0) {
        _printk(&DAT_00104f5d,"zte_charger_policy_get_prop_by_name",param_2,param_1);
      }
      else {
        *param_3 = (undefined4)local_40;
        zte_power_supply_put(lVar2);
        iVar1 = 0;
      }
    }
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar1);
}



/* 001028a4 zte_charger_policy_set_prop_by_name */

int zte_charger_policy_set_prop_by_name(long param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  long lVar2;
  undefined8 local_40;
  long local_38;
  
  lVar2 = sp_el0;
  local_38 = *(long *)(lVar2 + 0x710);
  local_40 = 0;
  if (param_1 == 0) {
    _printk(&DAT_001040ec,"zte_charger_policy_set_prop_by_name");
    iVar1 = -0x16;
  }
  else {
    lVar2 = zte_power_supply_get_by_name();
    if (lVar2 == 0) {
      _printk(&DAT_00105126,"zte_charger_policy_set_prop_by_name",param_1);
      iVar1 = -0x13;
    }
    else {
      local_40 = CONCAT44(local_40._4_4_,param_3);
      iVar1 = zte_power_supply_set_property(lVar2,param_2,&local_40);
      if (iVar1 < 0) {
        _printk(&DAT_00104130,"zte_charger_policy_set_prop_by_name",param_2,param_1);
      }
      zte_power_supply_put(lVar2);
    }
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_38) {
    return iVar1;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010299c policy_psy_get_property */

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



/* 00102aa8 policy_psy_set_property */

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



/* 00102b78 policy_property_is_writeable */

bool policy_property_is_writeable(undefined8 param_1,int param_2)

{
  return param_2 - 3U < 3;
}



/* 00102b8c policy_external_power_changed */

void policy_external_power_changed(void)

{
  return;
}



/* 00102b94 charger_policy_demo_sts_set */

void charger_policy_demo_sts_set(char *param_1,long param_2)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  uint local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  if (param_2 == 0) {
    _printk(&DAT_001044c9,"charger_policy_demo_sts_set");
  }
  else {
    iVar2 = sscanf(param_1,"%d",&local_2c);
    if (iVar2 == 1) {
      local_2c = (uint)(local_2c != 0);
      _printk(&DAT_00104185,"charger_policy_demo_sts_set");
      if (local_2c != *(byte *)(param_2 + 0x219)) {
        _printk(&DAT_00105314,"charger_policy_demo_sts_set");
        *(char *)(param_2 + 0x219) = (char)local_2c;
        if ((char)local_2c == '\0') {
          if (*(long *)(param_2 + 0x1e0) != 0) {
            __pm_stay_awake();
          }
          charger_policy_status_disable(param_2);
          if (*(long *)(param_2 + 0x1e0) != 0) {
            __pm_relax();
          }
        }
        queue_delayed_work_on(0x20,*(undefined8 *)(param_2 + 0xa0),param_2 + 0xa8,0x19);
      }
      uVar3 = 0;
      goto LAB_00102bdc;
    }
  }
  uVar3 = 0xffffffea;
LAB_00102bdc:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar3);
}



/* 00102cb8 charger_policy_demo_sts_get */

undefined8 charger_policy_demo_sts_get(char *param_1,long param_2)

{
  char cVar1;
  undefined8 uVar2;
  char cVar3;
  
  if (param_2 == 0) {
    _printk(&DAT_001044c9,"charger_policy_demo_sts_get");
    uVar2 = 0xb;
    builtin_strncpy(param_1,"arg is null",0xc);
  }
  else {
    _printk(&DAT_001054c8,"charger_policy_demo_sts_get",*(undefined1 *)(param_2 + 0x219));
    cVar1 = *(char *)(param_2 + 0x219);
    uVar2 = 1;
    param_1[1] = '\0';
    cVar3 = '0';
    if (cVar1 != '\0') {
      cVar3 = '1';
    }
    *param_1 = cVar3;
  }
  return uVar2;
}



/* 00102d54 charger_policy_status_disable */

void charger_policy_status_disable(long param_1)

{
  charger_policy_ctrl_charging_enable(param_1,1,1);
  *(undefined1 *)(param_1 + 0x21b) = 0;
  *(undefined8 *)(param_1 + 0x208) = 0;
  *(undefined8 *)(param_1 + 0x1ec) = 0;
  charger_policy_disable_cas(param_1,0);
  return;
}



/* 00102da4 charger_policy_expired_sts_get */

undefined8 charger_policy_expired_sts_get(char *param_1,long param_2)

{
  char cVar1;
  char cVar2;
  
  if (param_2 != 0) {
    cVar1 = *(char *)(param_2 + 0x21b);
    param_1[1] = '\0';
    cVar2 = '0';
    if (cVar1 != '\0') {
      cVar2 = '1';
    }
    *param_1 = cVar2;
    return 1;
  }
  _printk(&DAT_001044c9,"charger_policy_expired_sts_get");
  builtin_strncpy(param_1,"arg is null",0xc);
  return 0xb;
}



/* 00102e28 charger_policy_expired_sec_set */

void charger_policy_expired_sec_set(char *param_1,long param_2)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  undefined4 local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  if (param_2 == 0) {
    _printk(&DAT_001044c9,"charger_policy_expired_sec_set");
  }
  else {
    iVar2 = sscanf(param_1,"%d",&local_2c);
    if (iVar2 == 1) {
      *(undefined4 *)(param_2 + 500) = local_2c;
      _printk(&DAT_00104b37,"charger_policy_expired_sec_set");
      uVar3 = 0;
      goto LAB_00102e70;
    }
  }
  uVar3 = 0xffffffea;
LAB_00102e70:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar3);
}



/* 00102edc charger_policy_expired_sec_get */

int charger_policy_expired_sec_get(char *param_1,long param_2)

{
  int iVar1;
  
  if (param_2 == 0) {
    _printk(&DAT_001044c9,"charger_policy_expired_sec_get");
    iVar1 = 0xb;
    builtin_strncpy(param_1,"arg is null",0xc);
  }
  else {
    _printk(&DAT_001048e2,"charger_policy_expired_sec_get",*(undefined4 *)(param_2 + 500));
    iVar1 = snprintf(param_1,0x1000,"%u",(ulong)*(uint *)(param_2 + 500));
  }
  return iVar1;
}



/* 00102f78 charger_policy_force_disching_sec_set */

void charger_policy_force_disching_sec_set(char *param_1,long param_2)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  undefined4 local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  if (param_2 == 0) {
    _printk(&DAT_001044c9,"charger_policy_force_disching_sec_set");
  }
  else {
    iVar2 = sscanf(param_1,"%d",&local_2c);
    if (iVar2 == 1) {
      *(undefined4 *)(param_2 + 0x1f8) = local_2c;
      _printk(&DAT_00103f32,"charger_policy_force_disching_sec_set");
      uVar3 = 0;
      goto LAB_00102fc0;
    }
  }
  uVar3 = 0xffffffea;
LAB_00102fc0:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar3);
}



/* 0010302c charger_policy_force_disching_sec_get */

int charger_policy_force_disching_sec_get(char *param_1,long param_2)

{
  int iVar1;
  
  if (param_2 == 0) {
    _printk(&DAT_001044c9,"charger_policy_force_disching_sec_get");
    iVar1 = 0xb;
    builtin_strncpy(param_1,"arg is null",0xc);
  }
  else {
    _printk(&DAT_0010490d,"charger_policy_force_disching_sec_get",*(undefined4 *)(param_2 + 0x1f8));
    iVar1 = snprintf(param_1,0x1000,"%u",(ulong)*(uint *)(param_2 + 0x1f8));
  }
  return iVar1;
}



/* 001030c8 charger_policy_cap_min_set */

void charger_policy_cap_min_set(char *param_1,long param_2)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  undefined4 local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  if (param_2 == 0) {
    _printk(&DAT_001044c9,"charger_policy_cap_min_set");
  }
  else {
    iVar2 = sscanf(param_1,"%d",&local_2c);
    if (iVar2 == 1) {
      *(undefined4 *)(param_2 + 0x1a4) = local_2c;
      *(undefined4 *)(param_2 + 0x19c) = local_2c;
      _printk(&DAT_00103f63,"charger_policy_cap_min_set");
      uVar3 = 0;
      goto LAB_00103110;
    }
  }
  uVar3 = 0xffffffea;
LAB_00103110:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar3);
}



/* 00103180 charger_policy_cap_min_get */

int charger_policy_cap_min_get(char *param_1,long param_2)

{
  int iVar1;
  
  if (param_2 == 0) {
    _printk(&DAT_001044c9,"charger_policy_cap_min_get");
    iVar1 = 0xb;
    builtin_strncpy(param_1,"arg is null",0xc);
  }
  else {
    iVar1 = snprintf(param_1,0x1000,"%u",(ulong)*(uint *)(param_2 + 0x19c));
  }
  return iVar1;
}



/* 001031fc charger_policy_cap_max_set */

void charger_policy_cap_max_set(char *param_1,long param_2)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  undefined4 local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  if (param_2 == 0) {
    _printk(&DAT_001044c9,"charger_policy_cap_max_set");
  }
  else {
    iVar2 = sscanf(param_1,"%d",&local_2c);
    if (iVar2 == 1) {
      *(undefined4 *)(param_2 + 0x1a8) = 0;
      *(undefined4 *)(param_2 + 0x1a0) = local_2c;
      *(undefined4 *)(param_2 + 0x198) = local_2c;
      _printk(&DAT_001038b0,"charger_policy_cap_max_set");
      uVar3 = 0;
      goto LAB_00103244;
    }
  }
  uVar3 = 0xffffffea;
LAB_00103244:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar3);
}



/* 001032b8 charger_policy_cap_max_get */

int charger_policy_cap_max_get(char *param_1,long param_2)

{
  int iVar1;
  
  if (param_2 == 0) {
    _printk(&DAT_001044c9,"charger_policy_cap_max_get");
    iVar1 = 0xb;
    builtin_strncpy(param_1,"arg is null",0xc);
  }
  else {
    iVar1 = snprintf(param_1,0x1000,"%u",(ulong)*(uint *)(param_2 + 0x198));
  }
  return iVar1;
}



/* 00103334 charger_policy_enable_status_set */

void charger_policy_enable_status_set(char *param_1,long param_2)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  int local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  if (param_2 == 0) {
    _printk(&DAT_001044c9,"charger_policy_enable_status_set");
  }
  else {
    iVar2 = sscanf(param_1,"%d",&local_2c);
    if (iVar2 == 1) {
      *(uint *)(param_2 + 0x1e8) = (uint)(local_2c == 0);
      _printk(&DAT_00103a56,"charger_policy_enable_status_set");
      uVar3 = 0;
      goto LAB_0010337c;
    }
  }
  uVar3 = 0xffffffea;
LAB_0010337c:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar3);
}



/* 001033f0 charger_policy_enable_status_get */

int charger_policy_enable_status_get(char *param_1,long param_2)

{
  int iVar1;
  
  if (param_2 == 0) {
    _printk(&DAT_001044c9,"charger_policy_enable_status_get");
    iVar1 = 0xb;
    builtin_strncpy(param_1,"arg is null",0xc);
  }
  else {
    iVar1 = snprintf(param_1,0x1000,"%u",(ulong)(*(int *)(param_2 + 0x1e8) == 0));
  }
  return iVar1;
}



/* 00103474 init_module */

void init_module(void)

{
  __platform_driver_register(&charger_policy_driver,&__this_module);
  return;
}



/* 001034a4 cleanup_module */

void cleanup_module(void)

{
  platform_driver_unregister(&charger_policy_driver);
  return;
}



