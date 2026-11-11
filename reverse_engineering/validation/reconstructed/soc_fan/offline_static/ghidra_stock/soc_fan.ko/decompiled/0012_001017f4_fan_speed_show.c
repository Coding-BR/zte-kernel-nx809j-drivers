
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
    goto LAB_00101a58;
  }
  pcVar7[2] = '\x01';
  hrtimer_start_range_ns(pcVar7 + 0x28,1000000,0,1);
  msleep(1000);
  cVar1 = *pcVar7;
  uVar3 = *(int *)(pcVar7 + 8) * 0x28;
  if ((cVar1 == '\x03') && (4000 < uVar3)) {
    iVar5 = 13000;
LAB_00101884:
    uVar6 = *(int *)(pcVar7 + 8) + iVar5;
  }
  else {
    if (cVar1 == '\x05') {
      if (uVar3 < 0xfa1) goto LAB_001018c0;
      iVar5 = 19000;
      goto LAB_00101884;
    }
    if ((cVar1 == '\x04') && (4000 < uVar3)) {
      iVar5 = 16000;
      goto LAB_00101884;
    }
LAB_001018c0:
    uVar6 = 0;
  }
  _printk(&DAT_001025a2,"NB_FAN","fan_rpm_get",0x128,cVar1,uVar3,uVar6);
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
      _printk(&DAT_00101dfa,"NB_FAN","nb_fan_power_set",0xe5,uVar4);
    }
    msleep(0x32);
    lVar8 = *(long *)(chip + 0x48);
    if ((lVar8 != 0) && (iVar5 = regulator_is_enabled(lVar8), iVar5 == 0)) {
      uVar4 = regulator_enable(lVar8);
      msleep(10);
      _printk(&DAT_001027d4,"NB_FAN","nb_fan_power_set",0xed,uVar4);
    }
    fan_level_set(*(undefined8 *)(chip + 8),bVar2);
    _printk(&DAT_001029d4,"NB_FAN","nb_fan_rpm_check",0x1ad,**(undefined1 **)(chip + 8),uVar6,
            nb_fan_rpm_check_rst_cnt);
    if (nb_fan_rpm_check_rst_cnt == 10) {
      _printk(&DAT_001023f8,"NB_FAN","nb_fan_rpm_check",0x1b0,**(undefined1 **)(chip + 8),uVar6);
    }
    iVar5 = nb_fan_rpm_check_rst_cnt + 1;
  }
LAB_00101a58:
  nb_fan_rpm_check_rst_cnt = iVar5;
  iVar5 = sprintf(param_3,"%d\n",(ulong)uVar6);
  mutex_unlock(chip + 0x18);
  _printk(&DAT_0010285f,"NB_FAN","fan_speed_show",0x1c4,**(undefined1 **)(chip + 8),uVar6);
  return (long)iVar5;
}

