
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

