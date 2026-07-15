
void charger_policy_cap_min_set(char *param_1,long param_2)

{
  long lVar1;
  undefined8 uVar2;
  undefined4 local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  if (param_2 == 0) {
    _printk(&DAT_00104512,"charger_policy_cap_min_set");
    uVar2 = 0xffffffea;
  }
  else {
    sscanf(param_1,"%d",&local_2c);
    *(undefined4 *)(param_2 + 0x1a4) = local_2c;
    *(undefined4 *)(param_2 + 0x19c) = local_2c;
    _printk(&DAT_001041ed,"charger_policy_cap_min_set");
    uVar2 = 0;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}

