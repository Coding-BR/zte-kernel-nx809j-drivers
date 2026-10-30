/* 00101194 zte_power_supply_get_property */

ulong zte_power_supply_get_property(long *param_1)

{
  code *pcVar1;
  ulong uVar2;
  uint uVar3;
  
  if ((int)param_1[0x8b] < 1) {
    uVar3 = 0xffffffed;
    if (*(char *)((long)param_1 + 0x455) == '\0') {
      uVar3 = 0xfffffff5;
    }
    return (ulong)uVar3;
  }
  if (*(int *)(*(code **)(*param_1 + 0x30) + -4) != -0x7a95136b) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x1011cc);
    (*pcVar1)();
  }
  uVar2 = (**(code **)(*param_1 + 0x30))();
  return uVar2;
}



/* 001011f8 zte_power_supply_set_property */

undefined8 zte_power_supply_set_property(long *param_1)

{
  undefined8 uVar1;
  code *pcVar2;
  
  if ((0 < (int)param_1[0x8b]) && (pcVar2 = *(code **)(*param_1 + 0x38), pcVar2 != (code *)0x0)) {
    if (*(int *)(pcVar2 + -4) != 0x1c0179c9) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x101234);
      (*pcVar2)();
    }
    uVar1 = (*pcVar2)();
    return uVar1;
  }
  return 0xffffffed;
}



/* 00101250 zte_power_supply_property_is_writeable */

undefined8 zte_power_supply_property_is_writeable(long *param_1)

{
  undefined8 uVar1;
  code *pcVar2;
  
  if ((0 < (int)param_1[0x8b]) && (pcVar2 = *(code **)(*param_1 + 0x40), pcVar2 != (code *)0x0)) {
    if (*(int *)(pcVar2 + -4) != 0x3f091c91) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x10128c);
      (*pcVar2)();
    }
    uVar1 = (*pcVar2)();
    return uVar1;
  }
  return 0xffffffed;
}



/* 001012a8 zte_power_supply_init_attrs */

ulong zte_power_supply_init_attrs(long param_1)

{
  ulong uVar1;
  byte bVar2;
  long lVar3;
  long lVar4;
  code *pcVar5;
  uint uVar6;
  ulong uVar7;
  ulong uVar8;
  long lVar9;
  
  *(undefined ***)(param_1 + 8) = &zte_power_supply_groups;
  uVar7 = _printk(&DAT_0010364f,0x13);
  lVar9 = 0;
  uVar8 = 0;
  do {
    lVar3 = uVar8 * 0x58;
    if ((&zte_power_supply_attrs)[uVar8 * 0xb] == (undefined *)0x0) {
      _printk(&DAT_0010351b,"zte_power_supply_init_attrs",uVar8 & 0xffffffff);
      uVar6 = sprintf(s_STATUS_00100260 + lVar3,"_err_%d",uVar8 & 0xffffffff);
      uVar7 = (ulong)uVar6;
    }
    else {
      bVar2 = s_STATUS_00100260[lVar3];
      lVar4 = lVar9;
      while (bVar2 != 0) {
        if ((0x687 < lVar4 + 8U) ||
           (s_STATUS_00100260[lVar4] = ((&_ctype)[bVar2] & 1) * ' ' + bVar2, lVar4 == 0x67f)) {
                    /* WARNING: Does not return */
          pcVar5 = (code *)SoftwareBreakpoint(1,0x1013e8);
          (*pcVar5)();
        }
        bVar2 = s_STATUS_00100260[lVar4 + 1];
        lVar4 = lVar4 + 1;
      }
    }
    lVar9 = lVar9 + 0x58;
    (&DAT_00100280)[uVar8 * 0xb] = s_STATUS_00100260 + lVar3;
    (&zte_power_supply_dev_attrs)[uVar8] = &DAT_00100280 + uVar8 * 0xb;
    uVar1 = uVar8 + 1;
    (&DAT_00100290)[uVar8 * 0xb] = zte_power_supply_show_property;
    (&DAT_00100298)[uVar8 * 0xb] = zte_power_supply_store_property;
    uVar8 = uVar1;
    if (uVar1 == 0x13) {
      return uVar7;
    }
  } while( true );
}



/* 001013ec zte_power_supply_show_property */

void zte_power_supply_show_property(long param_1,long param_2,char *param_3)

{
  uint uVar1;
  long lVar2;
  int iVar3;
  long lVar4;
  ulong local_40;
  long local_38;
  
  lVar4 = sp_el0;
  local_38 = *(long *)(lVar4 + 0x710);
  iVar3 = (int)(param_2 - 0x100280U >> 3) * -0x45d1745d;
  local_40 = 0;
  if (iVar3 == 0x40) {
    uVar1 = *(uint *)(**(long **)(param_1 + 0x98) + 8);
    local_40 = (ulong)uVar1;
  }
  else {
    iVar3 = zte_power_supply_get_property(*(long **)(param_1 + 0x98),iVar3,&local_40);
    if (iVar3 < 0) {
      lVar4 = (long)iVar3;
      if ((0x32 < iVar3 + 0x3dU || (1L << ((ulong)(iVar3 + 0x3dU) & 0x3f) & 0x4040000000001U) == 0)
         && (iVar3 = ___ratelimit(zte_power_supply_show_property__rs,
                                  "zte_power_supply_show_property"), iVar3 != 0)) {
        _dev_err(param_1,"driver failed to report `%s\' property: %zd\n",
                 *(undefined8 *)(param_2 + -0x28),lVar4);
      }
      goto LAB_001014b8;
    }
    uVar1 = (uint)local_40;
  }
  if (((*(int *)(param_2 + 0x28) < 1) || ((int)uVar1 < 0)) ||
     (*(int *)(param_2 + 0x28) <= (int)uVar1)) {
    iVar3 = sprintf(param_3,"%d\n");
  }
  else {
    iVar3 = sprintf(param_3,"%s\n",*(undefined8 *)(*(long *)(param_2 + 0x20) + (ulong)uVar1 * 8));
  }
  lVar4 = (long)iVar3;
LAB_001014b8:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(lVar4);
}



/* 0010155c zte_power_supply_store_property */

void zte_power_supply_store_property(long param_1,long param_2,undefined8 param_3,long param_4)

{
  long lVar1;
  int iVar2;
  long lVar3;
  undefined8 uVar4;
  undefined8 local_48;
  undefined8 local_40;
  long local_38;
  
  lVar3 = sp_el0;
  local_38 = *(long *)(lVar3 + 0x710);
  uVar4 = *(undefined8 *)(param_1 + 0x98);
  local_48 = 0;
  local_40 = 0;
  if ((*(int *)(param_2 + 0x28) < 1) ||
     (iVar2 = __sysfs_match_string(*(undefined8 *)(param_2 + 0x20),*(int *)(param_2 + 0x28),param_3)
     , iVar2 < 0)) {
    iVar2 = kstrtoll(param_3,10,&local_48);
    if (iVar2 < 0) {
      lVar3 = (long)iVar2;
      goto LAB_0010160c;
    }
    iVar2 = (int)local_48;
  }
  local_40 = CONCAT44(local_40._4_4_,iVar2);
  iVar2 = zte_power_supply_set_property
                    (uVar4,(int)(param_2 - 0x100280U >> 3) * -0x45d1745d,&local_40);
  lVar3 = (long)iVar2;
  if (-1 < iVar2) {
    lVar3 = param_4;
  }
LAB_0010160c:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) != local_38) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(lVar3);
  }
  return;
}



/* 00101640 zte_power_supply_reg_notifier */

void zte_power_supply_reg_notifier(undefined8 param_1)

