/* 001007f0 zte_goodix_pinctrl_select */

ulong zte_goodix_pinctrl_select(long param_1,uint param_2)

{
  char *pcVar1;
  long lVar2;
  bool bVar3;
  ulong uVar4;
  char *pcVar5;
  
  if ((param_1 != 0) && (*(long *)(param_1 + 0x80) != 0)) {
    bVar3 = (param_2 & 1) == 0;
    pcVar1 = "goodix_active";
    if (bVar3) {
      pcVar1 = "goodix_suspend";
    }
    lVar2 = 0x88;
    if (bVar3) {
      lVar2 = 0x90;
    }
    _printk(&DAT_00102b44,"zte_goodix_pinctrl_select",param_2 & 1);
    if (*(long *)(param_1 + lVar2) == 0) {
      uVar4 = 0xffffffea;
      pcVar5 = "not a valid \'%s\' pinstate\n";
    }
    else {
      uVar4 = pinctrl_select_state(*(undefined8 *)(param_1 + 0x80));
      if ((int)uVar4 == 0) {
        return uVar4;
      }
      uVar4 = uVar4 & 0xffffffff;
      pcVar5 = "can not set %s pins\n";
    }
    _dev_err(*(long *)(param_1 + 0x18) + 0x10,pcVar5,pcVar1);
    return uVar4;
  }
  return 0xffffffea;
}



/* 001008c0 netlink_init */

void netlink_init(void)

{
  undefined *puVar1;
  long lVar2;
  undefined8 local_40;
  code *pcStack_38;
  undefined8 local_30;
  undefined8 uStack_28;
  undefined8 local_20;
  long local_18;
  
  lVar2 = sp_el0;
  local_18 = *(long *)(lVar2 + 0x710);
  local_30 = 0;
  uStack_28 = 0;
  local_20 = 0;
  local_40 = 0;
  pcStack_38 = nl_data_ready;
  nl_sk = __netlink_kernel_create(&init_net,0x19,&__this_module,&local_40);
  puVar1 = &DAT_0010367a;
  if (nl_sk != 0) {
    puVar1 = &DAT_001033f6;
  }
  _printk(puVar1,"netlink_init");
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_18) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00100970 gf_ioctl */

void gf_ioctl(long param_1,uint param_2,undefined8 param_3)

{
  int iVar1;
  long lVar2;
  undefined *puVar3;
  long lVar4;
  ulong uVar5;
  ulong uVar6;
  undefined8 local_50;
  long local_48;
  
  lVar4 = sp_el0;
  local_48 = *(long *)(lVar4 + 0x710);
  lVar4 = *(long *)(param_1 + 0x20);
  if (lVar4 == 0) {
    lVar4 = -0x16;
    goto LAB_00100d4c;
  }
  if ((param_2 & 0xff00) != 0x6700) {
    lVar4 = -0x19;
    goto LAB_00100d4c;
  }
  if (*(char *)(lVar4 + 0x70) == '\0') {
    if (param_2 - 0x6709 < 0xfffffffe) {
      _printk(&DAT_0010358e,"gf_ioctl");
      lVar4 = -0x13;
      goto LAB_00100d4c;
    }
    _printk(&DAT_00103169,"gf_ioctl");
  }
  if (0x4004670d < (int)param_2) {
    if (param_2 == 0x4008670d) {
      local_50 = 0;
      lVar4 = _inline_copy_from_user(&local_50,param_3,8);
      if (lVar4 == 0) {
        _printk(&DAT_0010371e,"gf_ioctl",local_50 & 0xff);
        _printk(&DAT_00103742,"gf_ioctl",local_50._1_1_);
        _printk(&DAT_00102ff6,"gf_ioctl",local_50._2_1_);
        goto LAB_00100d44;
      }
    }
    else if (param_2 == 0x4004670e) {
      local_50 = local_50 & 0xffffffff00000000;
      _printk(&DAT_00103087,"gf_ioctl");
      lVar4 = _inline_copy_from_user(&local_50,param_3,4);
      if (lVar4 == 0) {
        nav_event_input(local_50 & 0xffffffff);
        goto LAB_00100d44;
      }
    }
    else {
      if (param_2 != 0x40086709) goto LAB_00100c74;
      local_50 = 0;
      _printk(&DAT_001037a1,"gf_ioctl");
      lVar2 = _inline_copy_from_user(&local_50,param_3,8);
      if (lVar2 == 0) {
        iVar1 = (int)local_50;
        if (iVar1 == 5) {
          uVar5 = 0xd4;
        }
        else if (iVar1 == 2) {
          uVar5 = 0x74;
        }
        else {
          uVar5 = local_50 & 0xffffffff;
          if (iVar1 == 1) {
            uVar5 = 0x66;
          }
        }
        uVar6 = local_50 >> 0x20;
        _printk(&DAT_001030a5,"gf_ioctl",local_50 & 0xffffffff,uVar5,uVar6 != 0);
        if ((((int)uVar5 == 0xd4) || ((int)uVar5 == 0x74)) && (uVar6 != 0)) {
          input_event(*(undefined8 *)(lVar4 + 0x28),1,uVar5,1);
          input_event(*(undefined8 *)(lVar4 + 0x28),0,0,0);
          input_event(*(undefined8 *)(lVar4 + 0x28),1,uVar5,0);
          input_event(*(undefined8 *)(lVar4 + 0x28),0,0,0);
        }
        if (iVar1 == 1) {
          input_event(*(undefined8 *)(lVar4 + 0x28),1,uVar5,uVar6 != 0);
          input_event(*(undefined8 *)(lVar4 + 0x28),0,0,0);
        }
        goto LAB_00100d44;
      }
    }
LAB_001009f0:
    lVar4 = -0xe;
    goto LAB_00100d4c;
  }
  if ((int)param_2 < 0x6704) {
    if ((int)param_2 < 0x6702) {
      if (param_2 == 0x80046700) {
        local_50 = CONCAT71(local_50._1_7_,0x19);
        _printk(&DAT_00103af5,"gf_ioctl");
        lVar4 = _inline_copy_to_user(param_3,&local_50);
        if (lVar4 != 0) goto LAB_001009f0;
        iVar1 = 0;
        goto LAB_00100d48;
      }
      if (param_2 == 0x6701) {
        puVar3 = &DAT_001034cf;
        goto LAB_00100c38;
      }
LAB_00100c74:
      _printk(&DAT_00102b94,"gf_ioctl",param_2);
      lVar4 = -0x16;
      goto LAB_00100d4c;
    }
    if (param_2 == 0x6702) {
      _printk(&DAT_00102c0b,"gf_ioctl");
      gf_hw_reset(lVar4);
    }
    else {
      if (param_2 != 0x6703) goto LAB_00100c74;
      _printk(&DAT_00102eb5,"gf_ioctl");
      gf_enable_irq(lVar4);
    }
LAB_00100d44:
    iVar1 = 0;
  }
  else if ((int)param_2 < 0x6708) {
    if (param_2 == 0x6704) {
      _printk(&DAT_00103781,"gf_ioctl");
      gf_disable_irq(lVar4);
      goto LAB_00100d44;
    }
    if (param_2 != 0x6707) goto LAB_00100c74;
    _printk(&DAT_00103524,"gf_ioctl");
    if (*(char *)(lVar4 + 0x70) == '\0') {
      iVar1 = gf_power_on(lVar4);
    }
    else {
      _printk(&DAT_001031d0,"gf_ioctl");
      iVar1 = 0;
    }
    *(undefined1 *)(lVar4 + 0x70) = 1;
  }
  else {
    if (param_2 != 0x6708) {
      if (param_2 == 0x670a) {
        puVar3 = &DAT_00103b15;
LAB_00100c38:
        _printk(puVar3,"gf_ioctl");
      }
      else {
        if (param_2 != 0x670c) goto LAB_00100c74;
        _printk(&DAT_00103871,"gf_ioctl");
        gf_cleanup(lVar4);
      }
      goto LAB_00100d44;
    }
    _printk(&DAT_00103700,"gf_ioctl");
    if (*(char *)(lVar4 + 0x70) == '\0') {
      _printk(&DAT_00103265,"gf_ioctl");
      iVar1 = 0;
      *(undefined1 *)(lVar4 + 0x70) = 0;
    }
    else {
      iVar1 = gf_power_off(lVar4);
      *(undefined1 *)(lVar4 + 0x70) = 0;
    }
  }
LAB_00100d48:
  lVar4 = (long)iVar1;
LAB_00100d4c:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_48) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(lVar4);
}



