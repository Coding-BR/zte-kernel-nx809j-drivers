
void ufp_report_gesture_uevent(char *param_1)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  char *local_38;
  undefined8 uStack_30;
  undefined8 local_28;
  
  lVar1 = sp_el0;
  local_28 = *(undefined8 *)(lVar1 + 0x710);
  uStack_30 = 0;
  local_38 = param_1;
  kobject_uevent_env(ufp_tp_ops + 0x10,2,&local_38);
  pm_wakeup_ws_event(tp_wakeup,2000,0);
  iVar2 = strcmp(param_1,"single_tap=true");
  if (iVar2 == 0) {
    uVar3 = 0x96;
    DAT_0015faa0 = 1;
  }
  else {
    iVar2 = strcmp(param_1,"double_tap=true");
    if (iVar2 != 0) goto LAB_00150914;
    uVar3 = 0;
  }
  mod_delayed_work_on(0x20,DAT_0015fb10,&DAT_0015faa8,uVar3);
LAB_00150914:
  _printk(&DAT_00171210,param_1);
  return;
}