{
  atomic_notifier_chain_register(zte_power_supply_notifier,param_1);
  return;
}



/* 0010166c zte_power_supply_unreg_notifier */

void zte_power_supply_unreg_notifier(undefined8 param_1)

{
  atomic_notifier_chain_unregister(zte_power_supply_notifier,param_1);
  return;
}



/* 00101698 zte_power_supply_changed */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void zte_power_supply_changed(long param_1)

{
  undefined8 uVar1;
  
  uVar1 = _raw_spin_lock_irqsave(param_1 + 0x450);
  *(undefined1 *)(param_1 + 0x454) = 1;
  pm_stay_awake(param_1 + 0x38);
  _raw_spin_unlock_irqrestore(param_1 + 0x450,uVar1);
  queue_work_on(0x20,_system_wq,param_1 + 0x3c8);
  return;
}



/* 001016fc zte_power_supply_register */

void zte_power_supply_register(void)

{
  __zte_power_supply_register();
  return;
}



/* 0010171c __zte_power_supply_register */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

long * __zte_power_supply_register(long param_1,long *param_2,long *param_3,uint param_4)

{
  long *plVar1;
  long lVar2;
  char cVar3;
  bool bVar4;
  undefined8 uVar5;
  int iVar6;
  long *plVar7;
  long lVar8;
  ulong uVar9;
  
  if (param_1 == 0) {
    if (param_2 == (long *)0x0) {
      lVar8 = 0;
    }
    else {
      lVar8 = *param_2;
    }
    _printk(&DAT_00103723,"__zte_power_supply_register",lVar8);
  }
  if ((((param_2 == (long *)0x0) || (*param_2 == 0)) || (param_2[4] == 0)) || (param_2[5] == 0)) {
LAB_00101968:
    plVar7 = (long *)0xffffffffffffffea;
  }
  else {
    uVar9 = 0;
    iVar6 = 1;
    do {
      if ((*(int *)(param_2[4] + uVar9 * 4) == 0x22) && ((param_2[2] == 0 || (param_2[3] == 0))))
      goto LAB_00101968;
      uVar9 = (ulong)iVar6;
      iVar6 = iVar6 + 1;
    } while (uVar9 < (ulong)param_2[5]);
    plVar7 = (long *)__kmalloc_cache_noprof(__dev_info,0xdc0,0x4c0);
    if (plVar7 == (long *)0x0) {
      plVar7 = (long *)0xfffffffffffffff4;
    }
    else {
      device_initialize(plVar7 + 7);
      lVar8 = zte_power_supply_class;
      plVar7[0x13] = param_1;
      plVar7[0x16] = (long)zte_power_supply_dev_type;
      plVar7[0x1a] = (long)plVar7;
      plVar7[0x6a] = lVar8;
      *plVar7 = (long)param_2;
      if (param_3 != (long *)0x0) {
        lVar8 = param_3[2];
        lVar2 = *param_3;
        uVar9 = param_3[1];
        plVar7[0x6b] = param_3[3];
        plVar7[5] = lVar2;
        plVar7[6] = lVar8;
        if (((uVar9 != 0) && (uVar9 < 0xfffffffffffff001)) &&
           (*(undefined **)(uVar9 + 8) == &of_fwnode_ops)) {
          plVar7[5] = uVar9 - 0x18;
        }
        lVar8 = param_3[5];
        plVar7[1] = param_3[4];
        plVar7[2] = lVar8;
      }
      iVar6 = dev_set_name(plVar7 + 7,&DAT_001036c1,*param_2);
      if (iVar6 == 0) {
        plVar7[0x79] = 0xfffffffe00000;
        plVar7[0x7a] = (long)(plVar7 + 0x7a);
        plVar7[0x7b] = (long)(plVar7 + 0x7a);
        plVar7[0x7d] = 0xfffffffe00000;
        plVar7[0x7c] = (long)zte_power_supply_changed_work;
        plVar7[0x7e] = (long)(plVar7 + 0x7e);
        plVar7[0x7f] = (long)(plVar7 + 0x7e);
        plVar7[0x80] = (long)zte_power_supply_deferred_register_work;
        init_timer_key(plVar7 + 0x81,&delayed_work_timer_fn,0x200000,0,0);
        iVar6 = zte_power_supply_check_supplies(plVar7);
        if (iVar6 == 0) {
          *(undefined4 *)(plVar7 + 0x8a) = 0;
          iVar6 = device_add(plVar7 + 7);
          if ((iVar6 == 0) && (iVar6 = device_init_wakeup(plVar7 + 7,param_4 & 1), iVar6 == 0)) {
            plVar1 = plVar7 + 0x8b;
            Hint_Prefetch(plVar1,2,0,1);
            do {
              cVar3 = '\x01';
              bVar4 = (bool)ExclusiveMonitorPass(plVar1,0x10);
              if (bVar4) {
                *(int *)plVar1 = (int)*plVar1 + 1;
                cVar3 = ExclusiveMonitorsStatus();
              }
              uVar5 = _system_power_efficient_wq;
            } while (cVar3 != '\0');
            *(undefined1 *)((long)plVar7 + 0x455) = 1;
            queue_delayed_work_on(0x20,uVar5,plVar7 + 0x7d,3);
            return plVar7;
          }
        }
        else {
          _dev_info(plVar7 + 7,"Not all required supplies found, defer probe\n");
        }
      }
      put_device(plVar7 + 7);
      plVar7 = (long *)(long)iVar6;
    }
  }
  return plVar7;
}



/* 00101a00 zte_power_supply_register_no_ws */

void zte_power_supply_register_no_ws(void)

{
  __zte_power_supply_register();
  return;
}



/* 00101a24 zte_power_supply_unregister */

void zte_power_supply_unregister(long param_1)

{
  int *piVar1;
  int iVar2;
  char cVar3;
  bool bVar4;
  code *pcVar5;
  
  piVar1 = (int *)(param_1 + 0x458);
  Hint_Prefetch(piVar1,2,0,1);
  do {
    iVar2 = *piVar1;
    cVar3 = '\x01';
    bVar4 = (bool)ExclusiveMonitorPass(piVar1,0x10);
    if (bVar4) {
      *piVar1 = iVar2 + -1;
      cVar3 = ExclusiveMonitorsStatus();
    }
  } while (cVar3 != '\0');
  DataMemoryBarrier(2,3);
  if (iVar2 + -1 != 0) {
                    /* WARNING: Does not return */
    pcVar5 = (code *)SoftwareBreakpoint(0x800,0x101acc);
    (*pcVar5)();
  }
  *(undefined1 *)(param_1 + 0x456) = 1;
  cancel_work_sync(param_1 + 0x3c8);
  cancel_delayed_work_sync(param_1 + 1000);
  sysfs_remove_link(param_1 + 0x38,"powers");
  device_wakeup_disable(param_1 + 0x38);
  device_set_wakeup_capable(param_1 + 0x38,0);
  device_unregister(param_1 + 0x38);
  return;
}



/* 00101ad4 zte_devm_power_supply_register */

ulong zte_devm_power_supply_register(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  ulong *puVar1;
  ulong uVar2;
  
  puVar1 = (ulong *)__devres_alloc_node(zte_devm_power_supply_release,8,0xcc0,0xffffffff,
                                        "zte_devm_power_supply_release");
  if (puVar1 == (ulong *)0x0) {
    uVar2 = 0xfffffffffffffff4;
  }
  else {
    uVar2 = __zte_power_supply_register(param_1,param_2,param_3,1);
    if (uVar2 < 0xfffffffffffff001) {
      *puVar1 = uVar2;
      devres_add(param_1,puVar1);
    }
    else {
      devres_free(puVar1);
    }
  }
  return uVar2;
}



