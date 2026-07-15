
undefined8 charger_policy_notifier_switch(long param_1,long param_2,undefined8 *param_3)

{
  int iVar1;
  char *__s1;
  
  if (param_2 != 0) {
    return 0;
  }
  if ((*(ulong *)(param_1 + 0x98) & 1) == 0) {
    __s1 = *(char **)*param_3;
    iVar1 = strcmp(__s1,*(char **)(param_1 + 0x1a8));
    if ((iVar1 == 0) || (iVar1 = strcmp(__s1,"usb"), iVar1 == 0)) {
      queue_delayed_work_on(0x20,*(undefined8 *)(param_1 + 0x90),(ulong *)(param_1 + 0x98),0x32);
    }
  }
  return 1;
}

