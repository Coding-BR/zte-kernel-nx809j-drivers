
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

