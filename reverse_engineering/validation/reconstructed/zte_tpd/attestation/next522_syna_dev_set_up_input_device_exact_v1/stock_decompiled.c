
int syna_dev_set_up_input_device(long *param_1)

{
  ulong *puVar1;
  char cVar2;
  bool bVar3;
  int iVar4;
  undefined8 *puVar5;
  long lVar6;
  undefined8 uVar7;
  long lVar8;
  
  if (*(char *)(*param_1 + 9) == '\x01') {
    syna_dev_free_input_events();
    lVar6 = *param_1;
    if ((*(int *)(lVar6 + 0x10) != 0) || (*(int *)(lVar6 + 0x14) != 0)) {
      if (((int)param_1[0x77] != *(int *)(lVar6 + 0x10)) ||
         ((*(int *)((long)param_1 + 0x3bc) != *(int *)(lVar6 + 0x14) ||
          (*(uint *)(param_1 + 0x78) != *(uint *)(lVar6 + 0x18))))) {
        mutex_lock(param_1 + 0x4f);
        if (param_1[0x76] != 0) {
          input_unregister_device();
          param_1[0x76] = 0;
        }
        lVar8 = *param_1;
        lVar6 = syna_request_managed_device();
        if (lVar6 == 0) {
          _printk(&DAT_0013ccb3,"syna_dev_create_input_device");
          iVar4 = -0x16;
        }
        else {
          puVar5 = (undefined8 *)devm_input_allocate_device();
          if (puVar5 == (undefined8 *)0x0) {
            _printk(&DAT_00138164,"syna_dev_create_input_device");
            iVar4 = -0x13;
          }
          else {
            *puVar5 = "synaptics_tcm_touch";
            puVar5[1] = "synaptics_tcm/touch_input";
            *(undefined4 *)((long)puVar5 + 0x1c) = 0x10001;
            uVar7 = *(undefined8 *)(param_1[1] + 0x70);
            puVar5[0x59] = param_1;
            puVar5[0x52] = uVar7;
            puVar1 = puVar5 + 5;
            Hint_Prefetch(puVar1,2,0,1);
            do {
              cVar2 = '\x01';
              bVar3 = (bool)ExclusiveMonitorPass(puVar1,0x10);
              if (bVar3) {
                *puVar1 = *puVar1 | 1;
                cVar2 = ExclusiveMonitorsStatus();
              }
            } while (cVar2 != '\0');
            puVar1 = puVar5 + 5;
            Hint_Prefetch(puVar1,2,0,1);
            do {
              cVar2 = '\x01';
              bVar3 = (bool)ExclusiveMonitorPass(puVar1,0x10);
              if (bVar3) {
                *puVar1 = *puVar1 | 2;
                cVar2 = ExclusiveMonitorsStatus();
              }
            } while (cVar2 != '\0');
            puVar1 = puVar5 + 5;
            Hint_Prefetch(puVar1,2,0,1);
            do {
              cVar2 = '\x01';
              bVar3 = (bool)ExclusiveMonitorPass(puVar1,0x10);
              if (bVar3) {
                *puVar1 = *puVar1 | 8;
                cVar2 = ExclusiveMonitorsStatus();
              }
            } while (cVar2 != '\0');
            puVar1 = puVar5 + 0xb;
            Hint_Prefetch(puVar1,2,0,1);
            do {
              cVar2 = '\x01';
              bVar3 = (bool)ExclusiveMonitorPass(puVar1,0x10);
              if (bVar3) {
                *puVar1 = *puVar1 | 0x400;
                cVar2 = ExclusiveMonitorsStatus();
              }
            } while (cVar2 != '\0');
            puVar1 = puVar5 + 0xb;
            Hint_Prefetch(puVar1,2,0,1);
            do {
              cVar2 = '\x01';
              bVar3 = (bool)ExclusiveMonitorPass(puVar1,0x10);
              if (bVar3) {
                *puVar1 = *puVar1 | 0x20;
                cVar2 = ExclusiveMonitorsStatus();
              }
            } while (cVar2 != '\0');
            puVar1 = puVar5 + 4;
            Hint_Prefetch(puVar1,2,0,1);
            do {
              cVar2 = '\x01';
              bVar3 = (bool)ExclusiveMonitorPass(puVar1,0x10);
              if (bVar3) {
                *puVar1 = *puVar1 | 2;
                cVar2 = ExclusiveMonitorsStatus();
              }
            } while (cVar2 != '\0');
            puVar1 = puVar5 + 8;
            Hint_Prefetch(puVar1,2,0,1);
            do {
              cVar2 = '\x01';
              bVar3 = (bool)ExclusiveMonitorPass(puVar1,0x10);
              if (bVar3) {
                *puVar1 = *puVar1 | 0x8000;
                cVar2 = ExclusiveMonitorsStatus();
              }
            } while (cVar2 != '\0');
            input_set_capability(puVar5,1,0x8f);
            input_set_abs_params(puVar5,0x35,0,*(undefined4 *)(lVar8 + 0x10),0,0);
            input_set_abs_params(puVar5,0x36,0,*(undefined4 *)(lVar8 + 0x14),0,0);
            input_mt_init_slots(puVar5,*(undefined4 *)(lVar8 + 0x18),2);
            input_set_abs_params(puVar5,0x30,0,0xff,0,0);
            input_set_abs_params(puVar5,0x31,0,0xff,0,0);
            *(undefined4 *)(param_1 + 0x77) = *(undefined4 *)(lVar8 + 0x10);
            *(undefined4 *)((long)param_1 + 0x3bc) = *(undefined4 *)(lVar8 + 0x14);
            *(undefined4 *)(param_1 + 0x78) = *(undefined4 *)(lVar8 + 0x18);
            iVar4 = input_register_device(puVar5);
            if (-1 < iVar4) {
              param_1[0x76] = (long)puVar5;
              iVar4 = syna_tcm_set_report_dispatcher
                                (*param_1,0x11,syna_dev_process_touch_report,param_1);
              if (iVar4 < 0) {
                _printk(&DAT_00136a7b,"syna_dev_set_up_input_device");
              }
              mutex_unlock(param_1 + 0x4f);
              return 0;
            }
            _printk(&DAT_00138191,"syna_dev_create_input_device");
            input_free_device(puVar5);
          }
        }
        _printk(&DAT_0013d2f5,"syna_dev_set_up_input_device");
        mutex_unlock(param_1 + 0x4f);
        return iVar4;
      }
      if (*(uint *)(param_1 + 0x78) < 0xb) {
        _printk(&DAT_0013da2b,"syna_dev_check_input_params");
      }
      else {
        _printk(&DAT_0013cced,"syna_dev_check_input_params");
      }
    }
  }
  else {
    _printk(&DAT_00133858,"syna_dev_set_up_input_device");
  }
  return 0;
}

