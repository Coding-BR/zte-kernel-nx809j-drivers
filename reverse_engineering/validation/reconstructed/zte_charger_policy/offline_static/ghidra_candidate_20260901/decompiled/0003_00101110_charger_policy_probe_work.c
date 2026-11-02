
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

