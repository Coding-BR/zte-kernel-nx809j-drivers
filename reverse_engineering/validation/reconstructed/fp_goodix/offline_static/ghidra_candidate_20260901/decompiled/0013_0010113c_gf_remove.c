
void gf_remove(void)

{
  ulong *puVar1;
  char cVar2;
  bool bVar3;
  ulong uVar4;
  
  _printk(&DAT_001033e3,"gf_remove");
  wakeup_source_remove(fp_wakelock);
  if (DAT_00103df0 != 0) {
    input_unregister_device();
  }
  input_free_device(DAT_00103df0);
  mutex_lock(device_list_lock);
  if (((undefined8 *)*DAT_00103dd0 == &DAT_00103dc8) &&
     (*(undefined8 **)(DAT_00103dc8 + 8) == &DAT_00103dc8)) {
    *(long **)(DAT_00103dc8 + 8) = DAT_00103dd0;
    *DAT_00103dd0 = DAT_00103dc8;
  }
  else {
    __list_del_entry_valid_or_report(&DAT_00103dc8);
  }
  DAT_00103dc8 = 0xdead000000000100;
  DAT_00103dd0 = (long *)0xdead000000000122;
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
  if (DAT_00103e60 != 0) {
    panel_event_notifier_unregister(cookie);
    cancel_delayed_work_sync(&DAT_00103e68);
    destroy_workqueue(DAT_00103e60);
  }
  mutex_unlock(device_list_lock);
  return;
}

