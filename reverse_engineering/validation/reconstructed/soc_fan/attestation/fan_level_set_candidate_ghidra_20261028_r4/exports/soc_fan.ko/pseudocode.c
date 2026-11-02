/* 00100324 fan_speed_irq_proc */

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



/* 00100360 nb_fan_gpio_proc */

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
      _printk(&DAT_00100c4c,"NB_FAN","nb_fan_gpio_proc",0x343);
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
          _printk(&DAT_00100e1a);
        }
        else {
          disable_irq(*(undefined4 *)(param_1[1] + 0x1c));
          uVar1 = of_get_named_gpio(uVar3,"fan,pwm-gpio",0);
          *(undefined4 *)(param_1[1] + 0x10) = uVar1;
          if (*(int *)(param_1[1] + 0x10) < 0) {
            _printk(&DAT_00100e42,"NB_FAN","nb_fan_gpio_proc",0x355);
            iVar2 = *(int *)(param_1[1] + 0x10);
          }
          else {
            gpio_to_desc();
            uVar1 = gpiod_get_raw_value();
            _printk(&DAT_00100f29,"NB_FAN","nb_fan_gpio_proc",0x358,uVar1);
            iVar2 = 0;
          }
        }
      }
      else {
        _printk(&DAT_00100ec8,"NB_FAN","nb_fan_gpio_proc",0x348);
      }
    }
    return iVar2;
  }
  return -0x13;
}



/* 00100534 nb_fan_remove */

void nb_fan_remove(long param_1)

{
  long *plVar1;
  
  plVar1 = *(long **)(param_1 + 0xa8);
  sysfs_remove_group(plVar1[2],chip_attr_group);
  *(undefined8 *)(*plVar1 + 0x98) = 0;
  return;
}



/* 00100574 fan_hrtimer_hander */

undefined8 fan_hrtimer_hander(void)

{
  long lVar1;
  
  lVar1 = *(long *)(chip + 8);
  if (*(char *)(lVar1 + 2) == '\x02') {
    *(undefined1 *)(lVar1 + 2) = 3;
    lVar1 = chip;
    *(undefined4 *)(*(long *)(chip + 8) + 8) = *(undefined4 *)(*(long *)(chip + 8) + 4);
    disable_irq_nosync(*(undefined4 *)(*(long *)(lVar1 + 8) + 0x1c));
    _printk(&DAT_00100d83,"NB_FAN","fan_hrtimer_hander",0x89,**(undefined1 **)(chip + 8),
            *(undefined4 *)(*(undefined1 **)(chip + 8) + 4));
  }
  else if (*(char *)(lVar1 + 2) == '\x01') {
    *(undefined4 *)(lVar1 + 4) = 0;
    *(undefined1 *)(*(long *)(chip + 8) + 2) = 2;
    hrtimer_start_range_ns(*(long *)(chip + 8) + 0x28,500000000,0,1);
    enable_irq(*(undefined4 *)(*(long *)(chip + 8) + 0x1c));
    _printk(&DAT_00100c74,"NB_FAN","fan_hrtimer_hander",0x82,**(undefined1 **)(chip + 8),
            *(undefined4 *)(*(undefined1 **)(chip + 8) + 4));
    return 1;
  }
  return 0;
}



/* 0010068c fan_level_set */

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
    _printk(&DAT_00100f4f,"NB_FAN","fan_level_set",0x94,uVar1);
    uVar4 = 0;
    goto LAB_00100808;
  }
  lVar8 = *(long *)(chip + 0x48);
  if (param_2 == 0) {
    if ((lVar8 != 0) && (iVar2 = regulator_is_enabled(lVar8), iVar2 != 0)) {
      uVar3 = regulator_disable(lVar8);
      puVar5 = &DAT_00100c1c;
      uVar6 = 0xe5;
      goto LAB_001008c0;
    }
  }
  else if ((lVar8 != 0) && (iVar2 = regulator_is_enabled(lVar8), iVar2 == 0)) {
    uVar3 = regulator_enable(lVar8);
    msleep(10);
    puVar5 = &DAT_00100efa;
    uVar6 = 0xed;
LAB_001008c0:
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
    pcVar7 = (code *)SoftwareBreakpoint(0x8228,0x1007fc);
    (*pcVar7)();
  }
  uVar4 = (*pcVar7)(lVar8,*(long *)(param_1 + 0x68),&local_50);
  if ((int)uVar4 < 0) {
    uVar4 = uVar4 & 0xffffffff;
    _printk(&DAT_00100db9,"NB_FAN","fan_level_set",0xbf,uVar1,uVar4);
  }
  else {
    *param_1 = param_2;
  }
LAB_00100808:
  lVar8 = sp_el0;
  if (*(long *)(lVar8 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}



/* 001008d0 fan_enable_show */

long fan_enable_show(undefined8 param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  _printk(&DAT_00100ea9,"NB_FAN","fan_enable_show",0x130,*(undefined1 *)(*(long *)(chip + 8) + 0xc))
  ;
  iVar1 = sprintf(param_3,"%d\n",(ulong)*(byte *)(*(long *)(chip + 8) + 0xc));
  return (long)iVar1;
}



/* 00100948 fan_level_show */

long fan_level_show(undefined8 param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = sprintf(param_3,"%d\n",
                  (ulong)*(byte *)(*(long *)(chip + 8) +
                                  ((ulong)*(byte *)(*(long *)(chip + 8) + 0xc) ^ 1)));
  return (long)iVar1;
}



/* 00100994 fan_pwm_store */

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
      pcVar3 = (code *)SoftwareBreakpoint(0x822a,0x100a48);
      (*pcVar3)();
    }
    iVar1 = (*pcVar3)(*(long *)(lVar2 + 0x18),lVar2,&local_50);
    if (iVar1 < 0) {
      _printk(&DAT_00100cca,"NB_FAN","fan_pwm_set",0xd5,uVar4,iVar1);
    }
    else if (iVar1 == 0) {
      mutex_unlock(chip + 0x18);
      _printk(&DAT_00100d19,"NB_FAN","fan_pwm_store",0x18c,local_54,0);
      goto LAB_00100a68;
    }
    mutex_unlock(chip + 0x18);
    param_4 = (long)iVar1;
  }
  else {
    _printk(&DAT_00100d3e,"NB_FAN","fan_pwm_store",0x181,local_54,0,100);
    param_4 = -0x16;
  }
LAB_00100a68:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00100b34 cleanup_module */

void cleanup_module(void)

{
  platform_driver_unregister(&nubia_fan_driver);
  return;
}



/* 00100b5c init_module */

void init_module(void)

{
  __platform_driver_register(&nubia_fan_driver,&__this_module);
  return;
}



