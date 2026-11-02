/* 001003a4 fan_speed_irq_proc */

undefined8 fan_speed_irq_proc(undefined8 param_1,long param_2)

{
  int *piVar1;
  char cVar2;
  bool bVar3;
  
  piVar1 = (int *)(*(long *)(param_2 + 8) + 4);
  Hint_Prefetch(piVar1,2,0,1);
  do {
    cVar2 = '\x01';
    bVar3 = (bool)ExclusiveMonitorPass(piVar1,0x10);
    if (bVar3) {
      *piVar1 = *piVar1 + 1;
      cVar2 = ExclusiveMonitorsStatus();
    }
  } while (cVar2 != '\0');
  return 1;
}



/* 001003e0 nb_fan_gpio_proc */

int nb_fan_gpio_proc(long *param_1)

{
  undefined4 uVar1;
  int iVar2;
  undefined8 uVar3;
  
  if (param_1[1] != 0) {
    uVar3 = *(undefined8 *)(*param_1 + 0x2e8);
    uVar1 = of_get_named_gpio(uVar3,"fan,speed-gpio",0);
    *(undefined4 *)(param_1[1] + 0x14) = uVar1;
    if (*(int *)(param_1[1] + 0x14) < 0) {
      _printk(&DAT_001011ba,"NB_FAN","nb_fan_gpio_proc",0x343);
      iVar2 = *(int *)(param_1[1] + 0x14);
    }
    else {
      iVar2 = gpio_request(*(int *)(param_1[1] + 0x14),"fan_speed_gpio");
      if (iVar2 == 0) {
        gpio_to_desc(*(undefined4 *)(param_1[1] + 0x14));
        uVar1 = gpiod_to_irq();
        *(undefined4 *)(param_1[1] + 0x1c) = uVar1;
        iVar2 = request_threaded_irq
                          (*(undefined4 *)(param_1[1] + 0x1c),fan_speed_irq_proc,0,0x200002,
                           "fan_speed_int",param_1);
        if (iVar2 < 0) {
          _printk(&DAT_00101497);
        }
        else {
          disable_irq(*(undefined4 *)(param_1[1] + 0x1c));
          uVar1 = of_get_named_gpio(uVar3,"fan,pwm-gpio",0);
          *(undefined4 *)(param_1[1] + 0x10) = uVar1;
          if (*(int *)(param_1[1] + 0x10) < 0) {
            _printk(&DAT_001014fb,"NB_FAN","nb_fan_gpio_proc",0x355);
            iVar2 = *(int *)(param_1[1] + 0x10);
          }
          else {
            gpio_to_desc();
            uVar1 = gpiod_get_raw_value();
            _printk(&DAT_00101653,"NB_FAN","nb_fan_gpio_proc",0x358,uVar1);
            iVar2 = 0;
          }
        }
      }
      else {
        _printk(&DAT_001015e6,"NB_FAN","nb_fan_gpio_proc",0x348);
      }
    }
    return iVar2;
  }
  return -0x13;
}



/* 001005b4 nb_fan_remove */

void nb_fan_remove(long param_1)

{
  long *plVar1;
  
  plVar1 = *(long **)(param_1 + 0xa8);
  sysfs_remove_group(plVar1[2],chip_attr_group);
  *(undefined8 *)(*plVar1 + 0x98) = 0;
  return;
}



/* 001005f4 fan_hrtimer_hander */

undefined8 fan_hrtimer_hander(void)

{
  long lVar1;
  
  lVar1 = *(long *)(chip + 8);
  if (*(char *)(lVar1 + 2) == '\x02') {
    *(undefined1 *)(lVar1 + 2) = 3;
    lVar1 = chip;
    *(undefined4 *)(*(long *)(chip + 8) + 8) = *(undefined4 *)(*(long *)(chip + 8) + 4);
    disable_irq_nosync(*(undefined4 *)(*(long *)(lVar1 + 8) + 0x1c));
    _printk(&DAT_0010135b,"NB_FAN","fan_hrtimer_hander",0x89,**(undefined1 **)(chip + 8),
            *(undefined4 *)(*(undefined1 **)(chip + 8) + 4));
  }
  else if (*(char *)(lVar1 + 2) == '\x01') {
    *(undefined4 *)(lVar1 + 4) = 0;
    *(undefined1 *)(*(long *)(chip + 8) + 2) = 2;
    hrtimer_start_range_ns(*(long *)(chip + 8) + 0x28,500000000,0,1);
    enable_irq(*(undefined4 *)(*(long *)(chip + 8) + 0x1c));
    _printk(&DAT_001011e2,"NB_FAN","fan_hrtimer_hander",0x82,**(undefined1 **)(chip + 8),
            *(undefined4 *)(*(undefined1 **)(chip + 8) + 4));
    return 1;
  }
  return 0;
}



