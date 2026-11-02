
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

ulong nb_fan_probe(long param_1)

{
  int iVar1;
  uint uVar2;
  long *plVar3;
  ulong uVar4;
  undefined1 *puVar5;
  long lVar6;
  undefined8 uVar7;
  ulong uVar8;
  undefined4 local_3c;
  long local_38;
  
  lVar6 = sp_el0;
  local_38 = *(long *)(lVar6 + 0x710);
  _printk(&DAT_00101dcc,"NB_FAN","nb_fan_probe",0x373);
  param_1 = param_1 + 0x10;
  plVar3 = (long *)devm_kmalloc(param_1,0x58,0xdc0);
  chip = plVar3;
  if (plVar3 == (long *)0x0) {
LAB_00100790:
    uVar8 = 0xfffffff4;
    goto LAB_00100794;
  }
  *plVar3 = param_1;
  local_3c = 0;
  uVar8 = regulator_get(param_1,"fan,avdd");
  plVar3[9] = uVar8;
  if (uVar8 < 0xfffffffffffff001) {
    iVar1 = of_property_read_variable_u32_array
                      (*(undefined8 *)(*plVar3 + 0x2e8),"fan,voltage",&local_3c,1,0);
    if (iVar1 < 0) {
      _printk(&DAT_00101b31,"NB_FAN","nb_fan_power_proc",0x2fd,iVar1);
      local_3c = 2800000;
    }
    uVar2 = regulator_set_voltage(plVar3[9],local_3c,local_3c);
    if (uVar2 == 0) {
      _printk(&DAT_00101a1a,"NB_FAN","nb_fan_power_proc",0x307,local_3c);
      uVar2 = regulator_is_enabled(plVar3[9]);
      if (uVar2 == 0) {
        _printk(&DAT_001022c5,"NB_FAN","nb_fan_power_proc",0x30d);
        goto LAB_001008e0;
      }
      uVar8 = (ulong)uVar2;
      _printk(&DAT_00101b82,"NB_FAN","nb_fan_power_proc",0x30b);
    }
    else {
      uVar8 = (ulong)uVar2;
      _printk(&DAT_00102288,"NB_FAN","nb_fan_power_proc",0x304,uVar8);
    }
LAB_00100a04:
    puVar5 = &DAT_00101df2;
    uVar7 = 0x37d;
  }
  else {
    _printk(&DAT_001024e4,"NB_FAN","nb_fan_power_proc",0x2f6);
    uVar8 = (ulong)*(uint *)(plVar3 + 9);
    if (*(uint *)(plVar3 + 9) != 0) goto LAB_00100a04;
LAB_001008e0:
    _printk(&DAT_00102451,"NB_FAN","nb_fan_probe",0x380);
    plVar3 = chip;
    uVar8 = devm_pinctrl_get(*chip);
    if ((uVar8 == 0) || (0xfffffffffffff000 < uVar8)) {
      _printk(&DAT_00102479,"NB_FAN","nb_fan_pinctrl_proc",0x326);
    }
    else {
      _printk(&DAT_00101e5e,"NB_FAN","nb_fan_pinctrl_proc",0x329);
      uVar4 = pinctrl_lookup_state(uVar8,"default");
      plVar3[10] = uVar4;
      if ((uVar4 == 0) || (0xfffffffffffff000 < uVar4)) {
        _printk(&DAT_00101d16,"NB_FAN","nb_fan_pinctrl_proc",0x32e);
        uVar8 = (ulong)*(uint *)(plVar3 + 10);
      }
      else {
        _printk(&DAT_00101c56,"NB_FAN","nb_fan_pinctrl_proc",0x331);
        uVar8 = pinctrl_select_state(uVar8,plVar3[10]);
        uVar8 = uVar8 & 0xffffffff;
      }
    }
    if ((int)uVar8 == 0) {
      _printk(&DAT_00101d69,"NB_FAN","nb_fan_probe",0x388);
      uVar2 = nb_fan_parse_dt(chip);
      if ((int)uVar2 < 0) {
        uVar8 = (ulong)uVar2;
        puVar5 = &DAT_0010251e;
        uVar7 = 0x38d;
      }
      else {
        _printk(&DAT_00101a8a,"NB_FAN","nb_fan_probe",0x390);
        uVar2 = nb_fan_gpio_proc(chip);
        if (uVar2 == 0) {
          _printk(&DAT_00102218,"NB_FAN","nb_fan_probe",0x398);
          __mutex_init(chip + 3,"&chip->lock",&nb_fan_probe___key);
          hrtimer_init(chip[1] + 0x28,1,1);
          plVar3 = chip;
          *(code **)(chip[1] + 0x50) = fan_hrtimer_hander;
          uVar7 = _kernel_kobj;
          *(long **)(*plVar3 + 0x98) = plVar3;
          lVar6 = kobject_create_and_add(&DAT_00101c15,uVar7);
          chip[2] = lVar6;
          if (lVar6 != 0) {
            uVar2 = sysfs_create_group(lVar6,chip_attr_group);
            if (uVar2 == 0) {
              _printk(&DAT_00102240,"NB_FAN","nb_fan_probe",0x3ac);
              _printk(&DAT_0010255a,"NB_FAN","nb_fan_probe",0x3b2);
              uVar8 = 0;
            }
            else {
              uVar8 = (ulong)uVar2;
              _printk(&DAT_00101e1f,"NB_FAN","nb_fan_probe",0x3a9);
            }
            goto LAB_00100794;
          }
          _printk(&DAT_00102333,"NB_FAN","nb_fan_probe",0x3a3);
          goto LAB_00100790;
        }
        uVar8 = (ulong)uVar2;
        puVar5 = &DAT_00102143;
        uVar7 = 0x395;
      }
    }
    else {
      puVar5 = &DAT_001019b8;
      uVar7 = 0x385;
    }
  }
  _printk(puVar5,"NB_FAN","nb_fan_probe",uVar7,uVar8 & 0xffffffff);
LAB_00100794:
  lVar6 = sp_el0;
  if (*(long *)(lVar6 + 0x710) != local_38) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return uVar8 & 0xffffffff;
}

