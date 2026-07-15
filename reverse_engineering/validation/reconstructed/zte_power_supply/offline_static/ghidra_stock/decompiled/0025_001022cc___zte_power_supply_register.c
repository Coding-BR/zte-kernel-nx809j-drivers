
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

long * __zte_power_supply_register(long param_1,long *param_2,long *param_3,uint param_4)

{
  long *plVar1;
  char cVar2;
  bool bVar3;
  undefined8 uVar4;
  int iVar5;
  long *plVar6;
  long lVar7;
  ulong uVar8;
  
  if (param_1 == 0) {
    _printk(&DAT_0010386d,"__zte_power_supply_register",*param_2);
  }
  if ((((param_2 == (long *)0x0) || (*param_2 == 0)) || (param_2[4] == 0)) || (param_2[5] == 0)) {
LAB_0010241c:
    plVar6 = (long *)0xffffffffffffffea;
  }
  else {
    uVar8 = 0;
    iVar5 = 1;
    do {
      if ((*(int *)(param_2[4] + uVar8 * 4) == 0x41) && ((param_2[2] == 0 || (param_2[3] == 0))))
      goto LAB_0010241c;
      uVar8 = (ulong)iVar5;
      iVar5 = iVar5 + 1;
    } while (uVar8 < (ulong)param_2[5]);
    plVar6 = (long *)__kmalloc_cache_noprof(__dev_info,0xdc0,0x4c0);
    if (plVar6 == (long *)0x0) {
      plVar6 = (long *)0xfffffffffffffff4;
    }
    else {
      device_initialize(plVar6 + 7);
      lVar7 = zte_power_supply_class;
      plVar6[0x16] = (long)zte_power_supply_dev_type;
      plVar6[0x13] = param_1;
      plVar6[0x6c] = (long)zte_power_supply_dev_release;
      plVar6[0x6a] = lVar7;
      plVar6[0x1a] = (long)plVar6;
      *plVar6 = (long)param_2;
      if (param_3 != (long *)0x0) {
        lVar7 = param_3[2];
        uVar8 = param_3[1];
        plVar6[0x6b] = param_3[3];
        plVar6[6] = lVar7;
        if (uVar8 == 0) {
          lVar7 = *param_3;
        }
        else if (uVar8 < 0xfffffffffffff001) {
          lVar7 = uVar8 - 0x18;
          if (*(undefined **)(uVar8 + 8) != &of_fwnode_ops) {
            lVar7 = 0;
          }
        }
        else {
          lVar7 = 0;
        }
        plVar6[5] = lVar7;
        lVar7 = param_3[5];
        plVar6[1] = param_3[4];
        plVar6[2] = lVar7;
      }
      iVar5 = dev_set_name(plVar6 + 7,&DAT_0010380b,*param_2);
      if (iVar5 == 0) {
        plVar6[0x79] = 0xfffffffe00000;
        plVar6[0x7a] = (long)(plVar6 + 0x7a);
        plVar6[0x7b] = (long)(plVar6 + 0x7a);
        plVar6[0x7d] = 0xfffffffe00000;
        plVar6[0x7c] = (long)zte_power_supply_changed_work;
        plVar6[0x7e] = (long)(plVar6 + 0x7e);
        plVar6[0x7f] = (long)(plVar6 + 0x7e);
        plVar6[0x80] = (long)zte_power_supply_deferred_register_work;
        init_timer_key(plVar6 + 0x81,&delayed_work_timer_fn,0x200000,0,0);
        iVar5 = zte_power_supply_check_supplies(plVar6);
        if (iVar5 == 0) {
          *(undefined4 *)(plVar6 + 0x8a) = 0;
          iVar5 = device_add(plVar6 + 7);
          if ((iVar5 == 0) && (iVar5 = device_init_wakeup(plVar6 + 7,param_4 & 1), iVar5 == 0)) {
            plVar1 = plVar6 + 0x8b;
            Hint_Prefetch(plVar1,2,0,1);
            do {
              cVar2 = '\x01';
              bVar3 = (bool)ExclusiveMonitorPass(plVar1,0x10);
              if (bVar3) {
                *(int *)plVar1 = (int)*plVar1 + 1;
                cVar2 = ExclusiveMonitorsStatus();
              }
              uVar4 = _system_power_efficient_wq;
            } while (cVar2 != '\0');
            *(undefined1 *)((long)plVar6 + 0x455) = 1;
            queue_delayed_work_on(0x20,uVar4,plVar6 + 0x7d,3);
            return plVar6;
          }
        }
        else {
          _dev_info(plVar6 + 7,"Not all required supplies found, defer probe\n");
        }
      }
      put_device(plVar6 + 7);
      plVar6 = (long *)(long)iVar5;
    }
  }
  return plVar6;
}

