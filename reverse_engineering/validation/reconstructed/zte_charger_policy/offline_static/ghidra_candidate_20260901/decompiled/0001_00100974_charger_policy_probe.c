
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

