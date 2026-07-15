
void zte_ir_remove(long param_1)

{
  long *plVar1;
  int iVar2;
  char cVar3;
  bool bVar4;
  long *plVar5;
  long lVar6;
  undefined4 *puVar7;
  
  puVar7 = *(undefined4 **)(param_1 + 0x98);
  if (puVar7 != (undefined4 *)0x0) {
    mutex_lock(puVar7 + 0x4e2a);
    mutex_lock(&device_list_lock);
    *(undefined1 *)(puVar7 + 0x4e3b) = 1;
    _raw_spin_lock_irq(puVar7 + 0x4e28);
    *(undefined8 *)(puVar7 + 0x4e24) = 0;
    _raw_spin_unlock_irq(puVar7 + 0x4e28);
    plVar5 = *(long **)(puVar7 + 0x4e38);
    plVar1 = (long *)(puVar7 + 0x4e36);
    if (((long *)*plVar5 == plVar1) && (lVar6 = *plVar1, *(long **)(lVar6 + 8) == plVar1)) {
      *(long **)(lVar6 + 8) = plVar5;
      *plVar5 = lVar6;
    }
    else {
      __list_del_entry_valid_or_report();
    }
    *(undefined8 *)(puVar7 + 0x4e36) = 0xdead000000000100;
    *(undefined8 *)(puVar7 + 0x4e38) = 0xdead000000000122;
    device_destroy(zte_ir_class,*puVar7);
    Hint_Prefetch(0x101400,2,0,1);
    do {
      cVar3 = '\x01';
      bVar4 = (bool)ExclusiveMonitorPass(0x101400,0x10);
      if (bVar4) {
        cVar3 = ExclusiveMonitorsStatus();
        minors = minors & 0xfffffffffffffffe;
      }
    } while (cVar3 != '\0');
    *(undefined8 *)(param_1 + 0x98) = 0;
    iVar2 = puVar7[0x4e3a];
    mutex_unlock(&device_list_lock);
    mutex_unlock(puVar7 + 0x4e2a);
    if (iVar2 == 0) {
      kfree(puVar7);
    }
  }
  return;
}