/* 00101b7c zte_devm_power_supply_release */

void zte_devm_power_supply_release(undefined8 param_1,undefined8 *param_2)

{
  zte_power_supply_unregister(*param_2);
  return;
}



/* 00101ba0 zte_devm_power_supply_register_no_ws */

ulong zte_devm_power_supply_register_no_ws(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  ulong *puVar1;
  ulong uVar2;
  
  puVar1 = (ulong *)__devres_alloc_node(zte_devm_power_supply_release,8,0xcc0,0xffffffff,
                                        "zte_devm_power_supply_release");
  if (puVar1 == (ulong *)0x0) {
    uVar2 = 0xfffffffffffffff4;
  }
  else {
    uVar2 = __zte_power_supply_register(param_1,param_2,param_3,0);
    if (uVar2 < 0xfffffffffffff001) {
      *puVar1 = uVar2;
      devres_add(param_1,puVar1);
    }
    else {
      devres_free(puVar1);
    }
  }
  return uVar2;
}



/* 00101c48 zte_power_supply_get_by_name */

void zte_power_supply_get_by_name(undefined8 param_1)

{
  int *piVar1;
  char cVar2;
  bool bVar3;
  long lVar4;
  
  lVar4 = class_find_device(zte_power_supply_class,0,param_1,zte_power_supply_match_device_by_name);
  if (lVar4 != 0) {
    piVar1 = (int *)(*(long *)(lVar4 + 0x98) + 0x458);
    Hint_Prefetch(piVar1,2,0,1);
    do {
      cVar2 = '\x01';
      bVar3 = (bool)ExclusiveMonitorPass(piVar1,0x10);
      if (bVar3) {
        *piVar1 = *piVar1 + 1;
        cVar2 = ExclusiveMonitorsStatus();
      }
    } while (cVar2 != '\0');
  }
  return;
}



/* 00101cb8 zte_power_supply_put */

void zte_power_supply_put(long param_1)

{
  int *piVar1;
  char cVar2;
  bool bVar3;
  
  piVar1 = (int *)(param_1 + 0x458);
  Hint_Prefetch(piVar1,2,0,1);
  do {
    cVar2 = '\x01';
    bVar3 = (bool)ExclusiveMonitorPass(piVar1,0x10);
    if (bVar3) {
      *piVar1 = *piVar1 + -1;
      cVar2 = ExclusiveMonitorsStatus();
    }
  } while (cVar2 != '\0');
  put_device(param_1 + 0x38);
  return;
}



/* 00101d0c zte_power_supply_get_by_phandle */

void zte_power_supply_get_by_phandle(undefined8 param_1,undefined8 param_2)

{
  int *piVar1;
  char cVar2;
  bool bVar3;
  int iVar4;
  long lVar5;
  long lVar6;
  long local_68 [11];
  
  lVar5 = sp_el0;
  local_68[10] = *(long *)(lVar5 + 0x710);
  local_68[8] = 0;
  local_68[9] = 0;
  local_68[6] = 0;
  local_68[7] = 0;
  local_68[4] = 0;
  local_68[5] = 0;
  local_68[2] = 0;
  local_68[3] = 0;
  local_68[0] = 0;
  local_68[1] = 0;
  iVar4 = __of_parse_phandle_with_args(param_1,param_2,0,0,0,local_68);
  lVar5 = -0x13;
  if ((iVar4 == 0) && (local_68[0] != 0)) {
    lVar6 = class_find_device(zte_power_supply_class,0,local_68[0],
                              zte_power_supply_match_device_node);
    lVar5 = 0;
    if (lVar6 != 0) {
      lVar5 = *(long *)(lVar6 + 0x98);
      piVar1 = (int *)(lVar5 + 0x458);
      Hint_Prefetch(piVar1,2,0,1);
      do {
        cVar2 = '\x01';
        bVar3 = (bool)ExclusiveMonitorPass(piVar1,0x10);
        if (bVar3) {
          *piVar1 = *piVar1 + 1;
          cVar2 = ExclusiveMonitorsStatus();
        }
      } while (cVar2 != '\0');
    }
  }
  lVar6 = sp_el0;
  if (*(long *)(lVar6 + 0x710) != local_68[10]) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(lVar5);
  }
  return;
}



/* 00101ddc zte_power_supply_match_device_node */

bool zte_power_supply_match_device_node(long param_1,long param_2)

{
  if (*(long *)(param_1 + 0x60) != 0) {
    return *(long *)(*(long *)(param_1 + 0x60) + 0x2e8) == param_2;
  }
  return false;
}



/* 00101e00 zte_power_supply_get_by_phandle_array */

ulong zte_power_supply_get_by_phandle_array
                (undefined8 param_1,undefined8 param_2,long param_3,long param_4)

{
  long lVar1;
  int iVar2;
  ulong uVar3;
  long local_98;
  long lStack_90;
  long local_88;
  ulong local_80;
  long local_78 [11];
  
  lVar1 = sp_el0;
  local_78[10] = *(long *)(lVar1 + 0x710);
  uVar3 = 0xffffffea;
  if ((param_3 != 0) && (param_4 != 0)) {
    local_88 = 0;
    local_80 = 0;
    local_98 = 0;
    lStack_90 = 0;
    local_78[8] = 0;
    local_78[9] = 0;
    local_78[6] = 0;
    local_78[7] = 0;
    local_78[4] = 0;
    local_78[5] = 0;
    local_78[2] = 0;
    local_78[3] = 0;
    local_78[0] = 0;
    local_78[1] = 0;
    iVar2 = __of_parse_phandle_with_args(param_1,param_2,0,0,0,local_78);
    uVar3 = 0xffffffed;
    if ((iVar2 == 0) && (local_78[0] != 0)) {
      local_98 = local_78[0];
      local_80 = 0;
      lStack_90 = param_3;
      local_88 = param_4;
      class_for_each_device
                (zte_power_supply_class,0,&local_98,zte_power_supply_match_device_node_array);
      uVar3 = local_80 & 0xffffffff;
    }
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_78[10]) {
    return uVar3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00101ed0 zte_power_supply_match_device_node_array */

undefined8 zte_power_supply_match_device_node_array(long param_1,long *param_2)

{
  int *piVar1;
  char cVar2;
  bool bVar3;
  long lVar4;
  
  if ((*(long *)(param_1 + 0x60) != 0) && (*(long *)(*(long *)(param_1 + 0x60) + 0x2e8) == *param_2)
     ) {
    if (param_2[3] < param_2[2]) {
      lVar4 = param_2[1];
      *(undefined8 *)(lVar4 + param_2[3] * 8) = *(undefined8 *)(param_1 + 0x98);
      piVar1 = (int *)(*(long *)(lVar4 + param_2[3] * 8) + 0x458);
      Hint_Prefetch(piVar1,2,0,1);
      do {
        cVar2 = '\x01';
        bVar3 = (bool)ExclusiveMonitorPass(piVar1,0x10);
        if (bVar3) {
          *piVar1 = *piVar1 + 1;
          cVar2 = ExclusiveMonitorsStatus();
        }
      } while (cVar2 != '\0');
      param_2[3] = param_2[3] + 1;
      return 0;
    }
    return 0xffffffb5;
  }
  return 0;
}



/* 00101f5c zte_power_supply_get_drvdata */

undefined8 zte_power_supply_get_drvdata(long param_1)

{
  return *(undefined8 *)(param_1 + 0x30);
}



/* 00101f68 zte_power_supply_uevent */

undefined8 zte_power_supply_uevent(long param_1,undefined8 param_2)

{
  uint uVar1;
  code *pcVar2;
  int iVar3;
  undefined8 uVar4;
  char *__s;
  char *pcVar5;
  long lVar6;
  ulong uVar7;
  long *plVar8;
  int iVar9;
  
  plVar8 = *(long **)(param_1 + 0x98);
  if ((plVar8 == (long *)0x0) || ((undefined8 *)*plVar8 == (undefined8 *)0x0)) {
    uVar4 = 0;
  }
  else {
    uVar4 = add_uevent_var(param_2,"POWER_SUPPLY_NAME=%s",*(undefined8 *)*plVar8);
    if ((int)uVar4 == 0) {
      __s = (char *)get_zeroed_page_noprof(0xcc0);
      if (__s == (char *)0x0) {
        uVar4 = 0xfffffff4;
      }
      else {
        lVar6 = *plVar8;
        if (*(long *)(lVar6 + 0x28) != 0) {
          uVar7 = 0;
          iVar9 = 1;
          do {
            uVar1 = *(uint *)(*(long *)(lVar6 + 0x20) + uVar7 * 4);
            if (0x12 < uVar1) {
                    /* WARNING: Does not return */
              pcVar2 = (code *)SoftwareBreakpoint(0x800,0x1020b8);
              (*pcVar2)();
            }
            uVar4 = zte_power_supply_show_property(param_1,&DAT_00100280 + (ulong)uVar1 * 0xb,__s);
            iVar3 = (int)uVar4;
            if (iVar3 != -0x3d && iVar3 != -0x13) {
              if (iVar3 < 0) goto LAB_0010209c;
              pcVar5 = strchr(__s,10);
              if (pcVar5 != (char *)0x0) {
                *pcVar5 = '\0';
              }
              uVar4 = add_uevent_var(param_2,"POWER_SUPPLY_%s=%s",
                                     (&zte_power_supply_attrs)[(ulong)uVar1 * 0xb],__s);
              if ((int)uVar4 != 0) goto LAB_0010209c;
            }
            lVar6 = *plVar8;
            uVar7 = (ulong)iVar9;
            iVar9 = iVar9 + 1;
          } while (uVar7 < *(ulong *)(lVar6 + 0x28));
        }
        uVar4 = 0;
LAB_0010209c:
        free_pages(__s,0);
      }
    }
  }
  return uVar4;
}



/* 001020ec zte_power_supply_external_power_changed */

void zte_power_supply_external_power_changed(long *param_1)

{
  code *pcVar1;
  
  if ((0 < (int)param_1[0x8b]) && (pcVar1 = *(code **)(*param_1 + 0x48), pcVar1 != (code *)0x0)) {
    if (*(int *)(pcVar1 + -4) != 0x6f39adef) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x102128);
      (*pcVar1)();
    }
    (*pcVar1)();
  }
  return;
}



