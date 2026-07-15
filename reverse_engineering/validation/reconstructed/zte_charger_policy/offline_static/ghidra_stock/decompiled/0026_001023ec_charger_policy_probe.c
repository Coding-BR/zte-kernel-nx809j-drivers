
undefined4 charger_policy_probe(long param_1)

{
  long *plVar1;
  int iVar2;
  uint uVar3;
  long *plVar4;
  long lVar5;
  char *pcVar6;
  undefined *puVar7;
  undefined4 uVar8;
  undefined8 uVar9;
  
  _printk(&DAT_00104b5d,"charger_policy_probe");
  iVar2 = zte_poweroff_charging_status();
  if (iVar2 != 0) {
    uVar8 = 0;
    puVar7 = &DAT_00103dce;
    goto LAB_00102b68;
  }
  plVar4 = (long *)devm_kmalloc(param_1 + 0x10,0x220,0xdc0);
  if (plVar4 == (long *)0x0) {
    uVar8 = 0xfffffff4;
    puVar7 = &DAT_001054ca;
    goto LAB_00102b68;
  }
  uVar9 = *(undefined8 *)(param_1 + 0x2f8);
  *plVar4 = param_1 + 0x10;
  plVar1 = plVar4 + 0x30;
  *(long **)(param_1 + 0xa8) = plVar4;
  uVar3 = of_property_read_variable_u32_array(uVar9,"policy,enable",plVar1,1,0);
  uVar3 = uVar3 & (int)uVar3 >> 0x1f;
  if (uVar3 != 0) {
    if (uVar3 == 0xffffffea) {
      *(undefined4 *)plVar1 = 0;
    }
    else {
      _printk(&DAT_001052f7,"charger_policy_parse_dt");
    }
  }
  _printk(&DAT_00104736,"charger_policy_parse_dt",(int)plVar4[0x30]);
  uVar3 = of_property_read_variable_u32_array(uVar9,"policy,retry-times",plVar4 + 0x32,1,0);
  uVar3 = uVar3 & (int)uVar3 >> 0x1f;
  if (uVar3 != 0) {
    if (uVar3 == 0xffffffea) {
      *(undefined4 *)(plVar4 + 0x32) = 10;
    }
    else {
      _printk(&DAT_00104400,"charger_policy_parse_dt");
    }
  }
  _printk(&DAT_00105330,"charger_policy_parse_dt",(int)plVar4[0x32]);
  uVar3 = of_property_read_variable_u32_array
                    (uVar9,"policy,expired-mode-enable",(undefined4 *)((long)plVar4 + 0x184),1,0);
  uVar3 = uVar3 & (int)uVar3 >> 0x1f;
  if (uVar3 != 0) {
    if (uVar3 == 0xffffffea) {
      *(undefined4 *)((long)plVar4 + 0x184) = 1;
    }
    else {
      _printk(&DAT_00103d1e,"charger_policy_parse_dt");
    }
  }
  _printk(&DAT_00103986,"charger_policy_parse_dt",*(undefined4 *)((long)plVar4 + 0x184));
  uVar3 = of_property_read_variable_u32_array(uVar9,"policy,low-temp-enable",plVar4 + 0x31,1,0);
  uVar3 = uVar3 & (int)uVar3 >> 0x1f;
  if (uVar3 != 0) {
    if (uVar3 == 0xffffffea) {
      *(undefined4 *)(plVar4 + 0x31) = 0;
    }
    else {
      _printk(&DAT_00105366,"charger_policy_parse_dt");
    }
  }
  _printk(&DAT_00105947,"charger_policy_parse_dt",(int)plVar4[0x31]);
  uVar3 = of_property_read_variable_u32_array
                    (uVar9,"policy,have-power-path",(undefined4 *)((long)plVar4 + 0x18c),1,0);
  uVar3 = uVar3 & (int)uVar3 >> 0x1f;
  if (uVar3 != 0) {
    if (uVar3 == 0xffffffea) {
      *(undefined4 *)((long)plVar4 + 0x18c) = 1;
    }
    else {
      _printk(&DAT_00104f55,"charger_policy_parse_dt");
    }
  }
  _printk(&DAT_00104f97,"charger_policy_parse_dt",*(undefined4 *)((long)plVar4 + 0x18c));
  uVar3 = of_property_read_variable_u32_array
                    (uVar9,"policy,timeout-seconds",(undefined4 *)((long)plVar4 + 0x194),1,0);
  uVar3 = uVar3 & (int)uVar3 >> 0x1f;
  if (uVar3 != 0) {
    if (uVar3 == 0xffffffea) {
      *(undefined4 *)((long)plVar4 + 0x194) = 0x15180;
    }
    else {
      _printk(&DAT_0010520c,"charger_policy_parse_dt");
    }
  }
  _printk(&DAT_00103eb9,"charger_policy_parse_dt",*(undefined4 *)((long)plVar4 + 0x194));
  uVar3 = of_property_read_variable_u32_array(uVar9,"policy,expired-max-capacity",plVar4 + 0x33,1,0)
  ;
  uVar3 = uVar3 & (int)uVar3 >> 0x1f;
  if (uVar3 != 0) {
    if (uVar3 == 0xffffffea) {
      *(undefined4 *)(plVar4 + 0x33) = 0x46;
    }
    else {
      _printk(&DAT_00103fa9,"charger_policy_parse_dt");
    }
  }
  _printk(&DAT_001049be,"charger_policy_parse_dt",(int)plVar4[0x33]);
  uVar3 = of_property_read_variable_u32_array
                    (uVar9,"policy,expired-min-capacity",(undefined4 *)((long)plVar4 + 0x19c),1,0);
  uVar3 = uVar3 & (int)uVar3 >> 0x1f;
  if (uVar3 != 0) {
    if (uVar3 == 0xffffffea) {
      *(undefined4 *)((long)plVar4 + 0x19c) = 0x32;
    }
    else {
      _printk(&DAT_0010469f,"charger_policy_parse_dt");
    }
  }
  _printk(&DAT_0010551b,"charger_policy_parse_dt",*(undefined4 *)((long)plVar4 + 0x19c));
  uVar3 = of_property_read_variable_u32_array(uVar9,"policy,demo-max-capacity",plVar4 + 0x34,1,0);
  uVar3 = uVar3 & (int)uVar3 >> 0x1f;
  if (uVar3 != 0) {
    if (uVar3 == 0xffffffea) {
      *(undefined4 *)(plVar4 + 0x34) = 0x46;
    }
    else {
      _printk(&DAT_001040e4,"charger_policy_parse_dt");
    }
  }
  _printk(&DAT_00103ef3,"charger_policy_parse_dt",(int)plVar4[0x34]);
  uVar3 = of_property_read_variable_u32_array
                    (uVar9,"policy,demo-min-capacity",(undefined4 *)((long)plVar4 + 0x1a4),1,0);
  uVar3 = uVar3 & (int)uVar3 >> 0x1f;
  if (uVar3 != 0) {
    if (uVar3 == 0xffffffea) {
      *(undefined4 *)((long)plVar4 + 0x1a4) = 0x32;
    }
    else {
      _printk(&DAT_00104fd1,"charger_policy_parse_dt");
    }
  }
  _printk(&DAT_00104e4b,"charger_policy_parse_dt",*(undefined4 *)((long)plVar4 + 0x1a4));
  uVar3 = of_property_read_variable_u32_array
                    (uVar9,"policy,no-powerpath-delta-capacity",plVar4 + 0x35,1,0);
  uVar3 = uVar3 & (int)uVar3 >> 0x1f;
  if (uVar3 != 0) {
    if (uVar3 == 0xffffffea) {
      *(undefined4 *)(plVar4 + 0x35) = 10;
    }
    else {
      _printk(&DAT_001045af,"charger_policy_parse_dt");
    }
  }
  _printk(&DAT_0010443e,"charger_policy_parse_dt",(int)plVar4[0x35]);
  iVar2 = of_property_read_string(uVar9,"policy,battery-phy-name",plVar4 + 0x37);
  if (iVar2 == -0x16) {
    pcVar6 = "battery";
    plVar4[0x37] = (long)"battery";
LAB_00102914:
    _printk(&DAT_00104642,"charger_policy_parse_dt",pcVar6);
    iVar2 = of_property_read_string(uVar9,"policy,zte-battery-phy-name",plVar4 + 0x38);
    if (iVar2 == -0x16) {
      pcVar6 = "zte_battery";
      plVar4[0x38] = (long)"zte_battery";
    }
    else {
      if (iVar2 != 0) {
        puVar7 = &DAT_00104128;
        goto LAB_00102a94;
      }
      pcVar6 = (char *)plVar4[0x38];
    }
    _printk(&DAT_0010485d,"charger_policy_parse_dt",pcVar6);
    iVar2 = of_property_read_string(uVar9,"policy,zte-usb-phy-name",plVar4 + 0x39);
    if (iVar2 == -0x16) {
      pcVar6 = "zte_usb";
      plVar4[0x39] = (long)"zte_usb";
    }
    else {
      if (iVar2 != 0) {
        puVar7 = &DAT_00105087;
        goto LAB_00102a94;
      }
      pcVar6 = (char *)plVar4[0x39];
    }
    _printk(&DAT_001049fd,"charger_policy_parse_dt",pcVar6);
    iVar2 = of_property_read_string(uVar9,"policy,interface-phy-name",plVar4 + 0x36);
    if (iVar2 == -0x16) {
      pcVar6 = "interface";
      plVar4[0x36] = (long)"interface";
    }
    else {
      if (iVar2 != 0) {
        puVar7 = &DAT_00104177;
        goto LAB_00102a94;
      }
      pcVar6 = (char *)plVar4[0x36];
    }
    _printk(&DAT_00104484,"charger_policy_parse_dt",pcVar6);
    iVar2 = of_property_read_string(uVar9,"policy,cas-phy-name",plVar4 + 0x3a);
    if (iVar2 == -0x16) {
      puVar7 = &DAT_00103c23;
      plVar4[0x3a] = (long)&DAT_00103c23;
    }
    else {
      if (iVar2 != 0) {
        puVar7 = &DAT_00103f2f;
        goto LAB_00102a94;
      }
      puVar7 = (undefined *)plVar4[0x3a];
    }
    _printk(&DAT_00103e24,"charger_policy_parse_dt",puVar7);
LAB_00102ab4:
    if ((int)*plVar1 != 0) {
      lVar5 = alloc_workqueue(&DAT_00104590,0x6000a,1,"policy_probe_wq");
      plVar4[0x22] = lVar5;
      plVar4[0x23] = 0xfffffffe00000;
      plVar4[0x24] = (long)(plVar4 + 0x24);
      plVar4[0x25] = (long)(plVar4 + 0x24);
      plVar4[0x26] = (long)charger_policy_probe_work;
      init_timer_key(plVar4 + 0x27,&delayed_work_timer_fn,0x200000,0,0);
      queue_delayed_work_on(0x20,plVar4[0x22],plVar4 + 0x23,0x4e2);
      uVar8 = 0;
      puVar7 = &DAT_001051d7;
      goto LAB_00102b68;
    }
    puVar7 = &DAT_001043bb;
  }
  else {
    if (iVar2 == 0) {
      pcVar6 = (char *)plVar4[0x37];
      goto LAB_00102914;
    }
    puVar7 = &DAT_00104cf1;
LAB_00102a94:
    _printk(puVar7,"charger_policy_parse_dt",iVar2);
    if (-1 < iVar2) goto LAB_00102ab4;
    puVar7 = &DAT_0010562c;
  }
  _printk(puVar7,"charger_policy_probe");
  devm_kfree(*plVar4,plVar4);
  uVar8 = 0;
  puVar7 = &DAT_00103bd9;
LAB_00102b68:
  _printk(puVar7,"charger_policy_probe");
  return uVar8;
}

