
undefined8 __zte_power_supply_populate_supplied_from(long param_1,undefined8 *param_2)

{
  long lVar1;
  int iVar2;
  int iVar3;
  undefined8 *puVar4;
  long local_88 [11];
  
  lVar1 = sp_el0;
  iVar3 = -1;
  local_88[10] = *(long *)(lVar1 + 0x710);
  puVar4 = *(undefined8 **)(param_1 + 0x98);
  do {
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
    iVar2 = __of_parse_phandle_with_args(param_2[5],"power-supplies",0,0,iVar3 + 1,local_88);
    if ((iVar2 != 0) || (local_88[0] == 0)) goto LAB_00102d74;
    iVar3 = iVar3 + 1;
  } while (local_88[0] != puVar4[5]);
  _dev_info(param_2 + 7,"%s: Found supply : %s\n",*(undefined8 *)*param_2,*(undefined8 *)*puVar4);
  *(undefined8 *)(param_2[3] + (long)iVar3 * 8) = *(undefined8 *)*puVar4;
  param_2[4] = param_2[4] + 1;
LAB_00102d74:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_88[10]) {
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