/* 0010213c zte_power_supply_set_battery_charged */

undefined8 zte_power_supply_set_battery_charged(long *param_1)

{
  code *pcVar1;
  
  if (((-1 < (int)param_1[0x8b]) && (*(int *)(*param_1 + 8) == 1)) &&
     (pcVar1 = *(code **)(*param_1 + 0x50), pcVar1 != (code *)0x0)) {
    if (*(int *)(pcVar1 + -4) != 0x6f39adef) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x102180);
      (*pcVar1)();
    }
    (*pcVar1)();
    return 0;
  }
  return 0xffffffea;
}



/* 001021a0 zte_power_supply_powers */

void zte_power_supply_powers(long param_1,undefined8 param_2)

{
  sysfs_create_link(param_1 + 0x38,param_2,"powers");
  return;
}



/* 001021cc zte_power_supply_put_battery_info */

void zte_power_supply_put_battery_info(long param_1,long param_2)

{
  long lVar1;
  
  lVar1 = 0;
  do {
    if (*(long *)(param_2 + 200 + lVar1) != 0) {
      devm_kfree(param_1 + 0x38);
    }
    lVar1 = lVar1 + 8;
  } while (lVar1 != 0xa0);
  if (*(long *)(param_2 + 0x1b8) != 0) {
    devm_kfree(param_1 + 0x38);
  }
  return;
}



/* 0010223c zte_power_supply_find_ocv2cap_table */

long zte_power_supply_find_ocv2cap_table(long param_1,int param_2,undefined4 *param_3)

{
  int iVar1;
  int iVar2;
  code *pcVar3;
  uint uVar4;
  ulong uVar5;
  long lVar6;
  int iVar7;
  
  if (*(long *)(param_1 + 200) == 0) {
    return 0;
  }
  lVar6 = 0;
  uVar5 = 0;
  iVar7 = 0x7fffffff;
  do {
    iVar2 = *(int *)(param_1 + 0x5c + lVar6 * 4) - param_2;
    iVar1 = -iVar2;
    if (-1 < iVar2) {
      iVar1 = iVar2;
    }
    uVar4 = (uint)lVar6;
    if (iVar7 <= iVar1) {
      uVar4 = (uint)uVar5;
    }
    uVar5 = (ulong)uVar4;
    lVar6 = lVar6 + 1;
    if (iVar7 <= iVar1) {
      iVar1 = iVar7;
    }
    iVar7 = iVar1;
  } while (lVar6 != 0x14);
  if ((uVar4 & 0xff) < 0x14) {
    *param_3 = *(undefined4 *)(param_1 + (ulong)(byte)uVar4 * 4 + 0x168);
    return ((long *)(param_1 + 200))[uVar5 & 0xff];
  }
                    /* WARNING: Does not return */
  pcVar3 = (code *)SoftwareBreakpoint(0x5512,0x1022ac);
  (*pcVar3)();
}



/* 001022b0 zte_power_supply_batinfo_ocv2cap */

undefined8 zte_power_supply_batinfo_ocv2cap(long param_1,undefined4 param_2,int param_3)

{
  int iVar1;
  int iVar2;
  code *pcVar3;
  undefined8 uVar4;
  uint uVar5;
  ulong uVar6;
  long lVar7;
  int iVar8;
  
  if (*(long *)(param_1 + 200) != 0) {
    lVar7 = 0;
    uVar6 = 0;
    iVar8 = 0x7fffffff;
    do {
      iVar2 = *(int *)(param_1 + 0x5c + lVar7 * 4) - param_3;
      iVar1 = -iVar2;
      if (-1 < iVar2) {
        iVar1 = iVar2;
      }
      uVar5 = (uint)lVar7;
      if (iVar8 <= iVar1) {
        uVar5 = (uint)uVar6;
      }
      uVar6 = (ulong)uVar5;
      lVar7 = lVar7 + 1;
      if (iVar8 <= iVar1) {
        iVar1 = iVar8;
      }
      iVar8 = iVar1;
    } while (lVar7 != 0x14);
    if (0x13 < (uVar5 & 0xff)) {
                    /* WARNING: Does not return */
      pcVar3 = (code *)SoftwareBreakpoint(0x5512,0x102344);
      (*pcVar3)();
    }
    lVar7 = ((long *)(param_1 + 200))[uVar6 & 0xff];
    if (lVar7 != 0) {
      uVar4 = zte_power_supply_ocv2cap_simple
                        (lVar7,*(undefined4 *)(param_1 + (uVar6 & 0xff) * 4 + 0x168),param_2);
      return uVar4;
    }
  }
  return 0xffffffea;
}



/* 00102348 zte_devm_power_supply_get_by_phandle */

ulong zte_devm_power_supply_get_by_phandle(long param_1,undefined8 param_2)

