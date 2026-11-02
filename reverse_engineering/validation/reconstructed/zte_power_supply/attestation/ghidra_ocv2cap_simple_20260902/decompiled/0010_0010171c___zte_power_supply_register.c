
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
    _printk(&DAT_00103713,"__zte_power_supply_register",lVar8);
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
      iVar6 = dev_set_name(plVar7 + 7,&DAT_001036b1,*param_2);
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

