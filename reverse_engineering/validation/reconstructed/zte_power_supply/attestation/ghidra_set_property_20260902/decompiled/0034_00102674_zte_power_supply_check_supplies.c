
void zte_power_supply_check_supplies(long param_1)

{
  long lVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  undefined8 *puVar5;
  undefined8 uVar6;
  ulong uVar7;
  long local_98 [11];
  
  lVar1 = sp_el0;
  local_98[10] = *(long *)(lVar1 + 0x710);
  if (((*(long *)(param_1 + 0x18) == 0) || (*(long *)(param_1 + 0x20) == 0)) &&
     (*(long *)(param_1 + 0x28) != 0)) {
    uVar7 = 0;
    local_98[8] = 0;
    local_98[9] = 0;
    local_98[6] = 0;
    local_98[7] = 0;
    local_98[4] = 0;
    local_98[5] = 0;
    local_98[2] = 0;
    local_98[3] = 0;
    local_98[0] = 0;
    local_98[1] = 0;
    do {
      iVar2 = __of_parse_phandle_with_args
                        (*(undefined8 *)(param_1 + 0x28),"power-supplies",0,0,uVar7,local_98);
      iVar3 = (int)uVar7;
      if ((iVar2 != 0) || (local_98[0] == 0)) {
        if (iVar3 == 0) goto LAB_001027cc;
        puVar5 = (undefined8 *)devm_kmalloc(param_1 + 0x38,8,0xdc0);
        *(undefined8 **)(param_1 + 0x18) = puVar5;
        if (puVar5 != (undefined8 *)0x0) {
          if (iVar3 < 0) {
            uVar6 = 0;
          }
          else {
            uVar6 = devm_kmalloc(param_1 + 0x38,uVar7 << 3,0xdc0);
            puVar5 = *(undefined8 **)(param_1 + 0x18);
          }
          *puVar5 = uVar6;
          if (**(long **)(param_1 + 0x18) != 0) {
            uVar4 = class_for_each_device
                              (zte_power_supply_class,0,param_1,
                               __zte_power_supply_populate_supplied_from);
            _dev_info(param_1 + 0x38,"%s %d\n","zte_power_supply_populate_supplied_from",uVar4);
            goto LAB_001027cc;
          }
        }
        iVar2 = -0xc;
        goto LAB_001027d0;
      }
      uVar7 = (ulong)(iVar3 + 1);
      iVar3 = class_for_each_device
                        (zte_power_supply_class,0,local_98[0],
                         __zte_power_supply_find_supply_from_node);
    } while (iVar3 == 1);
    iVar2 = -0x205;
    if (iVar3 != 0) {
      iVar2 = iVar3;
    }
    _dev_info(0xfffffdfb,param_1 + 0x38,"Failed to find supply!\n");
  }
  else {
LAB_001027cc:
    iVar2 = 0;
  }
LAB_001027d0:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_98[10]) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar2);
}

