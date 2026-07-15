
void zte_power_supply_check_supplies(long param_1)

{
  long lVar1;
  int iVar2;
  int iVar3;
  undefined8 *puVar4;
  undefined8 uVar5;
  int iVar6;
  ulong uVar7;
  long local_98 [11];
  
  lVar1 = sp_el0;
  local_98[10] = *(long *)(lVar1 + 0x710);
  if (((*(long *)(param_1 + 0x18) == 0) || (*(long *)(param_1 + 0x20) == 0)) &&
     (*(long *)(param_1 + 0x28) != 0)) {
    uVar7 = 0;
    do {
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
      iVar2 = __of_parse_phandle_with_args
                        (*(undefined8 *)(param_1 + 0x28),"power-supplies",0,0,uVar7,local_98);
      iVar6 = (int)uVar7;
      if ((iVar2 != 0) || (local_98[0] == 0)) {
        if (iVar6 == 0) goto LAB_00102b1c;
        puVar4 = (undefined8 *)devm_kmalloc(param_1 + 0x38,8,0xdc0);
        *(undefined8 **)(param_1 + 0x18) = puVar4;
        if (puVar4 != (undefined8 *)0x0) {
          if (iVar6 < 0) {
            uVar5 = 0;
          }
          else {
            uVar5 = devm_kmalloc(param_1 + 0x38,uVar7 << 3,0xdc0);
            puVar4 = *(undefined8 **)(param_1 + 0x18);
          }
          *puVar4 = uVar5;
          if (**(long **)(param_1 + 0x18) != 0) {
            iVar2 = class_for_each_device
                              (zte_power_supply_class,0,param_1,
                               __zte_power_supply_populate_supplied_from);
            _dev_info(param_1 + 0x38,"%s %d\n","zte_power_supply_populate_supplied_from",iVar2);
            goto LAB_00102b20;
          }
        }
        iVar2 = -0xc;
        goto LAB_00102b20;
      }
      uVar7 = (ulong)(iVar6 + 1);
      iVar3 = class_for_each_device
                        (zte_power_supply_class,0,local_98[0],
                         __zte_power_supply_find_supply_from_node);
      iVar6 = 0;
      if (iVar3 != 1) {
        iVar6 = iVar3;
      }
      iVar2 = -0x205;
      if (iVar3 != 0) {
        iVar2 = iVar6;
      }
    } while (iVar2 == 0);
    _dev_info(param_1 + 0x38,"Failed to find supply!\n");
  }
  else {
LAB_00102b1c:
    iVar2 = 0;
  }
LAB_00102b20:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) != local_98[10]) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(iVar2);
  }
  return;
}