/* 00100e90 gf_compat_ioctl */

void gf_compat_ioctl(void)

{
  gf_ioctl();
  return;
}



/* 00100eb0 gf_open */

int gf_open(long param_1,long param_2)

{
  int iVar1;
  undefined *puVar2;
  undefined8 uVar3;
  undefined **ppuVar4;
  undefined **ppuVar5;
  
  _printk(&DAT_001031a8,"gf_open");
  mutex_lock(device_list_lock);
  ppuVar5 = &device_list;
  do {
    ppuVar5 = (undefined **)*ppuVar5;
    if (ppuVar5 == &device_list) {
      _printk(&DAT_00102e4c,"gf_open",*(uint *)(param_1 + 0x4c) & 0xfffff);
      iVar1 = -6;
      goto LAB_00101034;
    }
  } while (*(int *)(ppuVar5 + -1) != *(int *)(param_1 + 0x4c));
  ppuVar4 = ppuVar5 + -1;
  _printk(&DAT_0010362c,"gf_open");
  *(int *)(ppuVar5 + 6) = *(int *)(ppuVar5 + 6) + 1;
  *(undefined ***)(param_2 + 0x20) = ppuVar4;
  nonseekable_open(param_1,param_2);
  puVar2 = (undefined *)zlog_register_client(&goodix_zlog_fp_dev);
  ppuVar5[0xe] = puVar2;
  _printk(&DAT_00103a26,"gf_open",puVar2);
  _printk(&DAT_00103444,"gf_open",*(undefined4 *)(ppuVar5 + 6));
  if (*(int *)(ppuVar5 + 6) == 1) {
    iVar1 = gf_parse_dts(ppuVar4);
    if (iVar1 == 0) {
      _printk(&DAT_001039be,"gf_open");
      uVar3 = gf_irq_num(ppuVar4);
      *(int *)(ppuVar5 + 8) = (int)uVar3;
      iVar1 = request_threaded_irq(uVar3,0,gf_irq,0x2001,"goodix_fp",ppuVar4);
      if (iVar1 == 0) {
        irq_set_irq_wake(*(undefined4 *)(ppuVar5 + 8),1);
        *(undefined4 *)((long)ppuVar5 + 0x44) = 1;
        goto LAB_00100ffc;
      }
      _printk(&DAT_00103101,"gf_open");
      gf_cleanup(ppuVar4);
    }
    mutex_unlock(device_list_lock);
    puVar2 = &DAT_001036d8;
  }
  else {
LAB_00100ffc:
    gf_hw_reset(ppuVar4);
    iVar1 = 0;
    *(undefined1 *)(ppuVar5 + 0xd) = 1;
LAB_00101034:
    mutex_unlock(device_list_lock);
    puVar2 = &DAT_00102f7f;
  }
  _printk(puVar2,"gf_open",iVar1);
  return iVar1;
}



/* 001010b0 gf_release */

undefined8 gf_release(undefined8 param_1,long param_2)

{
  int iVar1;
  undefined8 uVar2;
  long lVar3;
  
  lVar3 = *(long *)(param_2 + 0x20);
  if (lVar3 == 0) {
    uVar2 = 0xffffffea;
  }
  else {
    _printk(&DAT_001031a8,"gf_release");
    mutex_lock(device_list_lock);
    *(undefined8 *)(param_2 + 0x20) = 0;
    iVar1 = *(int *)(lVar3 + 0x38) + -1;
    *(int *)(lVar3 + 0x38) = iVar1;
    if (iVar1 == 0) {
      _printk(&DAT_00103237,"gf_release");
      irq_set_irq_wake(*(undefined4 *)(lVar3 + 0x48),0);
      if (*(int *)(lVar3 + 0x4c) == 0) {
        _printk(&DAT_00102ef5,"gf_release");
      }
      else {
        *(undefined4 *)(lVar3 + 0x4c) = 0;
        disable_irq(*(undefined4 *)(lVar3 + 0x48));
      }
      free_irq(*(undefined4 *)(lVar3 + 0x48),lVar3);
      gf_cleanup(lVar3);
      *(undefined1 *)(lVar3 + 0x70) = 0;
      lVar3 = *(long *)(lVar3 + 0x78);
    }
    else {
      lVar3 = *(long *)(lVar3 + 0x78);
    }
    if (lVar3 != 0) {
      zlog_unregister_client();
      _printk(&DAT_00103b6b,"gf_release");
    }
    mutex_unlock(device_list_lock);
    uVar2 = 0;
  }
  return uVar2;
}



