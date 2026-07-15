
void charger_policy_probe_work(long param_1)

{
  int iVar1;
  undefined8 uVar2;
  ulong uVar3;
  long lVar4;
  undefined *puVar5;
  undefined8 *puVar6;
  undefined8 *puVar7;
  undefined8 local_70;
  undefined8 local_68;
  undefined8 *local_60;
  undefined8 local_58;
  undefined8 local_50;
  undefined8 local_48;
  undefined8 uStack_40;
  long local_38;
  
  lVar4 = sp_el0;
  local_38 = *(long *)(lVar4 + 0x710);
  local_48 = 0;
  uStack_40 = 0;
  local_58 = 0;
  local_50 = 0;
  local_68 = 0;
  local_60 = (undefined8 *)0x0;
  local_70 = 0;
  _printk(&DAT_00105015,"charger_policy_probe_work");
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
  uVar2 = alloc_workqueue(&DAT_00104590,0x6000a,1,"charger-policy-service");
  *(undefined8 *)(param_1 + -0x70) = 0xfffffffe00000;
  *(undefined8 *)(param_1 + -0x78) = uVar2;
  *(long *)(param_1 + -0x68) = param_1 + -0x68;
  *(long *)(param_1 + -0x60) = param_1 + -0x68;
  puVar6 = (undefined8 *)(param_1 + -0x118);
  *(code **)(param_1 + -0x58) = charger_policy_timeout_handler_work;
  init_timer_key(param_1 + -0x50,&delayed_work_timer_fn,0x200000,0,0);
  if (puVar6 == (undefined8 *)0x0) {
    _printk(&DAT_0010477f,"charger_policy_probe_work");
LAB_00102ec0:
    devm_kfree(*puVar6,puVar6);
    puVar5 = &DAT_001058b5;
  }
  else {
    puVar7 = (undefined8 *)(param_1 + -0x108);
    *puVar7 = charger_policy_notifier_switch;
    iVar1 = power_supply_reg_notifier(puVar7);
    if (iVar1 < 0) {
      _printk(&DAT_001057ef,"charger_policy_register_notifier",iVar1);
      _printk(&DAT_0010477f,"charger_policy_probe_work");
LAB_00102e78:
      charger_policy_check_retry_probe_count = charger_policy_check_retry_probe_count + 1;
      if (charger_policy_check_retry_probe_count < *(uint *)(param_1 + 0x78)) {
        _printk(&DAT_00103e5b,"charger_policy_check_retry");
        queue_delayed_work_on(0x20,*(undefined8 *)(param_1 + -8),param_1,0x4e2);
        goto LAB_00102ee0;
      }
      goto LAB_00102ec0;
    }
    local_48 = 0;
    uStack_40 = 0;
    local_58 = 0;
    local_70 = 0;
    local_68 = 0;
    local_50 = 0;
    local_60 = puVar6;
    uVar3 = devm_power_supply_register(*puVar6,policy_psy_desc,&local_70);
    *(ulong *)(param_1 + -0x110) = uVar3;
    if (0xfffffffffffff000 < uVar3) {
      _printk(&DAT_001039c4,"charger_policy_probe_work",uVar3);
LAB_00102e70:
      power_supply_unreg_notifier(puVar7);
      goto LAB_00102e78;
    }
    zte_misc_register_callback(demo_charging_policy_node,puVar6);
    zte_misc_register_callback(expired_charging_policy_node,puVar6);
    zte_misc_register_callback(charging_time_sec_node,puVar6);
    zte_misc_register_callback(force_disching_sec_node,puVar6);
    zte_misc_register_callback(policy_cap_min_node,puVar6);
    zte_misc_register_callback(policy_cap_max_node,puVar6);
    zte_misc_register_callback(policy_enable_node,puVar6);
    lVar4 = wakeup_source_register(*puVar6,"charger_policy_service");
    *(long *)(param_1 + 200) = lVar4;
    if (lVar4 == 0) {
      _printk(&DAT_0010558c,"charger_policy_probe_work");
      goto LAB_00102e70;
    }
    queue_delayed_work_on
              (0x20,*(undefined8 *)(param_1 + -0x78),(undefined8 *)(param_1 + -0x70),0x19);
    puVar5 = &DAT_0010489c;
  }
  _printk(puVar5,"charger_policy_probe_work");
LAB_00102ee0:
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

