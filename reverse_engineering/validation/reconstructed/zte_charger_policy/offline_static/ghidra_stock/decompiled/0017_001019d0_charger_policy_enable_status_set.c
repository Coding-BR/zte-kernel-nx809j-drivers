
void charger_policy_enable_status_set(char *param_1,long param_2)

{
  long lVar1;
  undefined8 uVar2;
  int local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  if (param_2 == 0) {
    _printk(&DAT_00104512,"charger_policy_enable_status_set");
    uVar2 = 0xffffffea;
  }
  else {
    sscanf(param_1,"%d",&local_2c);
    *(uint *)(param_2 + 0x1e8) = (uint)(local_2c == 0);
    _printk(&DAT_00103cec,"charger_policy_enable_status_set");
    uVar2 = 0;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}