/* 001011bc gf_hw_reset */

void gf_hw_reset(long param_1)

{
  undefined8 uVar1;
  undefined *puVar2;
  
  if (param_1 == 0) {
    puVar2 = &DAT_001037c0;
  }
  else {
    if (-1 < *(int *)(param_1 + 0x40)) {
      _printk(&DAT_00102bb0,"gf_hw_reset");
      uVar1 = gpio_to_desc(*(undefined4 *)(param_1 + 0x40));
      gpiod_set_raw_value(uVar1,0);
      usleep_range_state(10000,0x2774,2);
      uVar1 = gpio_to_desc(*(undefined4 *)(param_1 + 0x40));
      gpiod_set_raw_value(uVar1,1);
      __const_udelay(0x147aeb8);
      return;
    }
    puVar2 = &DAT_0010301a;
  }
  _printk(puVar2,"gf_hw_reset");
  return;
}



/* 00101264 gf_enable_irq */

void gf_enable_irq(long param_1)

{
  undefined *puVar1;
  
  if (*(int *)(param_1 + 0x4c) == 0) {
    enable_irq(*(undefined4 *)(param_1 + 0x48));
    puVar1 = &DAT_00103431;
    *(undefined4 *)(param_1 + 0x4c) = 1;
  }
  else {
    puVar1 = &DAT_0010396c;
  }
  _printk(puVar1,"gf_enable_irq");
  return;
}



/* 001012c4 gf_disable_irq */

void gf_disable_irq(long param_1)

{
  undefined *puVar1;
  
  if (*(int *)(param_1 + 0x4c) == 0) {
    puVar1 = &DAT_00103b30;
  }
  else {
    *(undefined4 *)(param_1 + 0x4c) = 0;
    disable_irq(*(undefined4 *)(param_1 + 0x48));
    puVar1 = &DAT_00103194;
  }
  _printk(puVar1,"gf_disable_irq");
  return;
}



/* 00101314 gf_power_on */

ulong gf_power_on(long param_1)

{
  int iVar1;
  ulong uVar2;
  
  if ((*(ulong *)(param_1 + 0x98) == 0) || (0xfffffffffffff000 < *(ulong *)(param_1 + 0x98))) {
    _printk(&DAT_00103a0a,"gf_power_on");
    uVar2 = 0xffffffea;
  }
  else {
    _printk(&DAT_00103b4f,"gf_power_on");
    iVar1 = regulator_is_enabled(*(undefined8 *)(param_1 + 0x98));
    if (iVar1 == 0) {
      uVar2 = regulator_enable(*(undefined8 *)(param_1 + 0x98));
      if ((int)uVar2 != 0) {
        uVar2 = uVar2 & 0xffffffff;
        _printk(&DAT_0010388d,"gf_power_on",uVar2);
      }
    }
    else {
      _printk(&DAT_00102d31,"gf_power_on");
      uVar2 = 0;
    }
  }
  return uVar2;
}



/* 001013d0 gf_power_off */

ulong gf_power_off(long param_1)

{
  int iVar1;
  ulong uVar2;
  
  if ((*(ulong *)(param_1 + 0x98) == 0) || (0xfffffffffffff000 < *(ulong *)(param_1 + 0x98))) {
    _printk(&DAT_00103a0a,"gf_power_off");
    uVar2 = 0xffffffea;
  }
  else {
    _printk(&DAT_00102e01,"gf_power_off");
    iVar1 = regulator_is_enabled(*(undefined8 *)(param_1 + 0x98));
    if (iVar1 == 0) {
      _printk(&DAT_001031ed,"gf_power_off");
      uVar2 = 0;
    }
    else {
      uVar2 = regulator_disable(*(undefined8 *)(param_1 + 0x98));
      if ((int)uVar2 != 0) {
        uVar2 = uVar2 & 0xffffffff;
        _printk(&DAT_00102c25,"gf_power_off",uVar2);
      }
    }
  }
  return uVar2;
}



/* 0010148c gf_cleanup */

void gf_cleanup(long param_1)

{
  int iVar1;
  ulong uVar2;
  
  if (param_1 != 0) {
    _printk(&DAT_001031a8,"gf_cleanup");
    if (*(int *)(param_1 + 0x3c) < 0) {
      iVar1 = *(int *)(param_1 + 0x40);
    }
    else {
      gpio_free();
      _printk(&DAT_0010398a,"gf_cleanup");
      iVar1 = *(int *)(param_1 + 0x40);
    }
    if (iVar1 < 0) {
      uVar2 = *(ulong *)(param_1 + 0x98);
    }
    else {
      gpio_free();
      _printk(&DAT_00103038,"gf_cleanup");
      uVar2 = *(ulong *)(param_1 + 0x98);
    }
    if (((uVar2 != 0) && (uVar2 < 0xfffffffffffff001)) &&
       (iVar1 = regulator_is_enabled(), iVar1 != 0)) {
      regulator_disable(*(undefined8 *)(param_1 + 0x98));
      _printk(&DAT_001039a0,"gf_cleanup");
    }
    return;
  }
  return;
}



/* 00101568 nav_event_input */

void nav_event_input(int param_1)

