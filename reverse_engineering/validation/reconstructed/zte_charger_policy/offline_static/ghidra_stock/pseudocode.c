/* 00100a34 charger_policy_status_ide */

undefined8 charger_policy_status_ide(long param_1)

{
  undefined4 uVar1;
  long lVar2;
  long lVar3;
  
  if (*(char *)(param_1 + 0x21d) == '\x01') {
    _printk(&DAT_00105709,"charger_policy_status_ide",*(undefined1 *)(param_1 + 0x219),
            *(undefined1 *)(param_1 + 0x21a));
  }
  ktime_get_with_offset(1);
  lVar2 = ns_to_timespec64();
  if (*(char *)(param_1 + 0x219) == '\x01') {
    _printk(&DAT_00104c8d,"charger_policy_status_ide");
    charger_policy_disable_cas(param_1,1);
    uVar1 = *(undefined4 *)(param_1 + 0x1ec);
    *(undefined4 *)(param_1 + 0x1ec) = 1;
    *(undefined4 *)(param_1 + 0x1f0) = uVar1;
    *(long *)(param_1 + 0x208) = lVar2;
    _printk(&DAT_001047ea,"charger_policy_status_ide",lVar2);
  }
  else {
    lVar3 = *(long *)(param_1 + 0x208);
    if (lVar3 == 0) {
      *(long *)(param_1 + 0x208) = lVar2;
      _printk(&DAT_00103e8f,"charger_policy_status_ide",lVar2);
      lVar3 = *(long *)(param_1 + 0x208);
    }
    if (*(char *)(param_1 + 0x21d) == '\x01') {
      _printk(&DAT_00104aba,"charger_policy_status_ide",lVar2,lVar3,lVar2 - lVar3,
              *(undefined4 *)(param_1 + 500));
      lVar3 = *(long *)(param_1 + 0x208);
    }
    if ((long)(ulong)*(uint *)(param_1 + 500) <= lVar2 - lVar3) {
      _printk(&DAT_001044c1,"charger_policy_status_ide");
      charger_policy_disable_cas(param_1,1);
      uVar1 = *(undefined4 *)(param_1 + 0x1ec);
      *(undefined1 *)(param_1 + 0x21b) = 1;
      *(undefined4 *)(param_1 + 0x1ec) = 1;
      *(undefined4 *)(param_1 + 0x1f0) = uVar1;
    }
  }
  return 0;
}



/* 00100bc4 charger_policy_status_runchging */

undefined8 charger_policy_status_runchging(long param_1)

