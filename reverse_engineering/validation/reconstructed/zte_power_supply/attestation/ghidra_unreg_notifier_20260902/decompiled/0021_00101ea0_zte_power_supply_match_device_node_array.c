
undefined8 zte_power_supply_match_device_node_array(long param_1,long *param_2)

{
  int *piVar1;
  char cVar2;
  bool bVar3;
  long lVar4;
  
  if ((*(long *)(param_1 + 0x60) != 0) && (*(long *)(*(long *)(param_1 + 0x60) + 0x2e8) == *param_2)
     ) {
    if (param_2[3] < param_2[2]) {
      lVar4 = param_2[1];
      *(undefined8 *)(lVar4 + param_2[3] * 8) = *(undefined8 *)(param_1 + 0x98);
      piVar1 = (int *)(*(long *)(lVar4 + param_2[3] * 8) + 0x458);
      Hint_Prefetch(piVar1,2,0,1);
      do {
        cVar2 = '\x01';
        bVar3 = (bool)ExclusiveMonitorPass(piVar1,0x10);
        if (bVar3) {
          *piVar1 = *piVar1 + 1;
          cVar2 = ExclusiveMonitorsStatus();
        }
      } while (cVar2 != '\0');
      param_2[3] = param_2[3] + 1;
      return 0;
    }
    return 0xffffffb5;
  }
  return 0;
}

