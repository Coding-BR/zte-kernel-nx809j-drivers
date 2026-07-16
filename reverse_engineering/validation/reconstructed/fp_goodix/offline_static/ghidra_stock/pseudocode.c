/* 00100824 gf_ioctl */

void gf_ioctl(undefined8 param_1,ulong param_2,ulong param_3)

{
  undefined8 uVar1;
  long lVar2;
  undefined *puVar3;
  uint uVar4;
  int iVar5;
  undefined8 *puVar6;
  ulong uVar7;
  undefined1 local_50 [4];
  undefined4 local_4c;
  undefined8 local_48;
  undefined8 local_40;
  long local_38;
  
  lVar2 = sp_el0;
  uVar4 = (uint)param_2;
  local_38 = *(long *)(lVar2 + 0x710);
  local_4c = 0;
  local_50[0] = 0x19;
  if ((uVar4 & 0xff00) != 0x6700) {
LAB_00100b70:
    uVar1 = 0xffffffffffffffed;
    goto LAB_00100b74;
  }
  local_48 = 0;
  local_40 = 0;
  if ((int)uVar4 < 0) {
    puVar6 = (undefined8 *)sp_el0;
LAB_00100880:
    if (((*(byte *)((long)puVar6 + 0x46) >> 5 & 1) != 0) ||
       (uVar7 = param_3, ((uint)*puVar6 >> 0x1a & 1) != 0)) {
      uVar7 = param_3 & (long)(param_3 << 8) >> 8;
    }
    if (uVar7 <= 0x8000000000 - (ulong)(uVar4 >> 0x10 & 0x3fff)) goto LAB_001008b8;
LAB_001008b0:
    uVar1 = 0xfffffffffffffff2;
    goto LAB_00100b74;
  }
  if (uVar4 >> 0x1e != 0) {
    puVar6 = (undefined8 *)sp_el0;
    goto LAB_00100880;
  }
LAB_001008b8:
  if (DAT_00104080 == '\0') {
    if (1 < uVar4 - 0x6707) {
      _printk(&DAT_00102b98);
      goto LAB_00100b70;
    }
    param_2 = param_2 & 0xffffffff;
    _printk(&DAT_00102c51);
  }
  uVar1 = 0;
  iVar5 = (int)param_2;
  if (iVar5 < 0x6707) {
    if (iVar5 < 0x6703) {
      if (iVar5 < 0x6701) {
        if (iVar5 == -0x7ffe9900) {
          _printk(&DAT_00102bc5,"gf_ioctl");
          lVar2 = _inline_copy_to_user(param_3,local_50);
          uVar1 = 0;
          if (lVar2 != 0) {
            uVar1 = 0xfffffffffffffff2;
          }
          goto LAB_00100b74;
        }
        if (iVar5 != -0x7ffe98f5) goto LAB_00100ba0;
        puVar3 = &DAT_00102fd3;
      }
      else {
        if (iVar5 != 0x6701) {
          if (iVar5 != 0x6702) goto LAB_00100ba0;
          _printk(&DAT_00102c69,"gf_ioctl");
          gf_hw_reset(&gf,5);
          goto LAB_00100c00;
        }
        puVar3 = &DAT_001034e7;
      }
LAB_00100bf4:
      _printk(puVar3,"gf_ioctl");
    }
    else {
      if (iVar5 == 0x6706) goto LAB_00100b74;
      if (iVar5 == 0x6703) {
        _printk(&DAT_001037b7,"gf_ioctl");
        gf_enable_irq();
      }
      else {
        if (iVar5 != 0x6704) goto LAB_00100ba0;
        _printk(&DAT_001036da,"gf_ioctl");
        gf_disable_irq(&gf);
      }
    }
    goto LAB_00100c00;
  }
  if (iVar5 < 0x40046705) {
    if (iVar5 < 0x670a) {
      if (iVar5 == 0x6707) {
        _printk(&DAT_00102e9c,"gf_ioctl");
        if (DAT_00104080 == '\x01') {
          _printk(&DAT_001031fd);
        }
        else {
          gf_power_on(&gf);
        }
        uVar1 = 0;
        DAT_00104080 = '\x01';
        goto LAB_00100b74;
      }
      if (iVar5 == 0x6708) {
        _printk(&DAT_00102c87,"gf_ioctl");
        if (DAT_00104080 == '\0') {
          _printk(&DAT_00102b20);
        }
        else {
          gf_power_off(&gf);
        }
        uVar1 = 0;
        DAT_00104080 = '\0';
        goto LAB_00100b74;
      }
    }
    else {
      if (iVar5 == 0x670a) {
        puVar3 = &DAT_00102faa;
        goto LAB_00100bf4;
      }
      if (iVar5 == 0x670c) {
        _printk(&DAT_00102be2,"gf_ioctl");
        gf_cleanup(&gf);
        goto LAB_00100c00;
      }
    }
LAB_00100ba0:
    puVar3 = &DAT_00103941;
LAB_00100ba8:
    _printk(puVar3,param_2);
  }
  else {
    if (iVar5 < 0x4004670e) {
      if (iVar5 == 0x40046705) goto LAB_00100b74;
      goto LAB_00100ba0;
    }
    if (iVar5 != 0x4004670e) {
      if (iVar5 == 0x40086709) {
        lVar2 = _inline_copy_from_user(&local_48,param_3,8);
        if (lVar2 != 0) {
          puVar3 = &DAT_00103bc9;
          goto LAB_00100c9c;
        }
        if ((int)local_48 == 1) {
          iVar5 = 0x66;
        }
        else if ((int)local_48 == 5) {
          iVar5 = 0xd4;
        }
        else {
          iVar5 = (int)local_48;
          if ((int)local_48 == 2) {
            iVar5 = 0x74;
          }
        }
        _printk(&DAT_00102d5e,"gf_kernel_key_input",iVar5,local_48 & 0xffffffff,local_48._4_4_);
        if (((int)local_48 == 5) || ((int)local_48 == 2)) {
          if (local_48._4_4_ != 1) goto LAB_00100c00;
          input_event(DAT_00104040,1,iVar5,1);
          input_event(DAT_00104040,0,0,0);
          input_event(DAT_00104040,1,iVar5,0);
          input_event(DAT_00104040,0,0,0);
        }
        if ((int)local_48 == 1) {
          input_event(DAT_00104040,1,iVar5,local_48._4_4_ != 0);
          input_event(DAT_00104040,0,0,0);
        }
        goto LAB_00100c00;
      }
      if (iVar5 != 0x4008670d) goto LAB_00100ba0;
      _printk(&DAT_00103aec,"gf_ioctl");
      lVar2 = _inline_copy_from_user(&local_40,param_3,8);
      if (lVar2 != 0) goto LAB_001008b0;
      _printk(&DAT_00102cad,local_40 & 0xff);
      _printk(&DAT_00103927,local_40._1_1_);
      param_2 = local_40 >> 0x10 & 0xff;
      puVar3 = &DAT_00103504;
      goto LAB_00100ba8;
    }
    _printk(&DAT_00102f88,"gf_ioctl");
    lVar2 = _inline_copy_from_user(&local_4c,param_3,4);
    if (lVar2 != 0) {
      puVar3 = &DAT_001038ec;
LAB_00100c9c:
      _printk(puVar3);
      uVar1 = 0xfffffffffffffff2;
      goto LAB_00100b74;
    }
    nav_event_input(local_4c);
  }
LAB_00100c00:
  uVar1 = 0;
LAB_00100b74:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) != local_38) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar1);
  }
  return;
}