{
  undefined4 uVar1;
  int iVar2;
  long lVar3;
  undefined *puVar4;
  char *pcVar5;
  int iVar6;
  int local_3c;
  long local_38;
  
  lVar3 = sp_el0;
  local_38 = *(long *)(lVar3 + 0x710);
  if (*(char *)(param_1 + 0x21c) == '\x01') {
    ktime_get_with_offset(1);
    lVar3 = ns_to_timespec64();
    if (*(char *)(param_1 + 0x21d) == '\x01') {
      _printk(&DAT_0010586a,"charger_policy_check_force_discharging",lVar3,
              *(long *)(param_1 + 0x208),lVar3 - *(long *)(param_1 + 0x208),
              *(undefined4 *)(param_1 + 0x1f8));
    }
    if (lVar3 - *(long *)(param_1 + 0x208) <= (long)(ulong)*(uint *)(param_1 + 0x1f8))
    goto LAB_00100c24;
    uVar1 = *(undefined4 *)(param_1 + 0x1ec);
    puVar4 = &DAT_00104b03;
    *(undefined4 *)(param_1 + 0x1ec) = 3;
    *(undefined4 *)(param_1 + 0x1f0) = uVar1;
LAB_00100e1c:
    pcVar5 = "charger_policy_status_runchging";
  }
  else {
LAB_00100c24:
    charger_policy_ctrl_charging_enable(param_1,1,1);
    local_3c = 0;
    iVar2 = charger_policy_get_prop_by_name(*(undefined8 *)(param_1 + 0x1b8),0x2f,&local_3c);
    if (-1 < iVar2) {
      if (*(char *)(param_1 + 0x21d) == '\x01') {
        _printk(&DAT_00104067,"charger_policy_check_soc_reach_max",*(undefined1 *)(param_1 + 0x219),
                *(undefined1 *)(param_1 + 0x21a),*(undefined1 *)(param_1 + 0x21b),
                *(undefined1 *)(param_1 + 0x21c));
      }
      iVar2 = local_3c;
      if (*(char *)(param_1 + 0x219) == '\x01') {
        if ((*(byte *)(param_1 + 0x21c) & 1) == 0) {
          iVar6 = *(int *)(param_1 + 0x1a8) + *(int *)(param_1 + 0x1a0);
        }
        else {
          iVar6 = *(int *)(param_1 + 0x1a0);
          if (*(int *)(param_1 + 0x1f0) != 0) {
            iVar6 = *(int *)(param_1 + 0x1a4) + iVar6;
            if (iVar6 < 0) {
              iVar6 = iVar6 + 1;
            }
            iVar6 = iVar6 >> 1;
          }
        }
        if (*(char *)(param_1 + 0x21d) == '\x01') {
          _printk(&DAT_00103933,"charger_policy_check_soc_reach_max",local_3c,iVar6);
        }
        if (iVar2 < iVar6) goto LAB_00100cb4;
        puVar4 = &DAT_0010438a;
      }
      else {
LAB_00100cb4:
        iVar2 = local_3c;
        if ((*(char *)(param_1 + 0x21a) != '\x01') || (*(char *)(param_1 + 0x21b) != '\x01'))
        goto LAB_00100e28;
        if ((*(byte *)(param_1 + 0x21c) & 1) == 0) {
          iVar6 = *(int *)(param_1 + 0x1a8) + *(int *)(param_1 + 0x198);
        }
        else {
          iVar6 = *(int *)(param_1 + 0x198);
          if (*(int *)(param_1 + 0x1f0) != 0) {
            iVar6 = *(int *)(param_1 + 0x19c) + iVar6;
            if (iVar6 < 0) {
              iVar6 = iVar6 + 1;
            }
            iVar6 = iVar6 >> 1;
          }
        }
        if (*(char *)(param_1 + 0x21d) == '\x01') {
          _printk(&DAT_0010518e,"charger_policy_check_soc_reach_max",local_3c,iVar6);
        }
        if (iVar2 < iVar6) goto LAB_00100e28;
        puVar4 = &DAT_00104701;
      }
      _printk(puVar4,"charger_policy_check_soc_reach_max",iVar2,iVar6);
      uVar1 = *(undefined4 *)(param_1 + 0x1ec);
      *(undefined4 *)(param_1 + 0x1ec) = 2;
      *(undefined4 *)(param_1 + 0x1f0) = uVar1;
      charger_policy_ctrl_charging_enable(param_1,0,0);
      puVar4 = &DAT_00103adb;
      goto LAB_00100e1c;
    }
    puVar4 = &DAT_00103da1;
    pcVar5 = "charger_policy_check_soc_reach_max";
  }
  _printk(puVar4,pcVar5);
LAB_00100e28:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_38) {
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00100e88 charger_policy_status_rundischging */

undefined8 charger_policy_status_rundischging(long param_1)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  long lVar4;
  ulong uVar5;
  undefined8 uVar6;
  int iVar7;
  int local_3c;
  long local_38;
  
  lVar4 = sp_el0;
  local_38 = *(long *)(lVar4 + 0x710);
  if (*(char *)(param_1 + 0x21c) == '\x01') {
    ktime_get_with_offset(1);
    lVar4 = ns_to_timespec64();
    if (*(char *)(param_1 + 0x21d) == '\x01') {
      _printk(&DAT_0010586a,"charger_policy_check_force_discharging",lVar4,
              *(long *)(param_1 + 0x208),lVar4 - *(long *)(param_1 + 0x208),
              *(undefined4 *)(param_1 + 0x1f8));
    }
    if ((long)(ulong)*(uint *)(param_1 + 0x1f8) < lVar4 - *(long *)(param_1 + 0x208)) {
      *(undefined4 *)(param_1 + 0x1f0) = *(undefined4 *)(param_1 + 0x1ec);
      *(undefined4 *)(param_1 + 0x1ec) = 3;
      _printk(&DAT_00104b03,"charger_policy_status_rundischging");
      goto LAB_00101030;
    }
  }
  local_3c = 0;
  iVar3 = charger_policy_get_prop_by_name(*(undefined8 *)(param_1 + 0x1b8),0x2f,&local_3c);
  if (iVar3 < 0) {
    _printk(&DAT_00103da1,"charger_policy_select_discharging_mode");
  }
  else {
    if ((*(char *)(param_1 + 0x21a) == '\x01') && (*(char *)(param_1 + 0x21b) == '\x01')) {
      iVar7 = *(int *)(param_1 + 0x198);
      iVar3 = iVar7;
      if ((*(byte *)(param_1 + 0x21c) & 1) == 0) {
        iVar3 = *(int *)(param_1 + 0x1a8) + iVar7;
      }
      iVar7 = *(int *)(param_1 + 0x19c) + iVar7;
      if (iVar7 < 0) {
        iVar7 = iVar7 + 1;
      }
      iVar7 = iVar7 >> 1;
      if (*(char *)(param_1 + 0x21d) == '\x01') {
        _printk(&DAT_001042f5,"charger_policy_select_discharging_mode",local_3c,iVar3,iVar7);
      }
    }
    else {
      iVar7 = 0;
      iVar3 = 0;
    }
    iVar2 = local_3c;
    if ((*(byte *)(param_1 + 0x219) & 1) != 0) {
      iVar7 = *(int *)(param_1 + 0x1a0);
      iVar3 = iVar7;
      if ((*(byte *)(param_1 + 0x21c) & 1) == 0) {
        iVar3 = *(int *)(param_1 + 0x1a8) + iVar7;
      }
      iVar7 = *(int *)(param_1 + 0x1a4) + iVar7;
      if (iVar7 < 0) {
        iVar7 = iVar7 + 1;
      }
      iVar7 = iVar7 >> 1;
      if (*(char *)(param_1 + 0x21d) == '\x01') {
        _printk(&DAT_001052ab,"charger_policy_select_discharging_mode",local_3c,iVar3,iVar7);
      }
    }
    if (iVar2 < iVar3) {
      if (iVar2 <= iVar7) {
        charger_policy_ctrl_charging_enable(param_1,0,1);
      }
    }
    else {
      uVar5 = charger_policy_ctrl_charging_enable(param_1,0,0);
      if ((uVar5 & 1) == 0) {
        _printk(&DAT_00104837,"charger_policy_select_discharging_mode");
        alarm_try_to_cancel(param_1 + 0x28);
      }
    }
  }
  uVar5 = charger_policy_check_soc_reach_min(param_1);
  if ((uVar5 & 1) != 0) {
    ktime_get_with_offset(1);
    uVar6 = ns_to_timespec64();
    uVar1 = *(undefined4 *)(param_1 + 0x1ec);
    *(undefined4 *)(param_1 + 0x1ec) = 1;
    *(undefined4 *)(param_1 + 0x1f0) = uVar1;
    _printk(&DAT_001042a9,"charger_policy_status_rundischging");
    charger_policy_ctrl_charging_enable(param_1,1,1);
    *(undefined8 *)(param_1 + 0x208) = uVar6;
    _printk(&DAT_00104245,"charger_policy_status_rundischging",uVar6);
  }
LAB_00101030:
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) == local_38) {
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00101160 charger_policy_status_forcedischging */

undefined8 charger_policy_status_forcedischging(long param_1)

{
  undefined4 uVar1;
  ulong uVar2;
  undefined8 uVar3;
  
  uVar2 = charger_policy_ctrl_charging_enable(param_1,0,0);
  if ((uVar2 & 1) == 0) {
    alarm_try_to_cancel(param_1 + 0x28);
  }
  uVar2 = charger_policy_check_soc_reach_min(param_1);
  if ((uVar2 & 1) != 0) {
    ktime_get_with_offset(1);
    uVar3 = ns_to_timespec64();
    uVar1 = *(undefined4 *)(param_1 + 0x1ec);
    *(undefined4 *)(param_1 + 0x1ec) = 1;
    *(undefined4 *)(param_1 + 0x1f0) = uVar1;
    charger_policy_ctrl_charging_enable(param_1,1,1);
    *(undefined8 *)(param_1 + 0x208) = uVar3;
    _printk(&DAT_00104245,"charger_policy_status_forcedischging",uVar3);
  }
  return 0;
}



/* 00101208 charger_policy_timeout_alarm_cb */

undefined8 charger_policy_timeout_alarm_cb(long param_1)

{
  alarm_start_relative(param_1,*(long *)(param_1 + 0x1d8) * 1000000);
  if ((*(ulong *)(param_1 + 0x80) & 1) == 0) {
    queue_delayed_work_on(0x20,*(undefined8 *)(param_1 + 0x78),(ulong *)(param_1 + 0x80),0x19);
  }
  return 1;
}



/* 00101264 charger_policy_demo_sts_set */

void charger_policy_demo_sts_set(char *param_1,long param_2)

{
  long lVar1;
  undefined8 uVar2;
  uint local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  if (param_2 == 0) {
    _printk(&DAT_00104512,"charger_policy_demo_sts_set");
    uVar2 = 0xffffffea;
  }
  else {
    sscanf(param_1,"%d",&local_2c);
    local_2c = (uint)(local_2c != 0);
    _printk(&DAT_0010491f,"charger_policy_demo_sts_set");
    if (local_2c != *(byte *)(param_2 + 0x219)) {
      _printk(&DAT_00104b8f,"charger_policy_demo_sts_set");
      *(bool *)(param_2 + 0x219) = local_2c != 0;
      if (local_2c == 0) {
        __pm_stay_awake(*(undefined8 *)(param_2 + 0x1e0));
        charger_policy_status_disable(param_2);
        __pm_relax(*(undefined8 *)(param_2 + 0x1e0));
      }
      queue_delayed_work_on(0x20,*(undefined8 *)(param_2 + 0xa0),param_2 + 0xa8,0x19);
    }
    uVar2 = 0;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}



/* 00101378 charger_policy_status_disable */

void charger_policy_status_disable(long param_1)

{
  charger_policy_ctrl_charging_enable(param_1,1,1);
  *(undefined1 *)(param_1 + 0x21b) = 0;
  *(undefined8 *)(param_1 + 0x208) = 0;
  *(undefined8 *)(param_1 + 0x1ec) = 0;
  charger_policy_disable_cas(param_1,0);
  return;
}



/* 001013c8 charger_policy_demo_sts_get */

undefined8 charger_policy_demo_sts_get(char *param_1,long param_2)

{
  undefined8 uVar1;
  undefined2 uVar2;
  
  if (param_2 == 0) {
    _printk(&DAT_00104512,"charger_policy_demo_sts_get");
    uVar1 = 0xb;
    builtin_strncpy(param_1,"arg is null",0xc);
  }
  else {
    _printk(&DAT_001058ed,"charger_policy_demo_sts_get",*(undefined1 *)(param_2 + 0x219));
    if (*(char *)(param_2 + 0x219) == '\x01') {
      uVar2 = 0x31;
    }
    else {
      uVar2 = 0x30;
    }
    uVar1 = 1;
    *(undefined2 *)param_1 = uVar2;
  }
  return uVar1;
}



/* 0010146c charger_policy_expired_sts_get */

undefined8 charger_policy_expired_sts_get(char *param_1,long param_2)

{
  undefined2 uVar1;
  
  if (param_2 != 0) {
    if (*(char *)(param_2 + 0x21b) == '\x01') {
      uVar1 = 0x31;
    }
    else {
      uVar1 = 0x30;
    }
    *(undefined2 *)param_1 = uVar1;
    return 1;
  }
  _printk(&DAT_00104512,"charger_policy_expired_sts_get");
  builtin_strncpy(param_1,"arg is null",0xc);
  return 0xb;
}



/* 001014f4 charger_policy_expired_sec_set */

void charger_policy_expired_sec_set(char *param_1,long param_2)

{
  long lVar1;
  undefined8 uVar2;
  undefined4 local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  if (param_2 == 0) {
    _printk(&DAT_00104512,"charger_policy_expired_sec_set");
    uVar2 = 0xffffffea;
  }
  else {
    sscanf(param_1,"%d",&local_2c);
    *(undefined4 *)(param_2 + 500) = local_2c;
    _printk(&DAT_00104d69,"charger_policy_expired_sec_set");
    uVar2 = 0;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}



/* 0010159c charger_policy_expired_sec_get */

int charger_policy_expired_sec_get(char *param_1,long param_2)

{
  int iVar1;
  
  if (param_2 == 0) {
    _printk(&DAT_00104512,"charger_policy_expired_sec_get");
    iVar1 = 0xb;
    builtin_strncpy(param_1,"arg is null",0xc);
  }
  else {
    _printk(&DAT_00104d94,"charger_policy_expired_sec_get",*(undefined4 *)(param_2 + 500));
    iVar1 = snprintf(param_1,0x1000,"%u",(ulong)*(uint *)(param_2 + 500));
  }
  return iVar1;
}



/* 00101638 charger_policy_force_disching_sec_set */

void charger_policy_force_disching_sec_set(char *param_1,long param_2)

{
  long lVar1;
  undefined8 uVar2;
  undefined4 local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  if (param_2 == 0) {
    _printk(&DAT_00104512,"charger_policy_force_disching_sec_set");
    uVar2 = 0xffffffea;
  }
  else {
    sscanf(param_1,"%d",&local_2c);
    *(undefined4 *)(param_2 + 0x1f8) = local_2c;
    _printk(&DAT_001041bc,"charger_policy_force_disching_sec_set");
    uVar2 = 0;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}



/* 001016e0 charger_policy_force_disching_sec_get */

int charger_policy_force_disching_sec_get(char *param_1,long param_2)

{
  int iVar1;
  
  if (param_2 == 0) {
    _printk(&DAT_00104512,"charger_policy_force_disching_sec_get");
    iVar1 = 0xb;
    builtin_strncpy(param_1,"arg is null",0xc);
  }
  else {
    _printk(&DAT_00103a3b,"charger_policy_force_disching_sec_get",*(undefined4 *)(param_2 + 0x1f8));
    iVar1 = snprintf(param_1,0x1000,"%u",(ulong)*(uint *)(param_2 + 0x1f8));
  }
  return iVar1;
}



/* 0010177c charger_policy_cap_min_set */

void charger_policy_cap_min_set(char *param_1,long param_2)

{
  long lVar1;
  undefined8 uVar2;
  undefined4 local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  if (param_2 == 0) {
    _printk(&DAT_00104512,"charger_policy_cap_min_set");
    uVar2 = 0xffffffea;
  }
  else {
    sscanf(param_1,"%d",&local_2c);
    *(undefined4 *)(param_2 + 0x1a4) = local_2c;
    *(undefined4 *)(param_2 + 0x19c) = local_2c;
    _printk(&DAT_001041ed,"charger_policy_cap_min_set");
    uVar2 = 0;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}



/* 00101828 charger_policy_cap_min_get */

int charger_policy_cap_min_get(char *param_1,long param_2)

{
  int iVar1;
  
  if (param_2 == 0) {
    _printk(&DAT_00104512,"charger_policy_cap_min_get");
    iVar1 = 0xb;
    builtin_strncpy(param_1,"arg is null",0xc);
  }
  else {
    iVar1 = snprintf(param_1,0x1000,"%u",(ulong)*(uint *)(param_2 + 0x19c));
  }
  return iVar1;
}



/* 001018a4 charger_policy_cap_max_set */

void charger_policy_cap_max_set(char *param_1,long param_2)

{
  long lVar1;
  undefined8 uVar2;
  undefined4 local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  if (param_2 == 0) {
    _printk(&DAT_00104512,"charger_policy_cap_max_set");
    uVar2 = 0xffffffea;
  }
  else {
    sscanf(param_1,"%d",&local_2c);
    *(undefined4 *)(param_2 + 0x1a8) = 0;
    *(undefined4 *)(param_2 + 0x1a0) = local_2c;
    *(undefined4 *)(param_2 + 0x198) = local_2c;
    _printk(&DAT_00103a6c,"charger_policy_cap_max_set");
    uVar2 = 0;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}



/* 00101954 charger_policy_cap_max_get */

int charger_policy_cap_max_get(char *param_1,long param_2)

{
  int iVar1;
  
  if (param_2 == 0) {
    _printk(&DAT_00104512,"charger_policy_cap_max_get");
    iVar1 = 0xb;
    builtin_strncpy(param_1,"arg is null",0xc);
  }
  else {
    iVar1 = snprintf(param_1,0x1000,"%u",(ulong)*(uint *)(param_2 + 0x198));
  }
  return iVar1;
}



/* 001019d0 charger_policy_enable_status_set */

void charger_policy_enable_status_set(char *param_1,long param_2)

{
  long lVar1;
  undefined8 uVar2;
  int local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  if (param_2 == 0) {
    _printk(&DAT_00104512,"charger_policy_enable_status_set");
    uVar2 = 0xffffffea;
  }
  else {
    sscanf(param_1,"%d",&local_2c);
    *(uint *)(param_2 + 0x1e8) = (uint)(local_2c == 0);
    _printk(&DAT_00103cec,"charger_policy_enable_status_set");
    uVar2 = 0;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}



/* 00101a80 charger_policy_enable_status_get */

int charger_policy_enable_status_get(char *param_1,long param_2)

{
  int iVar1;
  
  if (param_2 == 0) {
    _printk(&DAT_00104512,"charger_policy_enable_status_get");
    iVar1 = 0xb;
    builtin_strncpy(param_1,"arg is null",0xc);
  }
  else {
    iVar1 = snprintf(param_1,0x1000,"%u",(ulong)(*(int *)(param_2 + 0x1e8) == 0));
  }
  return iVar1;
}



/* 00101b04 charger_policy_get_status */

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
    _printk(&DAT_00104de8,"charger_policy_get_prop_by_name","policy");
  }
  else {
    iVar2 = power_supply_get_property(lVar3,5,&local_30);
    if (-1 < iVar2) {
      iVar2 = (int)local_30;
      power_supply_put(lVar3);
      bVar1 = iVar2 != 0;
      goto LAB_00101b60;
    }
    _printk(&DAT_0010578e,"charger_policy_get_prop_by_name","policy",5,iVar2);
  }
  bVar1 = false;
LAB_00101b60:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(bVar1);
}



/* 00101bd8 charger_policy_get_prop_by_name */

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
    _printk(&DAT_00103a97,"charger_policy_get_prop_by_name");
    iVar1 = -0x16;
  }
  else {
    lVar2 = power_supply_get_by_name();
    if (lVar2 == 0) {
      _printk(&DAT_00104de8,"charger_policy_get_prop_by_name",param_1);
      iVar1 = -0x16;
    }
    else {
      iVar1 = power_supply_get_property(lVar2,param_2,&local_40);
      if (iVar1 < 0) {
        _printk(&DAT_0010578e,"charger_policy_get_prop_by_name",param_1,param_2,iVar1);
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



/* 00101cdc charger_policy_disable_cas */

void charger_policy_disable_cas(long param_1,uint param_2)

{
  int iVar1;
  long lVar2;
  long lVar3;
  undefined8 local_40;
  long local_38;
  
  lVar3 = sp_el0;
  local_38 = *(long *)(lVar3 + 0x710);
  _printk(&DAT_001053fa,"charger_policy_disable_cas",param_2 & 1);
  lVar3 = *(long *)(param_1 + 0x1d0);
  local_40 = 0;
  if (lVar3 == 0) {
    _printk(&DAT_00103a97,"charger_policy_set_prop_by_name");
    iVar1 = -0x16;
  }
  else {
    lVar2 = power_supply_get_by_name(lVar3);
    if (lVar2 == 0) {
      _printk(&DAT_00104de8,"charger_policy_set_prop_by_name",lVar3);
      iVar1 = -0x16;
    }
    else {
      local_40 = CONCAT44(local_40._4_4_,param_2) & 0xffffffff00000001;
      iVar1 = power_supply_set_property(lVar2,5,&local_40);
      if (-1 < iVar1) {
        power_supply_put(lVar2);
        goto LAB_00101d58;
      }
      _printk(&DAT_00104ef7,"charger_policy_set_prop_by_name",lVar3,5,iVar1);
    }
  }
  _printk(&DAT_00104218,"charger_policy_disable_cas",iVar1);
LAB_00101d58:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00101e08 charger_policy_ctrl_charging_enable */

void charger_policy_ctrl_charging_enable(long param_1,uint param_2,uint param_3)

{
  long lVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  undefined8 uVar6;
  undefined *puVar7;
  uint local_54;
  uint local_50;
  int local_4c;
  long local_48;
  
  lVar1 = sp_el0;
  local_48 = *(long *)(lVar1 + 0x710);
  local_54 = 0;
  local_50 = 0;
  local_4c = 0;
  iVar4 = charger_policy_get_prop_by_name(*(undefined8 *)(param_1 + 0x1b8),0,&local_4c);
  iVar5 = local_4c;
  if (-1 < iVar4) {
    _printk(&DAT_00104f2b,"charger_policy_battery_is_charging",local_4c == 1 || local_4c == 4);
  }
  else {
    _printk(&DAT_00104cc5,"charger_policy_battery_is_charging");
  }
  _printk(&DAT_001055e3,"charger_policy_ctrl_charging_enable",
          -1 < iVar4 && (iVar5 == 1 || iVar5 == 4));
  iVar5 = zte_charger_policy_get_prop_by_name(*(undefined8 *)(param_1 + 0x1c0),3,&local_54);
  uVar2 = local_54;
  if (iVar5 < 0) {
    puVar7 = &DAT_00103b28;
  }
  else {
    _printk(&DAT_00105605,"charger_policy_ctrl_charging_enable",local_54);
    iVar5 = zte_charger_policy_get_prop_by_name(*(undefined8 *)(param_1 + 0x1c0),4,&local_50);
    uVar3 = local_50;
    if (iVar5 < 0) {
      puVar7 = &DAT_00103b6b;
    }
    else {
      _printk(&DAT_0010541a,"charger_policy_ctrl_charging_enable",local_50);
      param_3 = param_3 & 1;
      param_2 = param_2 & 1;
      if (uVar2 == param_3) {
        if (uVar3 != param_2) {
          _printk(&DAT_00105449,"charger_policy_ctrl_charging_enable",uVar2,uVar2,uVar3,param_2);
        }
      }
      else {
        _printk(&DAT_00105449,"charger_policy_ctrl_charging_enable",uVar2,param_3,uVar3,param_2);
        iVar5 = zte_charger_policy_set_prop_by_name(*(undefined8 *)(param_1 + 0x1c0),3,param_3);
        if (iVar5 < 0) {
          puVar7 = &DAT_00103c5a;
          goto LAB_00101f0c;
        }
      }
      if ((uVar3 == param_2) ||
         (iVar5 = zte_charger_policy_set_prop_by_name(*(undefined8 *)(param_1 + 0x1c0),4,param_2),
         -1 < iVar5)) {
        uVar6 = 1;
        goto LAB_00101f74;
      }
      puVar7 = &DAT_00104944;
    }
  }
LAB_00101f0c:
  _printk(puVar7,"charger_policy_ctrl_charging_enable");
  uVar6 = 0;
LAB_00101f74:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_48) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar6);
}



/* 00102020 zte_charger_policy_get_prop_by_name */

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
    _printk(&DAT_00103a97,"zte_charger_policy_get_prop_by_name");
    iVar1 = -0x16;
  }
  else {
    lVar2 = zte_power_supply_get_by_name();
    if (lVar2 == 0) {
      _printk(&DAT_00104de8,"zte_charger_policy_get_prop_by_name",param_1);
      iVar1 = -0x16;
    }
    else {
      iVar1 = zte_power_supply_get_property(lVar2,param_2,&local_40);
      if (iVar1 < 0) {
        _printk(&DAT_00104ef7,"zte_charger_policy_get_prop_by_name",param_1,param_2,iVar1);
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



/* 00102124 zte_charger_policy_set_prop_by_name */

void zte_charger_policy_set_prop_by_name(long param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  long lVar2;
  undefined8 local_40;
  long local_38;
  
  lVar2 = sp_el0;
  local_38 = *(long *)(lVar2 + 0x710);
  local_40 = 0;
  if (param_1 == 0) {
    _printk(&DAT_00103a97,"zte_charger_policy_set_prop_by_name");
    iVar1 = -0x16;
  }
  else {
    lVar2 = zte_power_supply_get_by_name();
    if (lVar2 == 0) {
      _printk(&DAT_00104de8,"zte_charger_policy_set_prop_by_name",param_1);
      iVar1 = -0x16;
    }
    else {
      local_40 = CONCAT44(local_40._4_4_,param_3);
      iVar1 = zte_power_supply_set_property(lVar2,param_2,&local_40);
      if (iVar1 < 0) {
        _printk(&DAT_00104ef7,"zte_charger_policy_set_prop_by_name",param_1,param_2,iVar1);
      }
      else {
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



/* 00102224 charger_policy_check_soc_reach_min */

void charger_policy_check_soc_reach_min(long param_1)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  undefined *puVar4;
  int iVar5;
  int local_3c;
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_3c = 0;
  iVar2 = charger_policy_get_prop_by_name(*(undefined8 *)(param_1 + 0x1b8),0x2f,&local_3c);
  if (iVar2 < 0) {
    _printk(&DAT_00103da1,"charger_policy_check_soc_reach_min");
    uVar3 = 0;
    goto LAB_001022f0;
  }
  if (*(char *)(param_1 + 0x21d) == '\x01') {
    _printk(&DAT_00104067,"charger_policy_check_soc_reach_min",*(undefined1 *)(param_1 + 0x219),
            *(undefined1 *)(param_1 + 0x21a),*(undefined1 *)(param_1 + 0x21b),
            *(undefined1 *)(param_1 + 0x21c));
  }
  iVar2 = local_3c;
  if (*(char *)(param_1 + 0x219) == '\x01') {
    iVar5 = *(int *)(param_1 + 0x1a4);
    if ((*(byte *)(param_1 + 0x21c) & 1) == 0) {
      iVar5 = iVar5 - *(int *)(param_1 + 0x1a8);
    }
    if (*(char *)(param_1 + 0x21d) == '\x01') {
      _printk(&DAT_0010575e,"charger_policy_check_soc_reach_min",local_3c,iVar5);
    }
    if (iVar5 < iVar2) goto LAB_001022a8;
    puVar4 = &DAT_0010498b;
LAB_001023d4:
    _printk(puVar4,"charger_policy_check_soc_reach_min",iVar2,iVar5);
    uVar3 = 1;
  }
  else {
LAB_001022a8:
    iVar2 = local_3c;
    if ((*(char *)(param_1 + 0x21a) == '\x01') && (*(char *)(param_1 + 0x21b) == '\x01')) {
      iVar5 = *(int *)(param_1 + 0x19c);
      if ((*(byte *)(param_1 + 0x21c) & 1) == 0) {
        iVar5 = iVar5 - *(int *)(param_1 + 0x1a8);
      }
      if (*(char *)(param_1 + 0x21d) == '\x01') {
        _printk(&DAT_001040b0,"charger_policy_check_soc_reach_min",local_3c,iVar5);
      }
      if (iVar2 <= iVar5) {
        puVar4 = &DAT_0010455b;
        goto LAB_001023d4;
      }
    }
    uVar3 = 0;
  }
LAB_001022f0:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) != local_38) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar3);
  }
  return;
}



/* 001023ec charger_policy_probe */

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



/* 00102b90 charger_policy_remove */

void charger_policy_remove(long param_1)

{
  undefined8 *puVar1;
  
  puVar1 = *(undefined8 **)(param_1 + 0xa8);
  _printk(&DAT_00104ec0,"charger_policy_remove");
  if (puVar1 != (undefined8 *)0x0) {
    power_supply_unreg_notifier(puVar1 + 2);
    wakeup_source_unregister(puVar1[0x3c]);
    devm_kfree(*puVar1,puVar1);
  }
  _printk(&DAT_0010512d,"charger_policy_remove");
  return;
}



/* 00102c00 charger_policy_probe_work */

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



/* 00102f34 charger_policy_timeout_handler_work */

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



/* 00103294 charger_policy_check_usb_present */

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



/* 001034d8 charger_policy_notifier_switch */

undefined8 charger_policy_notifier_switch(long param_1,long param_2,undefined8 *param_3)

{
  int iVar1;
  char *__s1;
  
  if (param_2 != 0) {
    return 0;
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



/* 00103564 policy_psy_get_property */

undefined4 policy_psy_get_property(undefined8 param_1,int param_2,uint *param_3)

{
  long lVar1;
  ulong uVar2;
  uint uVar3;
  
  lVar1 = power_supply_get_drvdata();
  if (lVar1 == 0) {
    _printk(&DAT_00105827,"policy_psy_get_property");
    return 0xffffffc3;
  }
  if (param_2 == 4) {
    uVar3 = *(uint *)(lVar1 + 0x1ec);
  }
  else {
    if (param_2 != 5) {
      if (param_2 == 3) {
        _printk(&DAT_00103c34,"policy_psy_get_property",*(undefined4 *)(lVar1 + 0x1e8));
        *param_3 = (uint)(*(int *)(lVar1 + 0x1e8) == 0);
        return 0;
      }
      _printk(&DAT_001047b3,param_2);
      return 0xffffffea;
    }
    if (((*(char *)(lVar1 + 0x219) != '\x01') ||
        (uVar2 = charger_policy_check_usb_present(), (uVar2 & 1) == 0)) &&
       ((*(char *)(lVar1 + 0x21a) != '\x01' || (*(char *)(lVar1 + 0x21b) != '\x01')))) {
      *param_3 = 0;
      return 0;
    }
    uVar3 = 1;
  }
  *param_3 = uVar3;
  return 0;
}



/* 00103678 policy_psy_set_property */

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



/* 00103758 policy_property_is_writeable */

bool policy_property_is_writeable(undefined8 param_1,int param_2)

{
  return param_2 - 3U < 3;
}



/* 0010376c policy_external_power_changed */

void policy_external_power_changed(void)

{
  return;
}



/* 00103774 init_module */

void init_module(void)

{
  __platform_driver_register(charger_policy_driver,&__this_module);
  return;
}



/* 001037a4 cleanup_module */

void cleanup_module(void)

{
  platform_driver_unregister(charger_policy_driver);
  return;
}



