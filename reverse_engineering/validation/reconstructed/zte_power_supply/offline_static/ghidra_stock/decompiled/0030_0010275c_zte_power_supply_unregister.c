
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
    pcVar5 = (code *)SoftwareBreakpoint(0x800,0x102804);
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