/* 00100710 fan_enable_store */

undefined8 fan_enable_store(undefined8 param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  long lVar1;
  undefined1 *puVar2;
  int local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  sscanf(param_3,"%d",&local_2c);
  lVar1 = chip;
  if ((bool)*(char *)(*(long *)(chip + 8) + 0xc) == (local_2c != 0)) {
    _printk(&DAT_00101521,"NB_FAN","fan_enable_store",0x13f);
  }
  else {
    *(bool *)(*(long *)(chip + 8) + 0xc) = local_2c != 0;
    _printk(&DAT_00101463,"NB_FAN","fan_enable_store",0x143,
            *(undefined1 *)(*(long *)(lVar1 + 8) + 0xc));
    mutex_lock(chip + 0x18);
    puVar2 = *(undefined1 **)(chip + 8);
    if ((puVar2[0xc] & 1) == 0) {
      puVar2[1] = *puVar2;
      fan_level_set(*(undefined8 *)(chip + 8),0);
    }
    else if (puVar2[1] != '\0') {
      fan_level_set();
      _printk(&DAT_00101391,"NB_FAN","fan_enable_store",0x14c,
              *(undefined1 *)(*(long *)(chip + 8) + 1));
      *(undefined1 *)(*(long *)(chip + 8) + 1) = 0;
    }
    mutex_unlock(chip + 0x18);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00100878 fan_level_set */

void fan_level_set(byte *param_1,byte param_2)

{
  uint uVar1;
  int iVar2;
  undefined4 uVar3;
  ulong uVar4;
  undefined *puVar5;
  undefined8 uVar6;
  code *pcVar7;
  long lVar8;
  undefined8 local_50;
  ulong local_48;
  undefined1 local_40 [5];
  undefined1 auStack_3b [3];
  long local_38;
  
  lVar8 = sp_el0;
  uVar1 = (uint)param_2;
  local_38 = *(long *)(lVar8 + 0x710);
  if (*param_1 == uVar1) {
    _printk(&DAT_00101679,"NB_FAN","fan_level_set",0x94,uVar1);
    uVar4 = 0;
    goto LAB_001009f4;
  }
  lVar8 = *(long *)(chip + 0x48);
  if (param_2 == 0) {
    if ((lVar8 != 0) && (iVar2 = regulator_is_enabled(lVar8), iVar2 != 0)) {
      uVar3 = regulator_disable(lVar8);
      puVar5 = &DAT_00101150;
      uVar6 = 0xe5;
      goto LAB_00100aac;
    }
  }
  else if ((lVar8 != 0) && (iVar2 = regulator_is_enabled(lVar8), iVar2 == 0)) {
    uVar3 = regulator_enable(lVar8);
    msleep(10);
    puVar5 = &DAT_001015b7;
    uVar6 = 0xed;
LAB_00100aac:
    _printk(puVar5,"NB_FAN","nb_fan_power_set",uVar6,uVar3);
  }
  local_48 = (ulong)(uVar1 * 8000);
  auStack_3b = SUB83((ulong)*(undefined8 *)(*(long *)(param_1 + 0x68) + 0x40) >> 0x28,0);
  local_40 = (undefined1  [5])
             CONCAT14(param_2 != 0,(int)*(undefined8 *)(*(long *)(param_1 + 0x68) + 0x40));
  local_50 = 40000;
  gpio_to_desc(*(undefined4 *)(*(long *)(chip + 8) + 0x10));
  iVar2 = gpiod_get_raw_value();
  if (uVar1 == 5) {
    if (iVar2 == 1) {
      uVar6 = gpio_to_desc(*(undefined4 *)(*(long *)(chip + 8) + 0x10));
      gpiod_direction_output_raw(uVar6,0);
    }
    lVar8 = *(long *)(param_1 + 0x68);
    local_50 = *(undefined8 *)(lVar8 + 0x20);
    local_48 = 0;
    auStack_3b._1_2_ = (undefined2)((ulong)*(undefined8 *)(lVar8 + 0x40) >> 0x30);
    _local_40 = (uint6)*(uint *)(lVar8 + 0x28);
  }
  else if (iVar2 == 0) {
    uVar6 = gpio_to_desc(*(undefined4 *)(*(long *)(chip + 8) + 0x10));
    gpiod_direction_output_raw(uVar6,1);
  }
  lVar8 = *(long *)(*(long *)(param_1 + 0x68) + 0x18);
  pcVar7 = *(code **)(*(long *)(lVar8 + 0x390) + 0x18);
  if (*(int *)(pcVar7 + -4) != -0x222f6830) {
                    /* WARNING: Does not return */
    pcVar7 = (code *)SoftwareBreakpoint(0x8228,0x1009e8);
    (*pcVar7)();
  }
  uVar4 = (*pcVar7)(lVar8,*(long *)(param_1 + 0x68),&local_50);
  if ((int)uVar4 < 0) {
    uVar4 = uVar4 & 0xffffffff;
    _printk(&DAT_001013c7,"NB_FAN","fan_level_set",0xbf,uVar1,uVar4);
  }
  else {
    *param_1 = param_2;
  }
LAB_001009f4:
  lVar8 = sp_el0;
  if (*(long *)(lVar8 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}



/* 00100abc fan_level_show */

long fan_level_show(undefined8 param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = sprintf(param_3,"%d\n",
                  (ulong)*(byte *)(*(long *)(chip + 8) +
                                  ((ulong)*(byte *)(*(long *)(chip + 8) + 0xc) ^ 1)));
  return (long)iVar1;
}



/* 00100b08 fan_level_store */

long fan_level_store(undefined8 param_1,undefined8 param_2,char *param_3,long param_4)

{
  long lVar1;
  int iVar2;
  uint local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  sscanf(param_3,"%d",&local_2c);
  if (local_2c < 6) {
    if ((*(byte *)(*(long *)(chip + 8) + 0xc) & 1) == 0) {
      *(char *)(*(long *)(chip + 8) + 1) = (char)local_2c;
      _printk(&DAT_001012bd,"NB_FAN","fan_level_store",0x16b,local_2c);
    }
    else {
      mutex_lock(chip + 0x18);
      iVar2 = fan_level_set(*(undefined8 *)(chip + 8),local_2c);
      mutex_unlock(chip + 0x18);
      if (iVar2 == 0) {
        _printk(&DAT_001016bc,"NB_FAN","fan_level_store",0x175,local_2c,0);
      }
      else {
        param_4 = (long)iVar2;
      }
    }
  }
  else {
    _printk(&DAT_00101180,"NB_FAN","fan_level_store",0x165,local_2c,0,5);
    param_4 = -0x16;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00100c50 fan_enable_show */

long fan_enable_show(undefined8 param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  _printk(&DAT_00101598,"NB_FAN","fan_enable_show",0x130,*(undefined1 *)(*(long *)(chip + 8) + 0xc))
  ;
  iVar1 = sprintf(param_3,"%d\n",(ulong)*(byte *)(*(long *)(chip + 8) + 0xc));
  return (long)iVar1;
}



/* 00100cc8 fan_speed_show */

long fan_speed_show(undefined8 param_1,undefined8 param_2,char *param_3)

{
  char cVar1;
  byte bVar2;
  uint uVar3;
  undefined4 uVar4;
  int iVar5;
  uint uVar6;
  char *pcVar7;
  long lVar8;
  
  mutex_lock(chip + 0x18);
  pcVar7 = *(char **)(chip + 8);
  if (*pcVar7 == '\0') {
    uVar6 = 0;
    iVar5 = nb_fan_rpm_check_rst_cnt;
    goto LAB_00100f2c;
  }
  pcVar7[2] = '\x01';
  hrtimer_start_range_ns(pcVar7 + 0x28,1000000,0,1);
  msleep(1000);
  cVar1 = *pcVar7;
  uVar3 = *(int *)(pcVar7 + 8) * 0x28;
  if ((cVar1 == '\x03') && (4000 < uVar3)) {
    iVar5 = 13000;
LAB_00100d58:
    uVar6 = *(int *)(pcVar7 + 8) + iVar5;
  }
  else {
    if (cVar1 == '\x05') {
      if (uVar3 < 0xfa1) goto LAB_00100d94;
      iVar5 = 19000;
      goto LAB_00100d58;
    }
    if ((cVar1 == '\x04') && (4000 < uVar3)) {
      iVar5 = 16000;
      goto LAB_00100d58;
    }
LAB_00100d94:
    uVar6 = 0;
  }
  _printk(&DAT_001014bf,"NB_FAN","fan_rpm_get",0x128,cVar1,uVar3,uVar6);
  if (uVar6 <= uVar3) {
    uVar6 = uVar3;
  }
  bVar2 = **(byte **)(chip + 8);
  iVar5 = 0;
  if (((bVar2 != 0) && (uVar6 <= (uint)bVar2 * 1000)) &&
     (iVar5 = nb_fan_rpm_check_rst_cnt, nb_fan_rpm_check_rst_cnt < 0xb)) {
    fan_level_set(*(byte **)(chip + 8),0);
    lVar8 = *(long *)(chip + 0x48);
    if ((lVar8 != 0) && (iVar5 = regulator_is_enabled(lVar8), iVar5 != 0)) {
      uVar4 = regulator_disable(lVar8);
      _printk(&DAT_00101150,"NB_FAN","nb_fan_power_set",0xe5,uVar4);
    }
    msleep(0x32);
    lVar8 = *(long *)(chip + 0x48);
    if ((lVar8 != 0) && (iVar5 = regulator_is_enabled(lVar8), iVar5 == 0)) {
      uVar4 = regulator_enable(lVar8);
      msleep(10);
      _printk(&DAT_001015b7,"NB_FAN","nb_fan_power_set",0xed,uVar4);
    }
    fan_level_set(*(undefined8 *)(chip + 8),bVar2);
    _printk(&DAT_001016e3,"NB_FAN","nb_fan_rpm_check",0x1ad,**(undefined1 **)(chip + 8),uVar6,
            nb_fan_rpm_check_rst_cnt);
    if (nb_fan_rpm_check_rst_cnt == 10) {
      _printk(&DAT_00101406,"NB_FAN","nb_fan_rpm_check",0x1b0,**(undefined1 **)(chip + 8),uVar6);
    }
    iVar5 = nb_fan_rpm_check_rst_cnt + 1;
  }
LAB_00100f2c:
  nb_fan_rpm_check_rst_cnt = iVar5;
  iVar5 = sprintf(param_3,"%d\n",(ulong)uVar6);
  mutex_unlock(chip + 0x18);
  _printk(&DAT_00101629,"NB_FAN","fan_speed_show",0x1c4,**(undefined1 **)(chip + 8),uVar6);
  return (long)iVar5;
}



/* 00100fa0 fan_pwm_store */

long fan_pwm_store(undefined8 param_1,undefined8 param_2,char *param_3,long param_4)

{
  int iVar1;
  long lVar2;
  code *pcVar3;
  ulong uVar4;
  uint local_54;
  undefined8 local_50;
  long lStack_48;
  undefined4 local_40;
  undefined1 uStack_3c;
  undefined3 uStack_3b;
  long local_38;
  
  lVar2 = sp_el0;
  local_38 = *(long *)(lVar2 + 0x710);
  local_54 = 0;
  sscanf(param_3,"%d",&local_54);
  if (local_54 < 0x65) {
    mutex_lock(chip + 0x18);
    uVar4 = (ulong)(byte)local_54;
    lStack_48 = uVar4 * 400;
    lVar2 = *(long *)(*(long *)(chip + 8) + 0x68);
    uStack_3b = (undefined3)((ulong)*(undefined8 *)(lVar2 + 0x40) >> 0x28);
    _local_40 = CONCAT14(1,(int)*(undefined8 *)(lVar2 + 0x40));
    pcVar3 = *(code **)(*(long *)(*(long *)(lVar2 + 0x18) + 0x390) + 0x18);
    local_50 = 40000;
    if (*(int *)(pcVar3 + -4) != -0x222f6830) {
                    /* WARNING: Does not return */
      pcVar3 = (code *)SoftwareBreakpoint(0x822a,0x101054);
      (*pcVar3)();
    }
    iVar1 = (*pcVar3)(*(long *)(lVar2 + 0x18),lVar2,&local_50);
    if (iVar1 < 0) {
      _printk(&DAT_00101238,"NB_FAN","fan_pwm_set",0xd5,uVar4,iVar1);
    }
    else if (iVar1 == 0) {
      mutex_unlock(chip + 0x18);
      _printk(&DAT_00101298,"NB_FAN","fan_pwm_store",0x18c,local_54,0);
      goto LAB_00101074;
    }
    mutex_unlock(chip + 0x18);
    param_4 = (long)iVar1;
  }
  else {
    _printk(&DAT_00101316,"NB_FAN","fan_pwm_store",0x181,local_54,0,100);
    param_4 = -0x16;
  }
LAB_00101074:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00101724 cleanup_module */

void cleanup_module(void)

{
  platform_driver_unregister(&nubia_fan_driver);
  return;
}



/* 0010174c init_module */

void init_module(void)

{
  __platform_driver_register(&nubia_fan_driver,&__this_module);
  return;
}