{
  undefined8 uVar1;
  
  if (param_1 < 6) {
    if (param_1 < 4) {
      if (param_1 == 3) {
        uVar1 = 0x67;
        goto LAB_001015a8;
      }
      if (param_1 - 1U < 2) {
        _printk(&DAT_001032ce,"nav_event_input");
        return;
      }
    }
    else {
      if (param_1 == 4) {
        _printk(&DAT_00102d85,"nav_event_input");
        uVar1 = 0x6c;
        goto LAB_001015a8;
      }
      if (param_1 == 5) {
        _printk(&DAT_001038ee,"nav_event_input");
        uVar1 = 0x69;
        goto LAB_001015a8;
      }
    }
  }
  else if (param_1 < 8) {
    if (param_1 == 7) {
      uVar1 = 0x72;
      goto LAB_001015a8;
    }
    if (param_1 == 6) {
      _printk(&DAT_00102d55,"nav_event_input");
      uVar1 = 0x6a;
      goto LAB_001015a8;
    }
  }
  else {
    if (param_1 == 8) {
      _printk(&DAT_00103501,"nav_event_input");
      uVar1 = 0xd8;
      goto LAB_001015a8;
    }
    if (param_1 == 9) {
      _printk(&DAT_0010335f,"nav_event_input");
      uVar1 = 0x247;
      goto LAB_001015a8;
    }
    if (param_1 == 10) {
      _printk(&DAT_001030c8,"nav_event_input");
      uVar1 = 0x73;
      goto LAB_001015a8;
    }
  }
  _printk(&DAT_001030e4,"nav_event_input");
  uVar1 = 0;
LAB_001015a8:
  input_event(DAT_00103d08,1,uVar1,1);
  input_event(DAT_00103d08,0,0,0);
  input_event(DAT_00103d08,1,uVar1,0);
  input_event(DAT_00103d08,0,0,0);
  return;
}



/* 00101724 _inline_copy_to_user */

undefined8 _inline_copy_to_user(ulong param_1,undefined8 param_2)

{
  undefined8 *puVar1;
  undefined8 uVar2;
  ulong uVar3;
  undefined8 uVar4;
  
  puVar1 = (undefined8 *)sp_el0;
  if (((*(byte *)((long)puVar1 + 0x46) >> 5 & 1) != 0) ||
     (uVar3 = param_1, ((uint)*puVar1 >> 0x1a & 1) != 0)) {
    uVar3 = param_1 & (long)(param_1 << 8) >> 8;
  }
  uVar4 = 1;
  if (uVar3 >> 0x27 == 0) {
    uVar4 = daif;
    uVar3 = daif;
    daif = uVar3 | 0xc0;
    uVar3 = ttbr1_el1;
    ttbr1_el1 = puVar1[1] & 0xffff000000000000 | uVar3 & 0xffffffffffff;
    ttbr0_el1 = puVar1[1];
    InstructionSynchronizationBarrier();
    daif = uVar4;
    uVar4 = __arch_copy_to_user(uVar4,param_1 & 0xff7fffffffffffff,param_2,1);
    uVar2 = daif;
    uVar3 = daif;
    daif = uVar3 | 0xc0;
    uVar3 = ttbr1_el1;
    ttbr0_el1 = (uVar3 & 0xffffffffffff) - 0x1000;
    ttbr1_el1 = uVar3 & 0xffffffffffff;
    InstructionSynchronizationBarrier();
    daif = uVar2;
  }
  return uVar4;
}



/* 001017d0 _inline_copy_from_user */

size_t _inline_copy_from_user(long param_1,ulong param_2,size_t param_3)

{
  undefined8 *puVar1;
  undefined8 uVar2;
  size_t __n;
  ulong uVar3;
  ulong uVar4;
  
  puVar1 = (undefined8 *)sp_el0;
  if (((*(byte *)((long)puVar1 + 0x46) >> 5 & 1) != 0) ||
     (uVar4 = param_2, ((uint)*puVar1 >> 0x1a & 1) != 0)) {
    uVar4 = param_2 & (long)(param_2 << 8) >> 8;
  }
  __n = param_3;
  if (uVar4 <= 0x8000000000 - param_3) {
    uVar2 = daif;
    uVar4 = daif;
    daif = uVar4 | 0xc0;
    uVar3 = puVar1[1];
    uVar4 = ttbr1_el1;
    ttbr1_el1 = uVar3 & 0xffff000000000000 | uVar4 & 0xffffffffffff;
    ttbr0_el1 = uVar3;
    InstructionSynchronizationBarrier();
    daif = uVar2;
    __n = __arch_copy_from_user(uVar3,param_1,param_2 & 0xff7fffffffffffff,param_3);
    uVar2 = daif;
    uVar4 = daif;
    daif = uVar4 | 0xc0;
    uVar4 = ttbr1_el1;
    ttbr0_el1 = (uVar4 & 0xffffffffffff) - 0x1000;
    ttbr1_el1 = uVar4 & 0xffffffffffff;
    InstructionSynchronizationBarrier();
    daif = uVar2;
    if (__n == 0) {
      return 0;
    }
  }
  memset((void *)(param_1 + (param_3 - __n)),0,__n);
  return __n;
}



/* 001018bc gf_parse_dts */

int gf_parse_dts(long param_1)