/* 00100dc4 gf_compat_ioctl */

void gf_compat_ioctl(undefined8 param_1,undefined8 param_2,undefined4 param_3)

{
  gf_ioctl(param_1,param_2,param_3);
  return;
}



/* 00100de8 gf_open */

int gf_open(long param_1,long param_2)

{
  undefined *puVar1;
  int iVar2;
  undefined *puVar3;
  undefined8 uVar4;
  undefined **ppuVar5;
  undefined **ppuVar6;
  
  _printk(&DAT_00103e34,"gf_open");
  mutex_lock(device_list_lock);
  ppuVar6 = &device_list;
  do {
    ppuVar6 = (undefined **)*ppuVar6;
    ppuVar5 = ppuVar6 + -1;
    if (ppuVar6 == &device_list) {
      iVar2 = -6;
      goto LAB_00100e6c;
    }
  } while (*(int *)ppuVar5 != *(int *)(param_1 + 0x4c));
  _printk(&DAT_00103366);
  iVar2 = 0;
LAB_00100e6c:
  puVar3 = (undefined *)zlog_register_client(&goodix_zlog_fp_dev);
  ppuVar6[0xe] = puVar3;
  puVar1 = &DAT_00103661;
  if (puVar3 != (undefined *)0x0) {
    puVar1 = &DAT_0010362a;
  }
  _printk(puVar1,"gf_open");
  if (ppuVar6 == &device_list) {
    _printk(&DAT_00103718,*(uint *)(param_1 + 0x4c) & 0xfffff);
  }
  else {
    *(int *)(ppuVar6 + 6) = *(int *)(ppuVar6 + 6) + 1;
    *(undefined ***)(param_2 + 0x20) = ppuVar5;
    nonseekable_open(param_1,param_2);
    _printk(&DAT_0010309e,*(undefined4 *)(ppuVar6 + 8));
    if (*(int *)(ppuVar6 + 6) == 1) {
      iVar2 = gf_parse_dts(ppuVar5);
      if (iVar2 != 0) {
LAB_00100f28:
        mutex_unlock(device_list_lock);
        return iVar2;
      }
      _printk(&DAT_00103408,"irq_setup");
      uVar4 = gf_irq_num(ppuVar5);
      *(int *)(ppuVar6 + 8) = (int)uVar4;
      iVar2 = request_threaded_irq(uVar4,0,gf_irq,0x2001,&DAT_001039ff,ppuVar5);
      if (iVar2 != 0) {
        _printk(&DAT_00102ce7);
        gf_cleanup(ppuVar5);
        goto LAB_00100f28;
      }
      irq_set_irq_wake(*(undefined4 *)(ppuVar6 + 8),1);
      *(undefined4 *)((long)ppuVar6 + 0x44) = 1;
    }
    gf_hw_reset(ppuVar5,5);
    iVar2 = 0;
    *(undefined1 *)(ppuVar6 + 0xd) = 1;
  }
  mutex_unlock(device_list_lock);
  _printk(&DAT_00103b52,"gf_open");
  return iVar2;
}



/* 00100fe8 gf_release */

undefined8 gf_release(undefined8 param_1,long param_2)

{
  int iVar1;
  long lVar2;
  
  _printk(&DAT_00102b4e,"gf_release");
  mutex_lock(device_list_lock);
  lVar2 = *(long *)(param_2 + 0x20);
  *(undefined8 *)(param_2 + 0x20) = 0;
  iVar1 = *(int *)(lVar2 + 0x38) + -1;
  *(int *)(lVar2 + 0x38) = iVar1;
  if (iVar1 == 0) {
    _printk(&DAT_00103997,*(undefined4 *)(lVar2 + 0x48));
    irq_set_irq_wake(*(undefined4 *)(lVar2 + 0x48),0);
    if (*(int *)(lVar2 + 0x4c) == 0) {
      _printk(&DAT_00103123);
    }
    else {
      *(undefined4 *)(lVar2 + 0x4c) = 0;
      disable_irq(*(undefined4 *)(lVar2 + 0x48));
    }
    free_irq(*(undefined4 *)(lVar2 + 0x48),lVar2);
    gf_cleanup(lVar2);
    *(undefined1 *)(lVar2 + 0x70) = 0;
    lVar2 = *(long *)(lVar2 + 0x78);
  }
  else {
    lVar2 = *(long *)(lVar2 + 0x78);
  }
  if (lVar2 != 0) {
    zlog_unregister_client();
    _printk(&DAT_0010341f,"gf_release");
  }
  mutex_unlock(device_list_lock);
  return 0;
}



