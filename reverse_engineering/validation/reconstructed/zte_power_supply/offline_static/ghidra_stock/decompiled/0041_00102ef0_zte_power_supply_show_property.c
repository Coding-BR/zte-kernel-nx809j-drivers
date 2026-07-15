
void zte_power_supply_show_property(long param_1,undefined8 *param_2,char *param_3)

{
  uint uVar1;
  long lVar2;
  int iVar3;
  long lVar4;
  ulong local_40;
  long local_38;
  
  lVar4 = sp_el0;
  local_38 = *(long *)(lVar4 + 0x710);
  local_40 = 0;
  iVar3 = (int)((ulong)(param_2 + -0x20056) >> 3) * -0x45d1745d;
  if (iVar3 == 0x40) {
    uVar1 = *(uint *)(**(long **)(param_1 + 0x98) + 8);
    local_40 = (ulong)uVar1;
  }
  else {
    iVar3 = zte_power_supply_get_property(*(long **)(param_1 + 0x98),iVar3,&local_40);
    if (iVar3 < 0) {
      lVar4 = (long)iVar3;
      if ((0x32 < iVar3 + 0x3dU || (1L << ((ulong)(iVar3 + 0x3dU) & 0x3f) & 0x4040000000001U) == 0)
         && (iVar3 = ___ratelimit(zte_power_supply_show_property__rs,
                                  "zte_power_supply_show_property"), iVar3 != 0)) {
        _dev_err(param_1,"driver failed to report `%s\' property: %zd\n",*param_2,lVar4);
      }
      goto LAB_00102fb8;
    }
    uVar1 = (uint)local_40;
  }
  if (((int)*(uint *)(param_2 + 5) < 1) || (*(uint *)(param_2 + 5) <= uVar1)) {
    iVar3 = sprintf(param_3,"%d\n");
  }
  else {
    iVar3 = sprintf(param_3,"%s\n",*(undefined8 *)(param_2[4] + (ulong)uVar1 * 8));
  }
  lVar4 = (long)iVar3;
LAB_00102fb8:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(lVar4);
}

