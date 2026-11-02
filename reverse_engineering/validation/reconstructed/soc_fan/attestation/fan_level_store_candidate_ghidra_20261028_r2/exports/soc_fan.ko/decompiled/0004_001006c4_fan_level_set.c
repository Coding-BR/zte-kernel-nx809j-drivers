
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
    _printk(&DAT_00101163,"NB_FAN","fan_level_set",0x94,uVar1);
    uVar4 = 0;
    goto LAB_00100840;
  }
  lVar8 = *(long *)(chip + 0x48);
  if (param_2 == 0) {
    if ((lVar8 != 0) && (iVar2 = regulator_is_enabled(lVar8), iVar2 != 0)) {
      uVar3 = regulator_disable(lVar8);
      puVar5 = &DAT_00100d9c;
      uVar6 = 0xe5;
      goto LAB_001008f8;
    }
  }
  else if ((lVar8 != 0) && (iVar2 = regulator_is_enabled(lVar8), iVar2 == 0)) {
    uVar3 = regulator_enable(lVar8);
    msleep(10);
    puVar5 = &DAT_0010110e;
    uVar6 = 0xed;
LAB_001008f8:
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
    pcVar7 = (code *)SoftwareBreakpoint(0x8228,0x100834);
    (*pcVar7)();
  }
  uVar4 = (*pcVar7)(lVar8,*(long *)(param_1 + 0x68),&local_50);
  if ((int)uVar4 < 0) {
    uVar4 = uVar4 & 0xffffffff;
    _printk(&DAT_00100fbd,"NB_FAN","fan_level_set",0xbf,uVar1,uVar4);
  }
  else {
    *param_1 = param_2;
  }
LAB_00100840:
  lVar8 = sp_el0;
  if (*(long *)(lVar8 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}

