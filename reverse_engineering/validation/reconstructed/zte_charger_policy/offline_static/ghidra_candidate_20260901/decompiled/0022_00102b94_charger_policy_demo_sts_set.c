
void charger_policy_demo_sts_set(char *param_1,long param_2)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  uint local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  if (param_2 == 0) {
    _printk(&DAT_001044c9,"charger_policy_demo_sts_set");
  }
  else {
    iVar2 = sscanf(param_1,"%d",&local_2c);
    if (iVar2 == 1) {
      local_2c = (uint)(local_2c != 0);
      _printk(&DAT_00104185,"charger_policy_demo_sts_set");
      if (local_2c != *(byte *)(param_2 + 0x219)) {
        _printk(&DAT_00105314,"charger_policy_demo_sts_set");
        *(char *)(param_2 + 0x219) = (char)local_2c;
        if ((char)local_2c == '\0') {
          if (*(long *)(param_2 + 0x1e0) != 0) {
            __pm_stay_awake();
          }
          charger_policy_status_disable(param_2);
          if (*(long *)(param_2 + 0x1e0) != 0) {
            __pm_relax();
          }
        }
        queue_delayed_work_on(0x20,*(undefined8 *)(param_2 + 0xa0),param_2 + 0xa8,0x19);
      }
      uVar3 = 0;
      goto LAB_00102bdc;
    }
  }
  uVar3 = 0xffffffea;
LAB_00102bdc:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar3);
}