{
  int iVar1;
  ulong uVar2;
  undefined *puVar3;
  long lVar4;
  
  if ((param_1 == 0) || (*(long *)(param_1 + 0x18) == 0)) {
    return -0x16;
  }
  lVar4 = *(long *)(*(long *)(param_1 + 0x18) + 0x2f8);
  if (lVar4 == 0) {
    return -0x13;
  }
  iVar1 = zte_goodix_pinctrl_init();
  if (iVar1 != 0) {
    _printk(&DAT_001035cf,"gf_parse_dts",iVar1);
  }
  if (*(long *)(param_1 + 0x80) != 0) {
    if ((*(ulong *)(param_1 + 0x90) == 0) || (0xfffffffffffff000 < *(ulong *)(param_1 + 0x90))) {
      _dev_err(*(long *)(param_1 + 0x18) + 0x10,"not a valid \'goodix_suspend\' pinstate\n");
      return -0x16;
    }
    iVar1 = pinctrl_select_state();
    if (iVar1 != 0) {
      _dev_err(*(long *)(param_1 + 0x18) + 0x10,"can not set goodix_suspend pins\n");
      return iVar1;
    }
    _printk(&DAT_00102d9c,"gf_parse_dts");
  }
  usleep_range_state(10000,0x2774,2);
  uVar2 = devm_regulator_get(*(long *)(param_1 + 0x18) + 0x10,&DAT_00103233);
  *(ulong *)(param_1 + 0x98) = uVar2;
  if (0xfffffffffffff000 < uVar2) {
    _printk(&DAT_00103905,"gf_parse_dts");
    return *(int *)(param_1 + 0x98);
  }
  _printk(&DAT_00103925,"gf_parse_dts");
  iVar1 = regulator_enable(*(undefined8 *)(param_1 + 0x98));
  if (iVar1 == 0) {
    _printk(&DAT_0010339d,"gf_parse_dts");
    iVar1 = of_get_named_gpio(lVar4,"fp-gpio-reset",0);
    *(int *)(param_1 + 0x40) = iVar1;
    if (iVar1 < 0) {
      puVar3 = &DAT_001037d6;
LAB_00101b48:
      _printk(puVar3,"gf_parse_dts");
      return -0x16;
    }
    _printk(&DAT_001039cf,"gf_parse_dts",iVar1);
    iVar1 = devm_gpio_request(*(long *)(param_1 + 0x18) + 0x10,*(undefined4 *)(param_1 + 0x40),
                              "goodix_reset");
    if (iVar1 == 0) {
      _printk(&DAT_0010311b,"gf_parse_dts");
      iVar1 = of_get_named_gpio(lVar4,"fp-gpio-irq",0);
      *(int *)(param_1 + 0x3c) = iVar1;
      if (iVar1 < 0) {
        puVar3 = &DAT_00102e6d;
        goto LAB_00101b48;
      }
      _printk(&DAT_001038b7,"gf_parse_dts",iVar1);
      iVar1 = devm_gpio_request(*(long *)(param_1 + 0x18) + 0x10,*(undefined4 *)(param_1 + 0x3c),
                                "goodix_irq");
      if (iVar1 == 0) {
        _printk(&DAT_00102bd1,"gf_parse_dts");
        gpio_to_desc(*(undefined4 *)(param_1 + 0x3c));
        gpiod_direction_input();
        _printk(&DAT_00102cae,"gf_parse_dts");
        return 0;
      }
      _printk(&DAT_00102c8c,"gf_parse_dts");
      if (*(long *)(param_1 + 0x78) == 0) {
        return iVar1;
      }
      zlog_client_record(*(long *)(param_1 + 0x78),"Failed to request goodixfp irq gpio\n");
      zlog_client_notify(*(undefined8 *)(param_1 + 0x78),0x100);
      puVar3 = &DAT_00102b55;
    }
    else {
      _printk(&DAT_00102f93,"gf_parse_dts");
      if (*(long *)(param_1 + 0x78) == 0) {
        return iVar1;
      }
      zlog_client_record(*(long *)(param_1 + 0x78),"Failed to request goodixfp rst gpio\n");
      zlog_client_notify(*(undefined8 *)(param_1 + 0x78),0x101);
      puVar3 = &DAT_00103a63;
    }
  }
  else {
    _printk(&DAT_0010337b,"gf_parse_dts");
    if (*(long *)(param_1 + 0x78) == 0) {
      return iVar1;
    }
    zlog_client_record(*(long *)(param_1 + 0x78),"Failed to request goodixfp pwr gpio\n");
    zlog_client_notify(*(undefined8 *)(param_1 + 0x78),0x102);
    puVar3 = &DAT_00102ed4;
  }
  _printk(puVar3,"gf_parse_dts");
  return iVar1;
}



/* 00101c24 gf_irq_num */

undefined8 gf_irq_num(long param_1)

{
  undefined8 uVar1;
  
  if (param_1 == 0) {
    _printk(&DAT_0010394d,"gf_irq_num");
    uVar1 = 0xffffffed;
  }
  else {
    gpio_to_desc(*(undefined4 *)(param_1 + 0x3c));
    uVar1 = gpiod_to_irq();
  }
  return uVar1;
}



/* 00101c6c gf_irq */

undefined8 gf_irq(void)

