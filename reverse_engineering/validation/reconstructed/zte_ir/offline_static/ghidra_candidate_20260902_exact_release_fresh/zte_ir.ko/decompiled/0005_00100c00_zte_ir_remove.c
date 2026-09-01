
void zte_ir_remove(long param_1)

{
  uint *puVar1;
  ulong *puVar2;
  uint uVar3;
  char cVar4;
  bool bVar5;
  long *plVar6;
  long lVar7;
  uint *puVar8;
  
  puVar8 = *(uint **)(param_1 + 0x98);
  _raw_spin_lock_irq(puVar8 + 0x4e28);
  puVar8[0x4e24] = 0;
  puVar8[0x4e25] = 0;
  _raw_spin_unlock_irq(puVar8 + 0x4e28);
  mutex_lock(&device_list_lock);
  plVar6 = *(long **)(puVar8 + 0x4e38);
  puVar1 = puVar8 + 0x4e36;
  if (((uint *)*plVar6 == puVar1) && (lVar7 = *(long *)puVar1, *(uint **)(lVar7 + 8) == puVar1)) {
    *(long **)(lVar7 + 8) = plVar6;
    *plVar6 = lVar7;
  }
  else {
    __list_del_entry_valid_or_report();
  }
  puVar8[0x4e36] = 0x100;
  puVar8[0x4e37] = 0xdead0000;
  puVar8[0x4e38] = 0x122;
  puVar8[0x4e39] = 0xdead0000;
  device_destroy(zte_ir_class,*puVar8);
  uVar3 = *puVar8;
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
  kfree(puVar8);
  mutex_unlock(&device_list_lock);
  return;
}