/* 001010d8 gf_disable_irq */

void gf_disable_irq(long param_1)

{
  if (*(int *)(param_1 + 0x4c) == 0) {
    _printk(&DAT_00103123);
  }
  else {
    *(undefined4 *)(param_1 + 0x4c) = 0;
    disable_irq(*(undefined4 *)(param_1 + 0x48));
  }
  return;
}



/* 00101118 gf_enable_irq */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void gf_enable_irq(void)

{
  if (_DAT_0010405c == 0) {
    enable_irq(_DAT_00104058);
    _DAT_0010405c = 1;
  }
  else {
    _printk(&DAT_00103b0e);
  }
  return;
}



/* 0010116c nav_event_input */

void nav_event_input(int param_1)

{
  undefined *puVar1;
  undefined8 uVar2;
  
  if (param_1 < 6) {
    if (param_1 < 3) {
      if (param_1 == 1) {
        puVar1 = &DAT_0010360b;
LAB_001012d8:
        _printk(puVar1,"nav_event_input");
        return;
      }
      if (param_1 == 2) {
        puVar1 = &DAT_00103e13;
        goto LAB_001012d8;
      }
    }
    else {
      if (param_1 == 3) {
        uVar2 = 0x67;
        goto LAB_001011b0;
      }
      if (param_1 == 4) {
        _printk(&DAT_00102ec1,"nav_event_input");
        uVar2 = 0x6c;
        goto LAB_001011b0;
      }
      if (param_1 == 5) {
        _printk(&DAT_001036fe,"nav_event_input");
        uVar2 = 0x69;
        goto LAB_001011b0;
      }
    }
  }
  else if (param_1 < 8) {
    if (param_1 == 7) {
      uVar2 = 0x72;
      goto LAB_001011b0;
    }
    if (param_1 == 6) {
      _printk(&DAT_0010373d,"nav_event_input");
      uVar2 = 0x6a;
      goto LAB_001011b0;
    }
  }
  else {
    if (param_1 == 8) {
      _printk(&DAT_00102ccc,"nav_event_input");
      uVar2 = 0xd8;
      goto LAB_001011b0;
    }
    if (param_1 == 9) {
      _printk(&DAT_0010323e,"nav_event_input");
      uVar2 = 0xd9;
      goto LAB_001011b0;
    }
    if (param_1 == 10) {
      _printk(&DAT_001037da,"nav_event_input");
      uVar2 = 0x73;
      goto LAB_001011b0;
    }
  }
  _printk(&DAT_001032de,"nav_event_input");
  uVar2 = 0;
LAB_001011b0:
  input_event(DAT_00104040,1,uVar2,1);
  input_event(DAT_00104040,0,0,0);
  input_event(DAT_00104040,1,uVar2,0);
  input_event(DAT_00104040,0,0,0);
  return;
}



/* 0010133c _inline_copy_to_user */

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



/* 001013e8 _inline_copy_from_user */

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



/* 001014d8 gf_irq */

undefined8 gf_irq(void)

