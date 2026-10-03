
undefined8 syna_charger_notify_call(long param_1,long param_2,undefined8 *param_3)

{
  int iVar1;
  char *__s1;
  
  if (param_2 != 0) {
    return 0;
  }
  __s1 = *(char **)*param_3;
  iVar1 = strcmp(__s1,"usb");
  if ((iVar1 == 0) || (((*__s1 == 'a' && (__s1[1] == 'c')) && (__s1[2] == '\0')))) {
    queue_delayed_work_on(0x20,*(undefined8 *)(param_1 + -8),param_1 + -0x70,0x7d);
  }
  return 0;
}

