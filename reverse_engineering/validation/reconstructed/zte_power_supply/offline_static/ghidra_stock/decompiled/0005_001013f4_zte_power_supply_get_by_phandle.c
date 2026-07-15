
void zte_power_supply_get_by_phandle(undefined8 param_1,undefined8 param_2)

{
  int *piVar1;
  char cVar2;
  bool bVar3;
  int iVar4;
  long lVar5;
  long lVar6;
  long local_68 [11];
  
  lVar5 = sp_el0;
  local_68[10] = *(long *)(lVar5 + 0x710);
  local_68[8] = 0;
  local_68[9] = 0;
  local_68[6] = 0;
  local_68[7] = 0;
  local_68[4] = 0;
  local_68[5] = 0;
  local_68[2] = 0;
  local_68[3] = 0;
  local_68[0] = 0;
  local_68[1] = 0;
  iVar4 = __of_parse_phandle_with_args(param_1,param_2,0,0,0,local_68);
  lVar5 = -0x13;
  if ((iVar4 == 0) && (local_68[0] != 0)) {
    lVar6 = class_find_device(zte_power_supply_class,0,local_68[0],
                              zte_power_supply_match_device_node);
    lVar5 = 0;
    if (lVar6 != 0) {
      lVar5 = *(long *)(lVar6 + 0x98);
      piVar1 = (int *)(lVar5 + 0x458);
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
  }
  lVar6 = sp_el0;
  if (*(long *)(lVar6 + 0x710) != local_68[10]) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(lVar5);
  }
  return;
}