{
  long lVar1;
  undefined1 local_1c [4];
  long local_18;
  
  lVar1 = sp_el0;
  local_18 = *(long *)(lVar1 + 0x710);
  local_1c[0] = 1;
  pm_wakeup_ws_event(fp_wakelock,0x9c4,0);
  _printk(&DAT_00103ca4);
  sendnlmsg(local_1c);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_18) {
    return 1;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00101554 gf_probe */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

ulong gf_probe(long param_1)

{
  ulong *puVar1;
  char cVar2;
  bool bVar3;
  ulong uVar4;
  ulong uVar5;
  
  _printk(&DAT_00102c01,"gf_probe");
  DAT_00104018 = &DAT_00104018;
  DAT_00104020 = (undefined **)&DAT_00104018;
  _DAT_0010404c = 0xffffffeaffffffea;
  _DAT_00104054 = 0xffffffea;
  _DAT_00104080 = 0;
  _DAT_00104028 = param_1;
  DAT_001040b0 = alloc_workqueue(&DAT_0010345a,0x6000a,1,"screen_state_wq");
  if (DAT_001040b0 != 0) {
    _DAT_001040b8 = 0xfffffffe00000;
    _DAT_001040c0 = &DAT_001040c0;
    _DAT_001040c8 = &DAT_001040c0;
    _DAT_001040d0 = goodixfp_init_drm_notifier;
    init_timer_key(&DAT_001040d8,&delayed_work_timer_fn,0x200000,0,0);
    queue_delayed_work_on(0x20,DAT_001040b0,&DAT_001040b8,0x4e2);
  }
  mutex_lock(device_list_lock);
  if ((minors | 0xffffffff00000000) == 0xffffffffffffffff) {
    mutex_unlock(device_list_lock);
    uVar4 = 0xffffffed;
  }
  else {
    uVar4 = ~(minors | 0xffffffff00000000);
    uVar4 = (uVar4 & 0xaaaaaaaaaaaaaaaa) >> 1 | (uVar4 & 0x5555555555555555) << 1;
    uVar4 = (uVar4 & 0xcccccccccccccccc) >> 2 | (uVar4 & 0x3333333333333333) << 2;
    uVar4 = (uVar4 & 0xf0f0f0f0f0f0f0f0) >> 4 | (uVar4 & 0xf0f0f0f0f0f0f0f) << 4;
    uVar4 = (uVar4 & 0xff00ff00ff00ff00) >> 8 | (uVar4 & 0xff00ff00ff00ff) << 8;
    uVar4 = (uVar4 & 0xffff0000ffff0000) >> 0x10 | (uVar4 & 0xffff0000ffff) << 0x10;
    uVar5 = LZCOUNT(uVar4 >> 0x20 | uVar4 << 0x20);
    gf = (uint)uVar5 | SPIDEV_MAJOR << 0x14;
    uVar4 = device_create(gf_class,_DAT_00104028 + 0x10,gf,&gf,"goodix_fp");
    if ((uVar4 < 0xfffffffffffff001) || ((int)uVar4 == 0)) {
      Hint_Prefetch(0x1041e0,2,0,1);
      do {
        cVar2 = '\x01';
        bVar3 = (bool)ExclusiveMonitorPass(0x1041e0,0x10);
        if (bVar3) {
          cVar2 = ExclusiveMonitorsStatus();
          minors = minors | 1L << (uVar5 & 0x3f);
        }
      } while (cVar2 != '\0');
      if ((*(undefined ***)(device_list + 8) == &device_list) &&
         ((undefined8 **)device_list != &DAT_00104018)) {
        *(undefined8 ***)(device_list + 8) = &DAT_00104018;
        DAT_00104018 = (undefined8 *)device_list;
        DAT_00104020 = &device_list;
        device_list = (undefined *)&DAT_00104018;
      }
      else {
        __list_add_valid_or_report(&DAT_00104018,&device_list);
      }
      mutex_unlock(device_list_lock);
      DAT_00104040 = (undefined8 *)input_allocate_device();
      if (DAT_00104040 == (undefined8 *)0x0) {
        _printk(&DAT_00103869,"gf_probe");
        uVar4 = 0xfffffff4;
      }
      else {
        input_set_capability(DAT_00104040,1,0x66);
        input_set_capability(DAT_00104040,1,0x8b);
        input_set_capability(DAT_00104040,1,0x9e);
        input_set_capability(DAT_00104040,1,0x74);
        input_set_capability(DAT_00104040,1,0x67);
        input_set_capability(DAT_00104040,1,0x6c);
        input_set_capability(DAT_00104040,1,0x6a);
        input_set_capability(DAT_00104040,1,0x69);
        input_set_capability(DAT_00104040,1,0xd4);
        input_set_capability(DAT_00104040,1,0x72);
        input_set_capability(DAT_00104040,1,0x73);
        input_set_capability(DAT_00104040,1,0xd9);
        input_set_capability(DAT_00104040,1,0xd8);
        *DAT_00104040 = "goodix_fp";
        uVar5 = input_register_device(DAT_00104040);
        uVar4 = uVar5 & 0xffffffff;
        if ((int)uVar5 == 0) {
          wakeup_source_add(fp_wakelock);
          _printk(&DAT_00103a5c,1,2,4,2);
          goto LAB_001016d4;
        }
        _printk(&DAT_001039ba);
        if (DAT_00104040 != (undefined8 *)0x0) {
          input_free_device();
        }
      }
      if (gf != 0) {
        _printk(&DAT_0010325e,uVar4);
        mutex_lock(device_list_lock);
        list_del();
        device_destroy(gf_class,gf);
        uVar5 = (ulong)gf;
        puVar1 = &minors + ((ulong)(gf >> 6) & 0x3fff);
        Hint_Prefetch(puVar1,2,0,1);
        do {
          cVar2 = '\x01';
          bVar3 = (bool)ExclusiveMonitorPass(puVar1,0x10);
          if (bVar3) {
            *puVar1 = *puVar1 & (1L << (uVar5 & 0x3f) ^ 0xffffffffffffffffU);
            cVar2 = ExclusiveMonitorsStatus();
          }
        } while (cVar2 != '\0');
        mutex_unlock(device_list_lock);
      }
    }
    else {
      gf = 0;
    }
  }
  gf_cleanup(&gf);
  _DAT_00104080 = _DAT_00104080 & 0xff00;
LAB_001016d4:
  return uVar4 & 0xffffffff;
}



/* 00101968 gf_remove */

void gf_remove(void)

{
  ulong *puVar1;
  char cVar2;
  bool bVar3;
  ulong uVar4;
  
  _printk(&DAT_00103522,"gf_remove");
  wakeup_source_remove(fp_wakelock);
  if (DAT_00104040 != 0) {
    input_unregister_device();
  }
  input_free_device(DAT_00104040);
  mutex_lock(device_list_lock);
  if (((undefined8 *)*DAT_00104020 == &DAT_00104018) &&
     (*(undefined8 **)(DAT_00104018 + 8) == &DAT_00104018)) {
    *(long **)(DAT_00104018 + 8) = DAT_00104020;
    *DAT_00104020 = DAT_00104018;
  }
  else {
    __list_del_entry_valid_or_report(&DAT_00104018);
  }
  DAT_00104018 = 0xdead000000000100;
  DAT_00104020 = (long *)0xdead000000000122;
  device_destroy(gf_class,gf);
  uVar4 = (ulong)gf;
  puVar1 = &minors + ((ulong)(gf >> 6) & 0x3fff);
  Hint_Prefetch(puVar1,2,0,1);
  do {
    cVar2 = '\x01';
    bVar3 = (bool)ExclusiveMonitorPass(puVar1,0x10);
    if (bVar3) {
      *puVar1 = *puVar1 & (1L << (uVar4 & 0x3f) ^ 0xffffffffffffffffU);
      cVar2 = ExclusiveMonitorsStatus();
    }
  } while (cVar2 != '\0');
  if (DAT_001040b0 != 0) {
    panel_event_notifier_unregister(cookie);
    cancel_delayed_work_sync(&DAT_001040b8);
    destroy_workqueue(DAT_001040b0);
  }
  mutex_unlock(device_list_lock);
  return;
}



/* 00101ac0 goodixfp_init_drm_notifier */

void goodixfp_init_drm_notifier(long param_1)

{
  int iVar1;
  int iVar2;
  
  _printk(&DAT_00103a02,"goodixfp_init_drm_notifier");
  iVar1 = goodixfp_drm_get_pannel(*(undefined8 *)(*(long *)(param_1 + -0x90) + 0x2f8));
  iVar2 = 0;
  do {
    while (iVar1 == 0) {
      iVar2 = iVar2 + 1;
      if (iVar2 == 0x19) goto LAB_00101b60;
    }
    _printk(&DAT_00103962,"goodixfp_init_drm_notifier");
    usleep_range_state(1000000,0xf4628,2);
    iVar1 = goodixfp_drm_get_pannel(*(undefined8 *)(*(long *)(param_1 + -0x90) + 0x2f8));
    iVar2 = iVar2 + 1;
  } while (iVar2 != 0x19);
  if (iVar1 != 0) {
    _printk(&DAT_00103a1b,"goodixfp_init_drm_notifier");
  }
LAB_00101b60:
  if (goodixfp_active_panel != 0) {
    _printk(&DAT_00103c0a,"goodixfp_init_drm_notifier");
    cookie = panel_event_notifier_register
                       (1,3,goodixfp_active_panel,goodix_fb_state_chg_callback,param_1 + -0xa8);
    if (cookie == 0) {
      _printk(&DAT_00102ff7,"goodixfp_init_drm_notifier");
    }
  }
  return;
}



/* 00101bf8 list_del */

void list_del(void)

{
  long lVar1;
  long *plVar2;
  undefined8 *puVar3;
  undefined8 *extraout_x9;
  
  plVar2 = DAT_00104020;
  lVar1 = DAT_00104018;
  puVar3 = &DAT_00104018;
  if (((undefined8 *)*DAT_00104020 == &DAT_00104018) &&
     (*(undefined8 **)(DAT_00104018 + 8) == &DAT_00104018)) {
    *(long **)(DAT_00104018 + 8) = DAT_00104020;
    *plVar2 = lVar1;
  }
  else {
    __list_del_entry_valid_or_report(&DAT_00104018);
    puVar3 = extraout_x9;
  }
  *puVar3 = 0xdead000000000100;
  puVar3[1] = 0xdead000000000122;
  return;
}



/* 00101c64 goodixfp_drm_get_pannel */

int goodixfp_drm_get_pannel(long param_1)

{
  undefined8 uVar1;
  long lVar2;
  int iVar3;
  int iVar4;
  ulong uVar5;
  undefined *puVar6;
  int iVar7;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  undefined8 uStack_70;
  undefined8 local_68;
  undefined8 uStack_60;
  undefined8 local_58;
  undefined8 uStack_50;
  undefined8 local_48;
  undefined8 uStack_40;
  long local_38;
  
  lVar2 = sp_el0;
  local_38 = *(long *)(lVar2 + 0x710);
  if (param_1 == 0) {
    _printk(&DAT_00103468);
    iVar3 = -0x13;
  }
  else {
    iVar3 = of_count_phandle_with_args(param_1,"panel",0);
    if (iVar3 < 1) {
      puVar6 = &DAT_0010338a;
    }
    else {
      iVar7 = 0;
      do {
        local_48 = 0;
        uStack_40 = 0;
        local_58 = 0;
        uStack_50 = 0;
        local_68 = 0;
        uStack_60 = 0;
        local_78 = 0;
        uStack_70 = 0;
        local_88 = 0;
        uStack_80 = 0;
        iVar4 = __of_parse_phandle_with_args(param_1,"panel",0,0,iVar7,&local_88);
        uVar1 = local_88;
        if (iVar4 != 0) {
          uVar1 = 0;
        }
        uVar5 = of_drm_find_panel(uVar1);
        if (uVar5 < 0xfffffffffffff001) {
          _printk(&DAT_001033b2,"goodixfp_drm_get_pannel");
          goodixfp_active_panel = uVar5;
          _printk(&DAT_00103cc7,"goodixfp_drm_get_pannel");
          iVar3 = 0;
          goto LAB_00101d80;
        }
        iVar7 = iVar7 + 1;
      } while (iVar3 != iVar7);
      puVar6 = &DAT_00103152;
    }
    _printk(puVar6,"goodixfp_drm_get_pannel");
  }
LAB_00101d80:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_38) {
    return iVar3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00101db8 goodix_fb_state_chg_callback */

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
    puVar2 = &DAT_00103e4c;
  }
  else {
    if (*(char *)(param_3 + 0x70) != '\0') {
      _printk(&DAT_001030d5,"goodix_fb_state_chg_callback");
      if (param_1 != 1) goto LAB_00101e40;
      if (*param_2 == 1) {
        _printk(&DAT_00103a89,"goodix_fb_state_chg_callback");
        *(undefined1 *)(param_3 + 0x71) = 1;
        _printk(&DAT_0010359b,"goodix_fb_state_chg_callback");
        local_3c[0] = 2;
      }
      else {
        if (*param_2 != 2) {
          puVar2 = &DAT_00103cfc;
          goto LAB_00101e04;
        }
        _printk(&DAT_00102f44,"goodix_fb_state_chg_callback");
        *(undefined1 *)(param_3 + 0x71) = 0;
        _printk(&DAT_0010302c,"goodix_fb_state_chg_callback");
        local_3c[0] = 3;
      }
      sendnlmsg(local_3c);
      goto LAB_00101e40;
    }
    puVar2 = &DAT_00103176;
  }
LAB_00101e04:
  _printk(puVar2,"goodix_fb_state_chg_callback");
LAB_00101e40:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00101f1c sendnlmsg */

uint sendnlmsg(undefined1 *param_1)

{
  uint uVar1;
  long lVar2;
  long lVar3;
  
  uVar1 = 0xffffffed;
  if (((param_1 != (undefined1 *)0x0) && (nl_sk != 0)) && (pid != 0)) {
    lVar2 = __alloc_skb(0x30,0x820,0,0xffffffff);
    if (lVar2 == 0) {
      uVar1 = 0xfffffff4;
    }
    else if (((*(int *)(lVar2 + 0x74) == 0) &&
             (0x2f < *(int *)(lVar2 + 0xd4) - *(int *)(lVar2 + 0xd0))) &&
            (lVar3 = __nlmsg_put(lVar2,0,0,0,0x20,0), lVar3 != 0)) {
      *(undefined8 *)(lVar2 + 0x34) = 0;
      *(undefined1 *)(lVar3 + 0x10) = *param_1;
      _printk(&DAT_00103b71);
      uVar1 = netlink_unicast(nl_sk,lVar2,pid,0x40);
      _printk(&DAT_00103b97,pid,uVar1);
      uVar1 = uVar1 & (int)uVar1 >> 0x1f;
    }
    else {
      sk_skb_reason_drop(0,lVar2,2);
      uVar1 = 0xffffffa6;
    }
  }
  return uVar1;
}



/* 0010202c netlink_init */

void netlink_init(void)

{
  bool bVar1;
  long lVar2;
  undefined8 local_40;
  code *local_38;
  undefined8 uStack_30;
  undefined8 local_28;
  undefined8 uStack_20;
  long local_18;
  
  lVar2 = sp_el0;
  local_18 = *(long *)(lVar2 + 0x710);
  local_28 = 0;
  uStack_20 = 0;
  local_40 = 0;
  local_38 = nl_data_ready;
  uStack_30 = 0;
  nl_sk = __netlink_kernel_create(&init_net,0x19,&__this_module,&local_40);
  bVar1 = nl_sk == 0;
  if (bVar1) {
    _printk(&DAT_0010327d);
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) != local_18) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(bVar1);
  }
  return;
}



