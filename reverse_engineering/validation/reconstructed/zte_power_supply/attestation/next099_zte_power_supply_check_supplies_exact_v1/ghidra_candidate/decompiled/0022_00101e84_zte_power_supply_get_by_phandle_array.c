
ulong zte_power_supply_get_by_phandle_array
                (undefined8 param_1,undefined8 param_2,long param_3,long param_4)

{
  long lVar1;
  int iVar2;
  ulong uVar3;
  long local_98;
  long lStack_90;
  long local_88;
  ulong local_80;
  long local_78 [11];
  
  lVar1 = sp_el0;
  local_78[10] = *(long *)(lVar1 + 0x710);
  uVar3 = 0xffffffea;
  if ((param_3 != 0) && (param_4 != 0)) {
    local_88 = 0;
    local_80 = 0;
    local_98 = 0;
    lStack_90 = 0;
    local_78[8] = 0;
    local_78[9] = 0;
    local_78[6] = 0;
    local_78[7] = 0;
    local_78[4] = 0;
    local_78[5] = 0;
    local_78[2] = 0;
    local_78[3] = 0;
    local_78[0] = 0;
    local_78[1] = 0;
    iVar2 = __of_parse_phandle_with_args(param_1,param_2,0,0,0,local_78);
    uVar3 = 0xffffffed;
    if ((iVar2 == 0) && (local_78[0] != 0)) {
      local_98 = local_78[0];
      local_80 = 0;
      lStack_90 = param_3;
      local_88 = param_4;
      class_for_each_device
                (zte_power_supply_class,0,&local_98,zte_power_supply_match_device_node_array);
      uVar3 = local_80 & 0xffffffff;
    }
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_78[10]) {
    return uVar3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

