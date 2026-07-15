
void charger_policy_demo_sts_set(char *param_1,long param_2)

{
  long lVar1;
  undefined8 uVar2;
  uint local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  if (param_2 == 0) {
    _printk(&DAT_00104512,"charger_policy_demo_sts_set");
    uVar2 = 0xffffffea;
  }
  else {
    sscanf(param_1,"%d",&local_2c);
    local_2c = (uint)(local_2c != 0);
    _printk(&DAT_0010491f,"charger_policy_demo_sts_set");
    if (local_2c != *(byte *)(param_2 + 0x219)) {
      _printk(&DAT_00104b8f,"charger_policy_demo_sts_set");
      *(bool *)(param_2 + 0x219) = local_2c != 0;
      if (local_2c == 0) {
        __pm_stay_awake(*(undefined8 *)(param_2 + 0x1e0));
        charger_policy_status_disable(param_2);
        __pm_relax(*(undefined8 *)(param_2 + 0x1e0));
      }
      queue_delayed_work_on(0x20,*(undefined8 *)(param_2 + 0xa0),param_2 + 0xa8,0x19);
    }
    uVar2 = 0;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}