/* 001020c8 nl_data_ready */

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
    if (-1 < (int)(uVar2 + 1 | uVar2)) goto LAB_001020f8;
    uVar5 = 1;
  }
  refcount_warn_saturate(puVar1,uVar5);
LAB_001020f8:
  if (0xf < *(uint *)(param_1 + 0x70)) {
    pid = *(undefined4 *)(*(long *)(param_1 + 0xe0) + 0xc);
    _printk(&DAT_00103b32,"nl_data_ready");
    sk_skb_reason_drop(0,param_1,2);
  }
  _printk(&DAT_001031c2,"nl_data_ready",pid);
  return;
}



/* 001021a8 netlink_exit */

void netlink_exit(void)

{
  if (nl_sk != 0) {
    netlink_kernel_release();
    nl_sk = 0;
  }
  _printk(&DAT_0010389b);
  return;
}



/* 001021ec zte_goodix_pinctrl_init */

undefined4 zte_goodix_pinctrl_init(long param_1)

{
  ulong uVar1;
  char *pcVar2;
  ulong *puVar3;
  
  _printk(&DAT_00103322,"zte_goodix_pinctrl_init");
  uVar1 = devm_pinctrl_get(*(long *)(param_1 + 0x18) + 0x10);
  pcVar2 = "Target does not use pinctrl\n";
  puVar3 = (ulong *)(param_1 + 0x80);
  *puVar3 = uVar1;
  if ((uVar1 != 0) && (uVar1 < 0xfffffffffffff001)) {
    uVar1 = pinctrl_lookup_state(uVar1,"goodix_active");
    pcVar2 = "Can not get goodix_active pinstate\n";
    puVar3 = (ulong *)(param_1 + 0x88);
    *puVar3 = uVar1;
    if ((uVar1 != 0) && (uVar1 < 0xfffffffffffff001)) {
      uVar1 = pinctrl_lookup_state(*(undefined8 *)(param_1 + 0x80),"goodix_suspend");
      pcVar2 = "Can not get goodix_suspend pinstate\n";
      puVar3 = (ulong *)(param_1 + 0x90);
      *puVar3 = uVar1;
      if ((uVar1 != 0) && (uVar1 < 0xfffffffffffff001)) {
        return 0;
      }
    }
  }
  _dev_err(*(long *)(param_1 + 0x18) + 0x10,pcVar2);
  uVar1 = *puVar3;
  *(undefined8 *)(param_1 + 0x80) = 0;
  return (int)uVar1;
}