{
  int *piVar1;
  char cVar2;
  bool bVar3;
  int iVar4;
  ulong *puVar5;
  long lVar6;
  ulong uVar7;
  long local_88 [11];
  
  lVar6 = sp_el0;
  local_88[10] = *(long *)(lVar6 + 0x710);
  if (*(long *)(param_1 + 0x2e8) == 0) {
    uVar7 = 0xffffffffffffffed;
  }
  else {
    puVar5 = (ulong *)__devres_alloc_node(zte_devm_power_supply_put,8,0xcc0,0xffffffff,
                                          "zte_devm_power_supply_put");
    if (puVar5 == (ulong *)0x0) {
      uVar7 = 0xfffffffffffffff4;
    }
    else {
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
      iVar4 = __of_parse_phandle_with_args(*(undefined8 *)(param_1 + 0x2e8),param_2,0,0,0,local_88);
      uVar7 = 0xffffffffffffffed;
      if ((iVar4 == 0) && (local_88[0] != 0)) {
        lVar6 = class_find_device(zte_power_supply_class,0,local_88[0],
                                  zte_power_supply_match_device_node);
        if (lVar6 == 0) {
          uVar7 = 0;
        }
        else {
          uVar7 = *(ulong *)(lVar6 + 0x98);
          piVar1 = (int *)(uVar7 + 0x458);
          Hint_Prefetch(piVar1,2,0,1);
          do {
            cVar2 = '\x01';
            bVar3 = (bool)ExclusiveMonitorPass(piVar1,0x10);
            if (bVar3) {
              *piVar1 = *piVar1 + 1;
              cVar2 = ExclusiveMonitorsStatus();
            }
          } while (cVar2 != '\0');
          if ((uVar7 != 0) && (uVar7 < 0xfffffffffffff001)) {
            *puVar5 = uVar7;
            devres_add(param_1,puVar5);
            goto LAB_00102450;
          }
        }
      }
      devres_free(puVar5);
    }
  }
LAB_00102450:
  lVar6 = sp_el0;
  if (*(long *)(lVar6 + 0x710) != local_88[10]) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return uVar7;
}



/* 001024a8 zte_devm_power_supply_put */

void zte_devm_power_supply_put(undefined8 param_1,long *param_2)

{
  int *piVar1;
  char cVar2;
  bool bVar3;
  long lVar4;
  
  lVar4 = *param_2;
  piVar1 = (int *)(lVar4 + 0x458);
  Hint_Prefetch(piVar1,2,0,1);
  do {
    cVar2 = '\x01';
    bVar3 = (bool)ExclusiveMonitorPass(piVar1,0x10);
    if (bVar3) {
      *piVar1 = *piVar1 + -1;
      cVar2 = ExclusiveMonitorsStatus();
    }
  } while (cVar2 != '\0');
  put_device(lVar4 + 0x38);
  return;
}



/* 00102500 power_supply_attr_is_visible */

undefined4 power_supply_attr_is_visible(long param_1,undefined8 param_2,uint param_3)

{
  int iVar1;
  long *plVar2;
  long lVar3;
  code *pcVar4;
  ulong uVar5;
  
  if (0x12 < (int)param_3) {
                    /* WARNING: Does not return */
    pcVar4 = (code *)SoftwareBreakpoint(0x800,0x1025d0);
    (*pcVar4)();
  }
  if (0x12 < param_3) {
                    /* WARNING: Does not return */
    pcVar4 = (code *)SoftwareBreakpoint(0x5512,0x1025cc);
    (*pcVar4)();
  }
  if ((&zte_power_supply_attrs)[(ulong)param_3 * 0xb] != (undefined *)0x0) {
    plVar2 = *(long **)(param_1 + 0x98);
    lVar3 = *plVar2;
    if (*(ulong *)(lVar3 + 0x28) != 0) {
      uVar5 = 0;
      iVar1 = 1;
      do {
        if (*(uint *)(*(long *)(lVar3 + 0x20) + uVar5 * 4) == param_3) {
          if (((int)plVar2[0x8b] < 1) || (pcVar4 = *(code **)(lVar3 + 0x40), pcVar4 == (code *)0x0))
          {
            return 0x124;
          }
          if (*(int *)(pcVar4 + -4) != 0x3f091c91) {
                    /* WARNING: Does not return */
            pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x1025a8);
            (*pcVar4)();
          }
          iVar1 = (*pcVar4)(plVar2,param_3);
          if (0 < iVar1) {
            return 0x1a4;
          }
          return 0x124;
        }
        uVar5 = (ulong)iVar1;
        iVar1 = iVar1 + 1;
      } while (uVar5 < *(ulong *)(lVar3 + 0x28));
    }
  }
  return 0;
}



/* 001025d4 zte_power_supply_changed_work */

void zte_power_supply_changed_work(long param_1)

{
  byte bVar1;
  undefined8 uVar2;
  
  uVar2 = _raw_spin_lock_irqsave(param_1 + 0x88);
  bVar1 = *(byte *)(param_1 + 0x8c);
  if (bVar1 == 1) {
    *(undefined1 *)(param_1 + 0x8c) = 0;
    _raw_spin_unlock_irqrestore(param_1 + 0x88,uVar2);
    class_for_each_device(zte_power_supply_class,0,param_1 + -0x3c8,__zte_power_supply_changed_work)
    ;
    atomic_notifier_call_chain(zte_power_supply_notifier,0,param_1 + -0x3c8);
    kobject_uevent(param_1 + -0x390,2);
    uVar2 = _raw_spin_lock_irqsave(param_1 + 0x88);
    bVar1 = *(byte *)(param_1 + 0x8c);
  }
  if ((bVar1 & 1) == 0) {
    pm_relax(param_1 + -0x390);
  }
  _raw_spin_unlock_irqrestore(param_1 + 0x88,uVar2);
  return;
}



/* 00102694 zte_power_supply_deferred_register_work */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void zte_power_supply_deferred_register_work(long param_1)

{
  int iVar1;
  undefined8 uVar2;
  long lVar3;
  long *plVar4;
  
  plVar4 = (long *)(param_1 + -0x350);
  lVar3 = *plVar4;
  if (lVar3 != 0) {
    while (iVar1 = mutex_trylock(lVar3 + 0xa0), iVar1 == 0) {
      if ((*(byte *)(param_1 + 0x6e) & 1) != 0) {
        return;
      }
      msleep(10);
      lVar3 = *plVar4;
    }
  }
  uVar2 = _raw_spin_lock_irqsave(param_1 + 0x68);
  *(undefined1 *)(param_1 + 0x6c) = 1;
  pm_stay_awake(param_1 + -0x3b0);
  _raw_spin_unlock_irqrestore(param_1 + 0x68,uVar2);
  queue_work_on(0x20,_system_wq,param_1 + -0x20);
  if (*plVar4 != 0) {
    mutex_unlock(*plVar4 + 0xa0);
  }
  return;
}



/* 0010273c zte_power_supply_check_supplies */

void zte_power_supply_check_supplies(long param_1)

