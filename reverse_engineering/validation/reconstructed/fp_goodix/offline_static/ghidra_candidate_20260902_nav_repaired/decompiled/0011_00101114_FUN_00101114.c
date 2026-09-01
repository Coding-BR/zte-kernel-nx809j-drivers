
undefined4 FUN_00101114(ulong param_1)

{
  ulong *puVar1;
  char cVar2;
  bool bVar3;
  long in_x9;
  long unaff_x19;
  undefined4 unaff_w21;
  
  puVar1 = &minors + in_x9;
  Hint_Prefetch(puVar1,2,0,1);
  do {
    cVar2 = '\x01';
    bVar3 = (bool)ExclusiveMonitorPass(puVar1,0x10);
    if (bVar3) {
      *puVar1 = *puVar1 & (param_1 ^ 0xffffffffffffffff);
      cVar2 = ExclusiveMonitorsStatus();
    }
  } while (cVar2 != '\0');
  mutex_unlock(device_list_lock);
  gf_cleanup();
  *(undefined1 *)(unaff_x19 + 0x70) = 0;
  return unaff_w21;
}