/* 001022c0 zte_goodix_pinctrl_select */

ulong zte_goodix_pinctrl_select(long param_1,uint param_2)

{
  long lVar1;
  char *pcVar2;
  ulong uVar3;
  char *pcVar4;
  ulong uVar5;
  
  lVar1 = 0x88;
  if ((param_2 & 1) == 0) {
    lVar1 = 0x90;
  }
  _printk(&DAT_00102d0e,"zte_goodix_pinctrl_select",param_2 & 1);
  uVar5 = *(ulong *)(param_1 + lVar1);
  uVar3 = 0xffffffea;
  pcVar4 = "not a valid \'%s\' pinstate\n";
  if ((uVar5 != 0) && (uVar5 < 0xfffffffffffff001)) {
    uVar3 = pinctrl_select_state(*(undefined8 *)(param_1 + 0x80),uVar5);
    if ((int)uVar3 == 0) {
      return uVar3;
    }
    pcVar4 = "can not set %s pins\n";
  }
  pcVar2 = "goodix_active";
  if ((param_2 & 1) == 0) {
    pcVar2 = "goodix_suspend";
  }
  _dev_err(*(long *)(param_1 + 0x18) + 0x10,pcVar4,pcVar2);
  return uVar3 & 0xffffffff;
}



/* 0010237c gf_parse_dts */