{
  long lVar1;
  undefined1 local_1c [4];
  long local_18;
  
  lVar1 = sp_el0;
  local_18 = *(long *)(lVar1 + 0x710);
  local_1c[0] = 1;
  pm_wakeup_ws_event(fp_wakelock,0x9c4,0);
  _printk(&DAT_0010345e,"gf_irq");
  sendnlmsg(local_1c);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_18) {
    return 1;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00101cec zte_goodix_pinctrl_init */

ulong zte_goodix_pinctrl_init(long param_1)

{
  ulong uVar1;
  char *pcVar2;
  
  if (*(long *)(param_1 + 0x18) == 0) {
    return 0xffffffea;
  }
  _printk(&DAT_00103541,"zte_goodix_pinctrl_init");
  uVar1 = devm_pinctrl_get(*(long *)(param_1 + 0x18) + 0x10);
  pcVar2 = "Target does not use pinctrl\n";
  *(ulong *)(param_1 + 0x80) = uVar1;
  if ((uVar1 != 0) && (uVar1 < 0xfffffffffffff001)) {
    uVar1 = pinctrl_lookup_state(uVar1,"goodix_active","Target does not use pinctrl\n");
    pcVar2 = "Can not get goodix_active pinstate\n";
    *(ulong *)(param_1 + 0x88) = uVar1;
    if ((uVar1 != 0) && (uVar1 < 0xfffffffffffff001)) {
      uVar1 = pinctrl_lookup_state
                        (*(undefined8 *)(param_1 + 0x80),"goodix_suspend",
                         "Can not get goodix_active pinstate\n");
      pcVar2 = "Can not get goodix_suspend pinstate\n";
      *(ulong *)(param_1 + 0x90) = uVar1;
      if ((uVar1 != 0) && (uVar1 < 0xfffffffffffff001)) {
        return 0;
      }
    }
  }
  _dev_err(*(long *)(param_1 + 0x18) + 0x10,&DAT_001031b5,pcVar2);
  *(undefined8 *)(param_1 + 0x80) = 0;
  return uVar1;
}



/* 00101de0 sendnlmsg */

void sendnlmsg(undefined1 *param_1)

{
  int iVar1;
  long lVar2;
  long lVar3;
  
  if ((((param_1 != (undefined1 *)0x0) && (nl_sk != 0)) && (pid != 0)) &&
     (lVar2 = __alloc_skb(0x30,0x820,0,0xffffffff), lVar2 != 0)) {
    if (((*(int *)(lVar2 + 0x74) == 0) && (0x2f < *(int *)(lVar2 + 0xd4) - *(int *)(lVar2 + 0xd0)))
       && (lVar3 = __nlmsg_put(lVar2,0,0,0,0x20,0), lVar3 != 0)) {
      *(undefined1 *)(lVar3 + 0x10) = *param_1;
      _printk(&DAT_00102fb7,"sendnlmsg");
      iVar1 = netlink_unicast(nl_sk,lVar2,pid,0x40);
      if (iVar1 < 0) {
        _printk(&DAT_00102e1e,"sendnlmsg",iVar1);
      }
    }
    else {
      sk_skb_reason_drop(0,lVar2,2);
    }
  }
  return;
}



/* 00101ee0 gf_probe */

ulong gf_probe(long param_1)

{
  ulong *puVar1;
  char cVar2;
  bool bVar3;
  undefined *puVar4;
  ulong uVar5;
  ulong uVar6;
  
  _printk(&DAT_001031a8,"gf_probe");
  DAT_00103ce8 = (undefined **)&DAT_00103ce8;
  DAT_00103cf0 = &DAT_00103ce8;
  DAT_00103d1c = 0xffffffeaffffffea;
  DAT_00103d24 = 0xffffffea;
  DAT_00103d50 = 0;
  DAT_00103cf8 = param_1;
  DAT_00103d80 = alloc_workqueue("screen_state_wq",10,1);
  if (DAT_00103d80 != 0) {
    DAT_00103d88 = 0xfffffffe00000;
    DAT_00103d90 = &DAT_00103d90;
    DAT_00103d98 = &DAT_00103d90;
    DAT_00103da0 = goodixfp_init_drm_notifier;
    init_timer_key(&DAT_00103da8,&delayed_work_timer_fn,0x200000,0,0);
    queue_delayed_work_on(0x20,DAT_00103d80,&DAT_00103d88,0x139);
  }
  mutex_lock(device_list_lock);
  if ((minors | 0xffffffff00000000) == 0xffffffffffffffff) {
    mutex_unlock(device_list_lock);
    uVar5 = 0xffffffed;
  }
  else {
    uVar5 = ~(minors | 0xffffffff00000000);
    uVar5 = (uVar5 & 0xaaaaaaaaaaaaaaaa) >> 1 | (uVar5 & 0x5555555555555555) << 1;
    uVar5 = (uVar5 & 0xcccccccccccccccc) >> 2 | (uVar5 & 0x3333333333333333) << 2;
    uVar5 = (uVar5 & 0xf0f0f0f0f0f0f0f0) >> 4 | (uVar5 & 0xf0f0f0f0f0f0f0f) << 4;
    uVar5 = (uVar5 & 0xff00ff00ff00ff00) >> 8 | (uVar5 & 0xff00ff00ff00ff) << 8;
    uVar5 = (uVar5 & 0xffff0000ffff0000) >> 0x10 | (uVar5 & 0xffff0000ffff) << 0x10;
    uVar6 = LZCOUNT(uVar5 >> 0x20 | uVar5 << 0x20);
    gf_dev_static = (uint)uVar6 | SPIDEV_MAJOR << 0x14;
    uVar5 = device_create(gf_class,param_1 + 0x10,gf_dev_static,&gf_dev_static,"goodix_fp");
    puVar4 = PTR_device_list_001000c8;
    if (uVar5 < 0xfffffffffffff001) {
      Hint_Prefetch(0x103ec0,2,0,1);
      do {
        cVar2 = '\x01';
        bVar3 = (bool)ExclusiveMonitorPass(0x103ec0,0x10);
        if (bVar3) {
          cVar2 = ExclusiveMonitorsStatus();
          minors = minors | 1L << (uVar6 & 0x3f);
        }
      } while (cVar2 != '\0');
      if (((*(undefined ***)PTR_device_list_001000c8 != &device_list) ||
          ((undefined ***)PTR_device_list_001000c8 == &DAT_00103ce8)) || (false)) {
        __list_add_valid_or_report(&DAT_00103ce8,PTR_device_list_001000c8,&device_list);
      }
      else {
        PTR_device_list_001000c8 = (undefined *)&DAT_00103ce8;
        DAT_00103ce8 = &device_list;
        DAT_00103cf0 = (undefined8 *)puVar4;
        *(undefined ****)puVar4 = &DAT_00103ce8;
      }
      mutex_unlock(device_list_lock);
      DAT_00103d08 = (undefined8 *)input_allocate_device();
      if (DAT_00103d08 == (undefined8 *)0x0) {
        _printk(&DAT_00102f11,"gf_probe");
        uVar5 = 0xfffffff4;
      }
      else {
        *DAT_00103d08 = "goodix_fp";
        input_set_capability(DAT_00103d08,1,0x66);
        input_set_capability(DAT_00103d08,1,0x8b);
        input_set_capability(DAT_00103d08,1,0x9e);
        input_set_capability(DAT_00103d08,1,0x74);
        input_set_capability(DAT_00103d08,1,0x67);
        input_set_capability(DAT_00103d08,1,0x6c);
        input_set_capability(DAT_00103d08,1,0x69);
        input_set_capability(DAT_00103d08,1,0x6a);
        input_set_capability(DAT_00103d08,1,0xd4);
        input_set_capability(DAT_00103d08,1,0x72);
        input_set_capability(DAT_00103d08,1,0x73);
        input_set_capability(DAT_00103d08,1,0x247);
        input_set_capability(DAT_00103d08,1,0xd8);
        uVar6 = input_register_device(DAT_00103d08);
        uVar5 = uVar6 & 0xffffffff;
        if ((int)uVar6 == 0) {
          wakeup_source_add(fp_wakelock);
          _printk(&DAT_001031b8,"gf_probe");
          *(uint **)(param_1 + 0xa8) = &gf_dev_static;
          goto LAB_00102264;
        }
        _printk(&DAT_00103060,"gf_probe");
        input_free_device(DAT_00103d08);
        DAT_00103d08 = (undefined8 *)0x0;
      }
      mutex_lock(device_list_lock);
      list_del();
      device_destroy(gf_class,gf_dev_static);
      uVar6 = (ulong)gf_dev_static;
      puVar1 = &minors + ((ulong)(gf_dev_static >> 6) & 0x3fff);
      Hint_Prefetch(puVar1,2,0,1);
      do {
        cVar2 = '\x01';
        bVar3 = (bool)ExclusiveMonitorPass(puVar1,0x10);
        if (bVar3) {
          *puVar1 = *puVar1 & (1L << (uVar6 & 0x3f) ^ 0xffffffffffffffffU);
          cVar2 = ExclusiveMonitorsStatus();
        }
      } while (cVar2 != '\0');
      mutex_unlock(device_list_lock);
    }
  }
  _printk(&DAT_00102f38,"gf_probe",uVar5 & 0xffffffff);
  gf_cleanup(&gf_dev_static);
  DAT_00103d50 = 0;
LAB_00102264:
  return uVar5 & 0xffffffff;
}



/* 001022e4 gf_remove */

void gf_remove(long param_1)

{
  uint *puVar1;
  ulong *puVar2;
  uint uVar3;
  char cVar4;
  bool bVar5;
  undefined8 uVar6;
  long *plVar7;
  long lVar8;
  uint *puVar9;
  
  puVar9 = *(uint **)(param_1 + 0xa8);
  _printk(&DAT_001031a8,"gf_remove");
  wakeup_source_remove(fp_wakelock);
  if (puVar9 != (uint *)0x0) {
    lVar8 = *(long *)(puVar9 + 10);
    if (lVar8 != 0) {
      input_unregister_device(lVar8);
      input_free_device(lVar8);
      puVar9[10] = 0;
      puVar9[0xb] = 0;
    }
    mutex_lock(device_list_lock);
    plVar7 = *(long **)(puVar9 + 4);
    puVar1 = puVar9 + 2;
    if (((uint *)*plVar7 == puVar1) && (lVar8 = *(long *)puVar1, *(uint **)(lVar8 + 8) == puVar1)) {
      *(long **)(lVar8 + 8) = plVar7;
      *plVar7 = lVar8;
    }
    else {
      __list_del_entry_valid_or_report();
    }
    uVar6 = gf_class;
    puVar9[2] = 0x100;
    puVar9[3] = 0xdead0000;
    puVar9[4] = 0x122;
    puVar9[5] = 0xdead0000;
    device_destroy(uVar6,*puVar9);
    uVar3 = *puVar9;
    puVar2 = &minors + ((ulong)(uVar3 >> 6) & 0x3fff);
    Hint_Prefetch(puVar2,2,0,1);
    do {
      cVar4 = '\x01';
      bVar5 = (bool)ExclusiveMonitorPass(puVar2,0x10);
      if (bVar5) {
        *puVar2 = *puVar2 & (1L << ((ulong)uVar3 & 0x3f) ^ 0xffffffffffffffffU);
        cVar4 = ExclusiveMonitorsStatus();
      }
    } while (cVar4 != '\0');
    mutex_unlock(device_list_lock);
    if (*(long *)(puVar9 + 0x28) != 0) {
      if (cookie != 0) {
        panel_event_notifier_unregister();
        cookie = 0;
      }
      cancel_delayed_work_sync(puVar9 + 0x2a);
      destroy_workqueue(*(undefined8 *)(puVar9 + 0x28));
    }
  }
  return;
}



/* 00102430 goodixfp_init_drm_notifier */

void goodixfp_init_drm_notifier(long param_1)

{
  int iVar1;
  undefined *puVar2;
  uint uVar3;
  
  _printk(&DAT_001031a8,"goodixfp_init_drm_notifier");
  iVar1 = goodixfp_drm_get_pannel(*(undefined8 *)(*(long *)(param_1 + -0x90) + 0x2f8));
  if (iVar1 != 0) {
    uVar3 = 0;
    do {
      _printk(&DAT_001037fb,"goodixfp_init_drm_notifier");
      usleep_range_state(1000000,0xf4628,2);
      iVar1 = goodixfp_drm_get_pannel(*(undefined8 *)(*(long *)(param_1 + -0x90) + 0x2f8));
      if (0x17 < uVar3) break;
      uVar3 = uVar3 + 1;
    } while (iVar1 != 0);
    if (iVar1 != 0) {
      _printk(&DAT_001035ef,"goodixfp_init_drm_notifier");
    }
  }
  if (goodixfp_active_panel == 0) {
    puVar2 = &DAT_001033b6;
  }
  else {
    _printk(&DAT_00103652,"goodixfp_init_drm_notifier");
    cookie = panel_event_notifier_register
                       (0,2,goodixfp_active_panel,goodix_fb_state_chg_callback,param_1 + -0xa8);
    if (cookie != 0) {
      return;
    }
    puVar2 = &DAT_00102c50;
    cookie = 0;
  }
  _printk(puVar2,"goodixfp_init_drm_notifier");
  return;
}



/* 00102568 list_del */

void list_del(void)

{
  long lVar1;
  long *plVar2;
  undefined8 *puVar3;
  undefined8 *extraout_x9;
  
  plVar2 = DAT_00103cf0;
  lVar1 = DAT_00103ce8;
  puVar3 = &DAT_00103ce8;
  if (((undefined8 *)*DAT_00103cf0 == &DAT_00103ce8) &&
     (*(undefined8 **)(DAT_00103ce8 + 8) == &DAT_00103ce8)) {
    *(long **)(DAT_00103ce8 + 8) = DAT_00103cf0;
    *plVar2 = lVar1;
  }
  else {
    __list_del_entry_valid_or_report(&DAT_00103ce8);
    puVar3 = extraout_x9;
  }
  *puVar3 = 0xdead000000000100;
  puVar3[1] = 0xdead000000000122;
  return;
}



/* 001025d4 goodixfp_drm_get_pannel */

void goodixfp_drm_get_pannel(long param_1)

{
  long lVar1;
  int iVar2;
  int iVar3;
  ulong uVar4;
  undefined *puVar5;
  undefined8 uVar6;
  int iVar7;
  long local_88 [11];
  
  lVar1 = sp_el0;
  local_88[10] = *(long *)(lVar1 + 0x710);
  if (param_1 == 0) {
    puVar5 = &DAT_00102b76;
  }
  else {
    iVar2 = of_count_phandle_with_args(param_1,"panel",0);
    if (iVar2 < 1) {
      puVar5 = &DAT_001033d7;
    }
    else {
      _printk(&DAT_00103b8b,"goodixfp_drm_get_pannel",iVar2);
      iVar7 = 0;
      do {
        local_88[8] = 0;
        local_88[9] = 0;
        local_88[6] = 0;
        local_88[7] = 0;
        local_88[4] = 0;
        local_88[5] = 0;
        local_88[2] = 0;
        local_88[3] = 0;
        local_88[0] = 0;
        local_88[1] = 0;
        iVar3 = __of_parse_phandle_with_args(param_1,"panel",0,0,iVar7,local_88);
        if ((((iVar3 == 0) && (local_88[0] != 0)) && (uVar4 = of_drm_find_panel(), uVar4 != 0)) &&
           (uVar4 < 0xfffffffffffff001)) {
          goodixfp_active_panel = uVar4;
          _printk(&DAT_00103283,"goodixfp_drm_get_pannel");
          _printk(&DAT_00103137,"goodixfp_drm_get_pannel",uVar4);
          uVar6 = 0;
          goto LAB_00102710;
        }
        iVar7 = iVar7 + 1;
      } while (iVar2 != iVar7);
      puVar5 = &DAT_00102beb;
    }
  }
  _printk(puVar5,"goodixfp_drm_get_pannel");
  uVar6 = 0xffffffed;
LAB_00102710:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_88[10]) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar6);
}