{
  long lVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  undefined8 *puVar5;
  undefined8 uVar6;
  ulong uVar7;
  long local_98 [11];
  
  lVar1 = sp_el0;
  local_98[10] = *(long *)(lVar1 + 0x710);
  if (((*(long *)(param_1 + 0x18) == 0) || (*(long *)(param_1 + 0x20) == 0)) &&
     (*(long *)(param_1 + 0x28) != 0)) {
    uVar7 = 0;
    local_98[8] = 0;
    local_98[9] = 0;
    local_98[6] = 0;
    local_98[7] = 0;
    local_98[4] = 0;
    local_98[5] = 0;
    local_98[2] = 0;
    local_98[3] = 0;
    local_98[0] = 0;
    local_98[1] = 0;
    do {
      iVar2 = __of_parse_phandle_with_args
                        (*(undefined8 *)(param_1 + 0x28),"power-supplies",0,0,uVar7,local_98);
      iVar3 = (int)uVar7;
      if ((iVar2 != 0) || (local_98[0] == 0)) {
        if (iVar3 == 0) goto LAB_00102894;
        puVar5 = (undefined8 *)devm_kmalloc(param_1 + 0x38,8,0xdc0);
        *(undefined8 **)(param_1 + 0x18) = puVar5;
        if (puVar5 != (undefined8 *)0x0) {
          if (iVar3 < 0) {
            uVar6 = 0;
          }
          else {
            uVar6 = devm_kmalloc(param_1 + 0x38,uVar7 << 3,0xdc0);
            puVar5 = *(undefined8 **)(param_1 + 0x18);
          }
          *puVar5 = uVar6;
          if (**(long **)(param_1 + 0x18) != 0) {
            uVar4 = class_for_each_device
                              (zte_power_supply_class,0,param_1,
                               __zte_power_supply_populate_supplied_from);
            _dev_info(param_1 + 0x38,"%s %d\n","zte_power_supply_populate_supplied_from",uVar4);
            goto LAB_00102894;
          }
        }
        iVar2 = -0xc;
        goto LAB_00102898;
      }
      uVar7 = (ulong)(iVar3 + 1);
      iVar3 = class_for_each_device
                        (zte_power_supply_class,0,local_98[0],
                         __zte_power_supply_find_supply_from_node);
    } while (iVar3 == 1);
    iVar2 = -0x205;
    if (iVar3 != 0) {
      iVar2 = iVar3;
    }
    _dev_info(0xfffffdfb,param_1 + 0x38,"Failed to find supply!\n");
  }
  else {
LAB_00102894:
    iVar2 = 0;
  }
LAB_00102898:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_98[10]) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar2);
}



/* 001028d8 device_init_wakeup */

undefined8 device_init_wakeup(undefined8 param_1,ulong param_2)

{
  undefined8 uVar1;
  
  if ((param_2 & 1) == 0) {
    device_wakeup_disable();
    device_set_wakeup_capable(param_1,0);
    uVar1 = 0;
  }
  else {
    device_set_wakeup_capable(param_1,1);
    uVar1 = device_wakeup_enable(param_1);
  }
  return uVar1;
}



/* 0010292c zte_power_supply_dev_release */

void zte_power_supply_dev_release(long param_1)

{
  kfree(param_1 + -0x38);
  return;
}



/* 00102950 __zte_power_supply_changed_work */

undefined8 __zte_power_supply_changed_work(long param_1,undefined8 *param_2)

{
  int iVar1;
  ulong uVar2;
  code *pcVar3;
  undefined8 *puVar4;
  char *pcVar5;
  long lVar6;
  ulong uVar7;
  undefined8 *puVar8;
  int iVar9;
  
  puVar4 = *(undefined8 **)(param_1 + 0x98);
  lVar6 = puVar4[3];
  if (lVar6 == 0) {
    lVar6 = param_2[1];
    if ((lVar6 != 0) && (uVar7 = param_2[2], uVar7 != 0)) {
      puVar8 = (undefined8 *)*puVar4;
      pcVar5 = (char *)*puVar8;
      if (pcVar5 != (char *)0x0) {
        uVar2 = 0;
        iVar9 = 1;
        do {
          iVar1 = strcmp(*(char **)(lVar6 + uVar2 * 8),pcVar5);
          if (iVar1 == 0) goto LAB_00102a00;
          uVar2 = (ulong)iVar9;
          iVar9 = iVar9 + 1;
        } while (uVar2 < uVar7);
      }
    }
  }
  else {
    pcVar5 = *(char **)*param_2;
    if ((pcVar5 != (char *)0x0) && (uVar7 = puVar4[4], uVar7 != 0)) {
      uVar2 = 0;
      iVar9 = 1;
      do {
        iVar1 = strcmp(pcVar5,*(char **)(lVar6 + uVar2 * 8));
        if (iVar1 == 0) {
          puVar8 = (undefined8 *)*puVar4;
LAB_00102a00:
          pcVar3 = (code *)puVar8[9];
          if (pcVar3 == (code *)0x0) {
            return 0;
          }
          if (*(int *)(pcVar3 + -4) == 0x6f39adef) {
            (*pcVar3)(puVar4);
            return 0;
          }
                    /* WARNING: Does not return */
          pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x102a24);
          (*pcVar3)();
        }
        uVar2 = (ulong)iVar9;
        iVar9 = iVar9 + 1;
      } while (uVar2 < uVar7);
    }
  }
  return 0;
}



/* 00102a48 __zte_power_supply_find_supply_from_node */

bool __zte_power_supply_find_supply_from_node(long param_1,long param_2)

{
  return *(long *)(*(long *)(param_1 + 0x98) + 0x28) == param_2;
}



/* 00102a60 __zte_power_supply_populate_supplied_from */

undefined8 __zte_power_supply_populate_supplied_from(long param_1,undefined8 *param_2)