int gf_parse_dts(long param_1)

{
  int iVar1;
  undefined *puVar2;
  ulong uVar3;
  int iVar4;
  undefined8 uVar5;
  long lVar6;
  
  lVar6 = *(long *)(param_1 + 0x18);
  uVar5 = *(undefined8 *)(lVar6 + 0x2f8);
  iVar1 = zte_goodix_pinctrl_init();
  if ((iVar1 == 0) && (*(long *)(param_1 + 0x80) != 0)) {
    _printk(&DAT_00102d0e,"zte_goodix_pinctrl_select",0);
    if ((*(ulong *)(param_1 + 0x90) == 0) || (0xfffffffffffff000 < *(ulong *)(param_1 + 0x90))) {
      _dev_err(*(long *)(param_1 + 0x18) + 0x10,"not a valid \'%s\' pinstate\n","goodix_suspend");
      iVar1 = -0x16;
LAB_001024cc:
      puVar2 = &DAT_00102dd6;
LAB_001024d4:
      _printk(puVar2,"gf_parse_dts");
    }
    else {
      iVar1 = pinctrl_select_state(*(undefined8 *)(param_1 + 0x80));
      if (iVar1 != 0) {
        _dev_err(*(long *)(param_1 + 0x18) + 0x10,"can not set %s pins\n","goodix_suspend");
        if (iVar1 < 0) goto LAB_001024cc;
      }
      _printk(&DAT_00102d25,"gf_parse_dts");
      usleep_range_state(10000,0x2774,2);
      uVar3 = devm_regulator_get(lVar6 + 0x10,&DAT_001034c7);
      *(ulong *)(param_1 + 0x98) = uVar3;
      if (uVar3 < 0xfffffffffffff001) {
        iVar1 = regulator_enable();
        if (iVar1 == 0) {
          iVar1 = of_get_named_gpio(uVar5,"fp-gpio-reset",0);
          *(int *)(param_1 + 0x40) = iVar1;
          if (iVar1 < 0) {
            _printk(&DAT_00103c51,"gf_parse_dts");
            iVar1 = -1;
          }
          else {
            _printk(&DAT_00103553,iVar1);
            iVar1 = devm_gpio_request(lVar6 + 0x10,*(undefined4 *)(param_1 + 0x40),"goodix_reset");
            if (iVar1 == 0) {
              _printk(&DAT_00103553,*(undefined4 *)(param_1 + 0x40));
              iVar1 = of_get_named_gpio(uVar5,"fp-gpio-irq",0);
              *(int *)(param_1 + 0x3c) = iVar1;
              if (iVar1 < 0) {
                _printk(&DAT_0010329c,"gf_parse_dts");
                iVar1 = -1;
              }
              else {
                _printk(&DAT_00103695,iVar1);
                iVar1 = devm_gpio_request(lVar6 + 0x10,*(undefined4 *)(param_1 + 0x3c),"goodix_irq")
                ;
                if (iVar1 == 0) {
                  gpio_to_desc(*(undefined4 *)(param_1 + 0x3c));
                  gpiod_direction_input();
                  puVar2 = &DAT_00103574;
                  iVar4 = 0;
                  goto LAB_001023dc;
                }
                _printk(&DAT_00103e95,"gf_parse_dts",iVar1);
                if (*(long *)(param_1 + 0x78) != 0) {
                  zlog_client_record(*(long *)(param_1 + 0x78),
                                     "Failed to request goodixfp irq gpio\n");
                  zlog_client_notify(*(undefined8 *)(param_1 + 0x78),0x100);
                }
              }
              _printk(&DAT_0010382b,"gf_parse_dts");
            }
            else {
              _printk(&DAT_001033d8,"gf_parse_dts",iVar1);
              if (*(long *)(param_1 + 0x78) != 0) {
                zlog_client_record(*(long *)(param_1 + 0x78),"Failed to request goodixfp rst gpio\n"
                                  );
                zlog_client_notify(*(undefined8 *)(param_1 + 0x78),0x101);
              }
            }
          }
          puVar2 = &DAT_00103abf;
          goto LAB_001024d4;
        }
        _printk(&DAT_001038b1,"gf_parse_dts");
        if (*(long *)(param_1 + 0x78) != 0) {
          zlog_client_record(*(long *)(param_1 + 0x78),"Failed to request goodixfp pwr gpio\n");
          zlog_client_notify(*(undefined8 *)(param_1 + 0x78),0x102);
        }
      }
      else {
        _printk(&DAT_00102e04,"gf_parse_dts");
        iVar1 = *(int *)(param_1 + 0x98);
      }
    }
  }
  else {
    _printk(&DAT_001034a2,"gf_parse_dts",iVar1);
  }
  puVar2 = &DAT_00102ef3;
  iVar4 = iVar1;
LAB_001023dc:
  _printk(puVar2,"gf_parse_dts",iVar4);
  return iVar1;
}



/* 001026bc gf_cleanup */

void gf_cleanup(long param_1)