/* 00102744 goodix_fb_state_chg_callback */

void goodix_fb_state_chg_callback(int param_1,int *param_2,long param_3)

{
  long lVar1;
  undefined *puVar2;
  undefined1 local_3c [4];
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_3c[0] = 0;
  if ((param_2 == (int *)0x0) || (param_3 == 0)) {
    puVar2 = &DAT_00103486;
  }
  else {
    if (*(char *)(param_3 + 0x70) != '\0') {
      _printk(&DAT_00102e85,"goodix_fb_state_chg_callback");
      if (param_1 != 0) goto LAB_001027c8;
      if (*param_2 == 1) {
        _printk(&DAT_00103829,"goodix_fb_state_chg_callback");
        *(undefined1 *)(param_3 + 0x71) = 0;
        _printk(&DAT_00103615,"goodix_fb_state_chg_callback",0);
        local_3c[0] = 3;
      }
      else {
        if (*param_2 != 2) {
          puVar2 = &DAT_00103147;
          goto LAB_00102790;
        }
        _printk(&DAT_00103ba9,"goodix_fb_state_chg_callback");
        *(undefined1 *)(param_3 + 0x71) = 1;
        _printk(&DAT_00103615,"goodix_fb_state_chg_callback",1);
        local_3c[0] = 2;
      }
      sendnlmsg(local_3c);
      goto LAB_001027c8;
    }
    puVar2 = &DAT_001032a3;
  }
LAB_00102790:
  _printk(puVar2,"goodix_fb_state_chg_callback");
LAB_001027c8:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010289c nl_data_ready */

void nl_data_ready(long param_1)

{
  uint *puVar1;
  uint uVar2;
  char cVar3;
  bool bVar4;
  undefined8 uVar5;
  
  puVar1 = (uint *)(param_1 + 0xec);
  Hint_Prefetch(puVar1,2,0,1);
  do {
    uVar2 = *puVar1;
    cVar3 = '\x01';
    bVar4 = (bool)ExclusiveMonitorPass(puVar1,0x10);
    if (bVar4) {
      *puVar1 = uVar2 + 1;
      cVar3 = ExclusiveMonitorsStatus();
    }
  } while (cVar3 != '\0');
  if (uVar2 == 0) {
    uVar5 = 2;
  }
  else {
    if (-1 < (int)(uVar2 + 1 | uVar2)) goto LAB_001028d0;
    uVar5 = 1;
  }
  refcount_warn_saturate(puVar1,uVar5);
LAB_001028d0:
  if (0xf < *(uint *)(param_1 + 0x70)) {
    pid = *(undefined4 *)(param_1 + 0x34);
    _printk(&DAT_00103325,"nl_data_ready");
  }
  sk_skb_reason_drop(0,param_1,2);
  _printk(&DAT_00102f63,"nl_data_ready",pid);
  return;
}



/* 00102960 netlink_exit */

void netlink_exit(void)

{
  if (nl_sk != 0) {
    netlink_kernel_release();
    nl_sk = 0;
  }
  _printk(&DAT_00102d12,"netlink_exit");
  return;
}



/* 001029bc init_module */

int init_module(void)

{
  int iVar1;
  
  SPIDEV_MAJOR = __register_chrdev(0,0,0x100,"goodix_fp_spi",&gf_fops);
  if (SPIDEV_MAJOR < 0) {
    _printk(&DAT_00103842,"zte_fp_init");
    iVar1 = SPIDEV_MAJOR;
  }
  else {
    gf_class = class_create("goodix_fp");
    if (gf_class < 0xfffffffffffff001) {
      iVar1 = __platform_driver_register(gf_driver,&__this_module);
      if (iVar1 != 0) {
        _printk(&DAT_001036ae,"zte_fp_init");
        class_destroy(gf_class);
        __unregister_chrdev(SPIDEV_MAJOR,0,0x100,"goodix_fp_spi");
      }
      netlink_init();
      _printk(&DAT_001038ca,"zte_fp_init",iVar1);
      iVar1 = 0;
    }
    else {
      _printk(&DAT_001034a7,"zte_fp_init");
      iVar1 = (int)gf_class;
      __unregister_chrdev(SPIDEV_MAJOR,0,0x100,"goodix_fp_spi");
    }
  }
  return iVar1;
}



/* 00102af4 cleanup_module */

void cleanup_module(void)

{
  netlink_exit();
  platform_driver_unregister(gf_driver);
  class_destroy(gf_class);
  __unregister_chrdev(SPIDEV_MAJOR,0,0x100,"goodix_fp_spi");
  return;
}