{
  long lVar1;
  int iVar2;
  int iVar3;
  undefined8 *puVar4;
  long local_88 [11];
  
  lVar1 = sp_el0;
  iVar3 = -1;
  local_88[10] = *(long *)(lVar1 + 0x710);
  puVar4 = *(undefined8 **)(param_1 + 0x98);
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
  do {
    iVar3 = iVar3 + 1;
    iVar2 = __of_parse_phandle_with_args(param_2[5],"power-supplies",0,0,iVar3,local_88);
    if ((iVar2 != 0) || (local_88[0] == 0)) goto LAB_00102b20;
  } while (local_88[0] != puVar4[5]);
  _dev_info(param_2 + 7,"%s: Found supply : %s\n",*(undefined8 *)*param_2,*(undefined8 *)*puVar4);
  *(undefined8 *)(param_2[3] + (long)iVar3 * 8) = *(undefined8 *)*puVar4;
  param_2[4] = param_2[4] + 1;
LAB_00102b20:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_88[10]) {
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00102b58 zte_power_supply_get_battery_info */

uint zte_power_supply_get_battery_info(long param_1,long param_2)

{
  long lVar1;
  uint uVar2;
  uint uVar3;
  ulong uVar4;
  ulong uVar5;
  code *pcVar6;
  int iVar7;
  uint uVar8;
  undefined8 uVar9;
  long lVar10;
  long lVar11;
  ulong uVar12;
  undefined8 *puVar13;
  ulong uVar14;
  ulong uVar15;
  uint local_c4;
  char *local_c0;
  ulong local_b8;
  undefined8 uStack_b0;
  undefined8 local_a8;
  undefined8 uStack_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  undefined8 uStack_70;
  long local_68;
  
  lVar10 = sp_el0;
  local_68 = *(long *)(lVar10 + 0x710);
  *(undefined4 *)(param_2 + 0x5c) = 0xffffffea;
  *(undefined8 *)(param_2 + 0x1b8) = 0;
  *(undefined8 *)(param_2 + 0x178) = 0xffffffeaffffffea;
  *(undefined8 *)(param_2 + 0x180) = 0xffffffeaffffffea;
  *(undefined8 *)(param_2 + 0x188) = 0xffffffeaffffffea;
  *(undefined8 *)(param_2 + 400) = 0xffffffeaffffffea;
  *(undefined8 *)(param_2 + 4) = 0xffffffeaffffffea;
  *(undefined8 *)(param_2 + 0xc) = 0xffffffeaffffffea;
  *(undefined4 *)(param_2 + 0x18) = 0xffffffea;
  *(undefined4 *)(param_2 + 0x20) = 0xffffffea;
  *(undefined8 *)(param_2 + 0x2c) = 0xffffffeaffffffea;
  *(undefined4 *)(param_2 + 0x54) = 0xffffffea;
  puVar13 = (undefined8 *)(param_2 + 200);
  *puVar13 = 0;
  *(undefined4 *)(param_2 + 0x168) = 0xffffffea;
  *(undefined8 *)(param_2 + 0xd0) = 0;
  *(undefined8 *)(param_2 + 0x60) = 0xffffffeaffffffea;
  *(undefined8 *)(param_2 + 0x16c) = 0xffffffeaffffffea;
  *(undefined8 *)(param_2 + 0xd8) = 0;
  *(undefined8 *)(param_2 + 0xe0) = 0;
  *(undefined4 *)(param_2 + 0x174) = 0xffffffea;
  *(undefined8 *)(param_2 + 0xe8) = 0;
  *(undefined4 *)(param_2 + 0x68) = 0xffffffea;
  *(undefined4 *)(param_2 + 0x6c) = 0xffffffea;
  *(undefined8 *)(param_2 + 0xf0) = 0;
  *(undefined8 *)(param_2 + 0x70) = 0xffffffeaffffffea;
  *(undefined8 *)(param_2 + 0xf8) = 0;
  *(undefined8 *)(param_2 + 0x100) = 0;
  *(undefined8 *)(param_2 + 0x78) = 0xffffffeaffffffea;
  *(undefined8 *)(param_2 + 0x108) = 0;
  *(undefined8 *)(param_2 + 0x110) = 0;
  *(undefined8 *)(param_2 + 0x80) = 0xffffffeaffffffea;
  *(undefined8 *)(param_2 + 0x118) = 0;
  *(undefined8 *)(param_2 + 0x120) = 0;
  *(undefined8 *)(param_2 + 0x128) = 0;
  *(undefined4 *)(param_2 + 0x88) = 0xffffffea;
  *(undefined4 *)(param_2 + 0x8c) = 0xffffffea;
  *(undefined4 *)(param_2 + 0x198) = 0xffffffea;
  *(undefined8 *)(param_2 + 0x130) = 0;
  *(undefined4 *)(param_2 + 0x19c) = 0xffffffea;
  *(undefined8 *)(param_2 + 0x138) = 0;
  *(undefined4 *)(param_2 + 0x90) = 0xffffffea;
  *(undefined4 *)(param_2 + 0x94) = 0xffffffea;
  *(undefined4 *)(param_2 + 0x1a0) = 0xffffffea;
  *(undefined8 *)(param_2 + 0x140) = 0;
  *(undefined4 *)(param_2 + 0x1a4) = 0xffffffea;
  *(undefined8 *)(param_2 + 0x148) = 0;
  *(undefined4 *)(param_2 + 0x98) = 0xffffffea;
  *(undefined4 *)(param_2 + 0x9c) = 0xffffffea;
  *(undefined4 *)(param_2 + 0x1a8) = 0xffffffea;
  *(undefined8 *)(param_2 + 0x150) = 0;
  *(undefined4 *)(param_2 + 0x1ac) = 0xffffffea;
  *(undefined8 *)(param_2 + 0x158) = 0;
  *(undefined4 *)(param_2 + 0xa0) = 0xffffffea;
  *(undefined4 *)(param_2 + 0xa4) = 0xffffffea;
  *(undefined4 *)(param_2 + 0x1b0) = 0xffffffea;
  *(undefined8 *)(param_2 + 0x160) = 0;
  *(undefined4 *)(param_2 + 0xa8) = 0xffffffea;
  *(undefined4 *)(param_2 + 0x1b4) = 0xffffffea;
  local_c0 = (char *)0x0;
  local_c4 = 0;
  if (*(long *)(param_1 + 0x28) == 0) {
    _dev_warn(param_1 + 0x38,"%s currently only supports devicetree\n",
              "zte_power_supply_get_battery_info");
    uVar8 = 0xfffffffa;
  }
  else {
    local_78 = 0;
    uStack_70 = 0;
    local_88 = 0;
    uStack_80 = 0;
    local_98 = 0;
    uStack_90 = 0;
    local_a8 = 0;
    uStack_a0 = 0;
    local_b8 = 0;
    uStack_b0 = 0;
    iVar7 = __of_parse_phandle_with_args
                      (*(long *)(param_1 + 0x28),"monitored-battery",0,0,0,&local_b8);
    uVar5 = local_b8;
    uVar8 = 0xffffffed;
    if (((iVar7 == 0) && (local_b8 != 0)) &&
       (uVar8 = of_property_read_string(local_b8,"compatible",&local_c0), uVar8 == 0)) {
      iVar7 = strcmp("simple-battery",local_c0);
      if (iVar7 == 0) {
        of_property_read_variable_u32_array
                  (uVar5,"energy-full-design-microwatt-hours",(undefined8 *)(param_2 + 4),1,0);
        of_property_read_variable_u32_array
                  (uVar5,"charge-full-design-microamp-hours",param_2 + 8,1,0);
        of_property_read_variable_u32_array
                  (uVar5,"voltage-min-design-microvolt",(undefined8 *)(param_2 + 0xc),1,0);
        of_property_read_variable_u32_array(uVar5,"voltage-max-design-microvolt",param_2 + 0x10,1,0)
        ;
        of_property_read_variable_u32_array
                  (uVar5,"precharge-current-microamp",(undefined4 *)(param_2 + 0x18),1,0);
        of_property_read_variable_u32_array
                  (uVar5,"charge-term-current-microamp",(undefined4 *)(param_2 + 0x20),1,0);
        of_property_read_variable_u32_array
                  (uVar5,"constant-charge-current-max-microamp",(undefined8 *)(param_2 + 0x2c),1,0);
        of_property_read_variable_u32_array
                  (uVar5,"constant-charge-voltage-max-microvolt",param_2 + 0x30,1,0);
        of_property_read_variable_u32_array
                  (uVar5,"factory-internal-resistance-micro-ohms",(undefined4 *)(param_2 + 0x54),1,0
                  );
        local_c4 = of_property_count_elems_of_size(uVar5,"ocv-capacity-celsius",4);
        if ((-1 < (int)local_c4) || (uVar8 = local_c4, local_c4 == 0xffffffea)) {
          if ((int)local_c4 < 0x15) {
            if (0 < (int)local_c4) {
              uVar15 = (ulong)local_c4;
              of_property_read_variable_u32_array
                        (uVar5,"ocv-capacity-celsius",(undefined4 *)(param_2 + 0x5c),uVar15,0);
              uVar14 = 0;
              do {
                local_b8 = local_b8 & 0xffffffff00000000;
                uVar9 = kasprintf(0xcc0,"ocv-capacity-table-%d",uVar14 & 0xffffffff);
                lVar10 = of_get_property(uVar5,uVar9,&local_b8);
                if ((lVar10 == 0) || ((uint)local_b8 == 0)) {
                  _dev_err(param_1 + 0x38,"failed to get %s\n",uVar9);
                  kfree(uVar9);
                  lVar10 = 0;
                  do {
                    if (*(long *)((long)puVar13 + lVar10) != 0) {
                      devm_kfree(param_1 + 0x38);
                    }
                    lVar10 = lVar10 + 8;
                  } while (lVar10 != 0xa0);
                  uVar8 = 0xffffffea;
                  lVar10 = *(long *)(param_2 + 0x1b8);
joined_r0x00103110:
                  if (lVar10 != 0) {
                    devm_kfree(param_1 + 0x38);
                  }
                  goto LAB_00102fa8;
                }
                kfree(uVar9);
                if (uVar14 == 0x14) {
                    /* WARNING: Does not return */
                  pcVar6 = (code *)SoftwareBreakpoint(0x5512,0x10318c);
                  (*pcVar6)();
                }
                uVar2 = (uint)local_b8;
                uVar8 = (int)(uint)local_b8 >> 3;
                *(uint *)(param_2 + 0x168 + uVar14 * 4) = uVar8;
                if ((int)uVar8 < 0) {
                  puVar13[uVar14] = 0;
LAB_0010311c:
                  lVar10 = 0;
                  do {
                    if (*(long *)((long)puVar13 + lVar10) != 0) {
                      devm_kfree(param_1 + 0x38);
                    }
                    lVar10 = lVar10 + 8;
                  } while (lVar10 != 0xa0);
                  uVar8 = 0xfffffff4;
                  lVar10 = *(long *)(param_2 + 0x1b8);
                  goto joined_r0x00103110;
                }
                uVar4 = (ulong)uVar8 << 3;
                lVar11 = devm_kmalloc(param_1 + 0x38,uVar4,0xdc0);
                puVar13[uVar14] = lVar11;
                if (lVar11 == 0) goto LAB_0010311c;
                if (7 < uVar2) {
                  uVar12 = 0;
                  if (uVar8 < 2) {
                    uVar8 = 1;
                  }
                  do {
                    if (uVar4 <= uVar12) goto LAB_00103164;
                    uVar2 = *(uint *)(lVar10 + uVar12);
                    uVar2 = (uVar2 & 0xff00ff00) >> 8 | (uVar2 & 0xff00ff) << 8;
                    *(uint *)(lVar11 + uVar12) = uVar2 >> 0x10 | uVar2 << 0x10;
                    if (uVar4 < uVar12 + 4) goto LAB_00103164;
                    uVar2 = ((uint *)(lVar10 + uVar12))[1];
                    lVar1 = lVar11 + uVar12;
                    uVar12 = uVar12 + 8;
                    uVar2 = (uVar2 & 0xff00ff00) >> 8 | (uVar2 & 0xff00ff) << 8;
                    *(uint *)(lVar1 + 4) = uVar2 >> 0x10 | uVar2 << 0x10;
                  } while ((ulong)uVar8 << 3 != uVar12);
                }
                uVar14 = uVar14 + 1;
              } while (uVar14 < uVar15);
            }
            lVar10 = of_get_property(uVar5,"resistance-temp-table",&local_c4);
            uVar8 = 0;
            if ((lVar10 != 0) && (local_c4 != 0)) {
              uVar8 = (int)local_c4 >> 3;
              *(uint *)(param_2 + 0x1c0) = uVar8;
              if ((int)uVar8 < 0) {
                *(undefined8 *)(param_2 + 0x1b8) = 0;
              }
              else {
                uVar5 = (ulong)uVar8 << 3;
                lVar11 = devm_kmalloc(param_1 + 0x38,uVar5,0xdc0);
                *(long *)(param_2 + 0x1b8) = lVar11;
                if (lVar11 != 0) {
                  uVar2 = *(uint *)(param_2 + 0x1c0);
                  if ((int)uVar2 < 1) {
                    uVar8 = 0;
                  }
                  else {
                    uVar14 = 0;
                    do {
                      if (uVar5 <= uVar14) {
LAB_00103164:
                    /* WARNING: Does not return */
                        pcVar6 = (code *)SoftwareBreakpoint(1,0x103168);
                        (*pcVar6)();
                      }
                      uVar8 = *(uint *)(lVar10 + uVar14);
                      uVar8 = (uVar8 & 0xff00ff00) >> 8 | (uVar8 & 0xff00ff) << 8;
                      *(uint *)(lVar11 + uVar14) = uVar8 >> 0x10 | uVar8 << 0x10;
                      if (uVar5 < uVar14 + 4) goto LAB_00103164;
                      uVar3 = ((uint *)(lVar10 + uVar14))[1];
                      lVar1 = lVar11 + uVar14;
                      uVar14 = uVar14 + 8;
                      uVar8 = 0;
                      uVar3 = (uVar3 & 0xff00ff00) >> 8 | (uVar3 & 0xff00ff) << 8;
                      *(uint *)(lVar1 + 4) = uVar3 >> 0x10 | uVar3 << 0x10;
                    } while ((ulong)uVar2 * 8 - uVar14 != 0);
                  }
                  goto LAB_00102fa8;
                }
              }
              zte_power_supply_put_battery_info(param_1,param_2);
              uVar8 = 0xfffffff4;
            }
          }
          else {
            _dev_err(param_1 + 0x38,"Too many temperature values\n");
            uVar8 = 0xffffffea;
          }
        }
      }
      else {
        uVar8 = 0xffffffed;
      }
    }
  }
LAB_00102fa8:
  lVar10 = sp_el0;
  if (*(long *)(lVar10 + 0x710) == local_68) {
    return uVar8;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00103190 zte_power_supply_match_device_by_name */

bool zte_power_supply_match_device_by_name(long param_1,char *param_2)

{
  int iVar1;
  
  iVar1 = strcmp(*(char **)**(undefined8 **)(param_1 + 0x98),param_2);
  return iVar1 == 0;
}



/* 001031c4 zte_power_supply_temp2resist_simple */

int zte_power_supply_temp2resist_simple(int *param_1,int param_2,int param_3)

{
  int iVar1;
  int *piVar2;
  int iVar3;
  
  if (0 < param_2) {
    iVar3 = 0;
    piVar2 = param_1;
    while (param_3 <= *piVar2) {
      iVar3 = iVar3 + 1;
      piVar2 = piVar2 + 2;
      if (param_2 == iVar3) {
        return param_1[(long)param_2 * 2 + -1];
      }
    }
    if (iVar3 != 0) {
      iVar1 = piVar2[-2] - *piVar2;
      iVar3 = 0;
      if (iVar1 != 0) {
        iVar3 = ((param_3 - *piVar2) * (piVar2[-1] - piVar2[1])) / iVar1;
      }
      return iVar3 + piVar2[1];
    }
  }
  return param_1[1];
}



/* 00103230 zte_power_supply_ocv2cap_simple */

int zte_power_supply_ocv2cap_simple(int *param_1,int param_2,int param_3)

{
  int iVar1;
  int *piVar2;
  int iVar3;
  
  if (0 < param_2) {
    iVar3 = 0;
    piVar2 = param_1;
    while (param_3 <= *piVar2) {
      iVar3 = iVar3 + 1;
      piVar2 = piVar2 + 2;
      if (param_2 == iVar3) {
        return param_1[(long)param_2 * 2 + -1];
      }
    }
    if (iVar3 != 0) {
      iVar1 = piVar2[-2] - *piVar2;
      iVar3 = 0;
      if (iVar1 != 0) {
        iVar3 = ((param_3 - *piVar2) * (piVar2[-1] - piVar2[1])) / iVar1;
      }
      return iVar3 + piVar2[1];
    }
  }
  return param_1[1];
}



/* 001032b8 init_module */

ulong init_module(void)

{
  ulong uVar1;
  
  uVar1 = class_create("zte_power_supply");
  zte_power_supply_class = uVar1;
  if (uVar1 < 0xfffffffffffff001) {
    *(code **)(uVar1 + 0x18) = zte_power_supply_uevent;
    zte_power_supply_init_attrs(zte_power_supply_dev_type);
    uVar1 = 0;
  }
  return uVar1;
}



/* 0010330c cleanup_module */

void cleanup_module(void)

{
  class_destroy(zte_power_supply_class);
  return;
}