{
  int iVar1;
  undefined *puVar2;
  
  _printk(&DAT_00103da8,"gf_cleanup");
  if (*(int *)(param_1 + 0x3c) < 0) {
    iVar1 = *(int *)(param_1 + 0x40);
  }
  else {
    gpio_free();
    _printk(&DAT_001030f5);
    iVar1 = *(int *)(param_1 + 0x40);
  }
  if (-1 < iVar1) {
    gpio_free();
    _printk(&DAT_00103763);
  }
  if (*(ulong *)(param_1 + 0x98) < 0xfffffffffffff001) {
    iVar1 = regulator_is_enabled();
    if (iVar1 == 0) {
      puVar2 = &DAT_00103d45;
    }
    else {
      regulator_disable(*(undefined8 *)(param_1 + 0x98));
      puVar2 = &DAT_00103dbc;
    }
    _printk(puVar2);
  }
  return;
}



/* 0010276c gf_power_on */

ulong gf_power_on(long param_1)

{
  int iVar1;
  ulong uVar2;
  
  if ((param_1 == 0) || (0xfffffffffffff000 < *(ulong *)(param_1 + 0x98))) {
    _printk(&DAT_001032bb);
    uVar2 = 0xffffffed;
  }
  else {
    _printk(&DAT_00103c72);
    iVar1 = regulator_is_enabled(*(undefined8 *)(param_1 + 0x98));
    if (iVar1 == 0) {
      uVar2 = regulator_enable(*(undefined8 *)(param_1 + 0x98));
      if ((int)uVar2 != 0) {
        uVar2 = uVar2 & 0xffffffff;
        _printk(&DAT_00102e28,uVar2);
      }
    }
    else {
      _printk(&DAT_00102b66);
      uVar2 = 0;
    }
  }
  return uVar2;
}



/* 00102810 gf_power_off */

ulong gf_power_off(long param_1)

{
  int iVar1;
  ulong uVar2;
  
  if ((param_1 == 0) || (0xfffffffffffff000 < *(ulong *)(param_1 + 0x98))) {
    _printk(&DAT_001032bb);
    uVar2 = 0xffffffed;
  }
  else {
    _printk(&DAT_001036b4);
    iVar1 = regulator_is_enabled(*(undefined8 *)(param_1 + 0x98));
    if (iVar1 == 0) {
      _printk(&DAT_00102e65);
      uVar2 = 0;
    }
    else {
      uVar2 = regulator_disable(*(undefined8 *)(param_1 + 0x98));
      if ((int)uVar2 != 0) {
        uVar2 = uVar2 & 0xffffffff;
        _printk(&DAT_00102c12,uVar2);
      }
    }
  }
  return uVar2;
}



/* 001028b4 gf_hw_reset */

undefined4 gf_hw_reset(long param_1,uint param_2)

{
  undefined8 uVar1;
  undefined *puVar2;
  undefined4 uVar3;
  ulong uVar4;
  
  if (param_1 == 0) {
    puVar2 = &DAT_001039e8;
    uVar3 = 0xffffffed;
  }
  else {
    if (-1 < *(int *)(param_1 + 0x40)) {
      _printk(&DAT_0010345d);
      uVar1 = gpio_to_desc(*(undefined4 *)(param_1 + 0x40));
      gpiod_set_raw_value(uVar1,0);
      usleep_range_state(10000,0x2774,2);
      uVar1 = gpio_to_desc(*(undefined4 *)(param_1 + 0x40));
      gpiod_set_raw_value(uVar1,1);
      if (param_2 == 0) {
        return 0;
      }
      uVar4 = (ulong)param_2;
      do {
        uVar4 = uVar4 - 1;
        __const_udelay(0x418958);
      } while (uVar4 != 0);
      return 0;
    }
    puVar2 = &DAT_00103793;
    uVar3 = 0;
  }
  _printk(puVar2);
  return uVar3;
}



/* 00102970 gf_irq_num */

undefined8 gf_irq_num(long param_1)

{
  undefined8 uVar1;
  
  if (param_1 == 0) {
    _printk(&DAT_001039e8);
    uVar1 = 0xffffffed;
  }
  else {
    gpio_to_desc(*(undefined4 *)(param_1 + 0x3c));
    uVar1 = gpiod_to_irq();
  }
  return uVar1;
}



/* 001029b0 init_module */

ulong init_module(void)

{
  int iVar1;
  ulong uVar2;
  ulong uVar3;
  
  uVar2 = __register_chrdev(SPIDEV_MAJOR,0,0x100,"goodix_fp_spi",&gf_fops);
  uVar3 = uVar2 & 0xffffffff;
  if ((int)uVar2 < 0) {
    _printk(&DAT_00103de5);
  }
  else {
    SPIDEV_MAJOR = (int)uVar2;
    gf_class = class_create("goodix_fp");
    if (gf_class < 0xfffffffffffff001) {
      iVar1 = __platform_driver_register(gf_driver,&__this_module);
      if (iVar1 < 0) {
        class_destroy(gf_class);
        __unregister_chrdev(SPIDEV_MAJOR,0,0x100,gf_driver._40_8_);
        _printk(&DAT_00103339);
      }
      netlink_init();
      _printk(&DAT_001034cb,iVar1);
      uVar3 = 0;
    }
    else {
      __unregister_chrdev(SPIDEV_MAJOR,0,0x100,gf_driver._40_8_);
      _printk(&DAT_00103078);
      uVar3 = gf_class & 0xffffffff;
    }
  }
  return uVar3;
}



/* 00102ac8 cleanup_module */

void cleanup_module(void)

{
  netlink_exit();
  platform_driver_unregister(gf_driver);
  class_destroy(gf_class);
  __unregister_chrdev(SPIDEV_MAJOR,0,0x100,gf_driver._40_8_);
  return;
}



