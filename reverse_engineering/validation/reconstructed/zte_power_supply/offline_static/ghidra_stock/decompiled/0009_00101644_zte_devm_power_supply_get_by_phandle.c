
ulong zte_devm_power_supply_get_by_phandle(long param_1,undefined8 param_2)

{
  int *piVar1;
  char cVar2;
  bool bVar3;
  int iVar4;
  ulong *puVar5;
  long lVar6;
  ulong uVar7;
  long local_88 [11];
  
  lVar6 = sp_el0;
  local_88[10] = *(long *)(lVar6 + 0x710);
  if (*(long *)(param_1 + 0x2e8) == 0) {
    uVar7 = 0xffffffffffffffed;
  }
  else {
    puVar5 = (ulong *)__devres_alloc_node(zte_devm_power_supply_put,8,0xcc0,0xffffffff,
                                          "zte_devm_power_supply_put");
    if (puVar5 == (ulong *)0x0) {
      uVar7 = 0xfffffffffffffff4;
    }
    else {
      local_88[8] = 0;
      local_88[9] = 0;
      local_88[6] = 0;
      local_88[7] = 0;
      local_88[4] = 0;
      local_88[5] = 0;
      local_88[2] = 0;
      local_88[3] = 0;
      local_88[0] = 0;
      local_88[1] = 0;
      iVar4 = __of_parse_phandle_with_args(*(undefined8 *)(param_1 + 0x2e8),param_2,0,0,0,local_88);
      uVar7 = 0xffffffffffffffed;
      if ((iVar4 == 0) && (local_88[0] != 0)) {
        lVar6 = class_find_device(zte_power_supply_class,0,local_88[0],
                                  zte_power_supply_match_device_node);
        if (lVar6 == 0) {
          uVar7 = 0;
        }
        else {
          uVar7 = *(ulong *)(lVar6 + 0x98);
          piVar1 = (int *)(uVar7 + 0x458);
          Hint_Prefetch(piVar1,2,0,1);
          do {
            cVar2 = '\x01';
            bVar3 = (bool)ExclusiveMonitorPass(piVar1,0x10);
            if (bVar3) {
              *piVar1 = *piVar1 + 1;
              cVar2 = ExclusiveMonitorsStatus();
            }
          } while (cVar2 != '\0');
          if ((uVar7 != 0) && (uVar7 < 0xfffffffffffff001)) {
            *puVar5 = uVar7;
            devres_add(param_1,puVar5);
            goto LAB_0010174c;
          }
        }
      }
      devres_free(puVar5);
    }
  }
LAB_0010174c:
  lVar6 = sp_el0;
  if (*(long *)(lVar6 + 0x710) != local_88[10]) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return uVar7;
}

