
undefined8 charger_policy_demo_sts_get(char *param_1,long param_2)

{
  undefined8 uVar1;
  undefined2 uVar2;
  
  if (param_2 == 0) {
    _printk(&DAT_00104512,"charger_policy_demo_sts_get");
    uVar1 = 0xb;
    builtin_strncpy(param_1,"arg is null",0xc);
  }
  else {
    _printk(&DAT_001058ed,"charger_policy_demo_sts_get",*(undefined1 *)(param_2 + 0x219));
    if (*(char *)(param_2 + 0x219) == '\x01') {
      uVar2 = 0x31;
    }
    else {
      uVar2 = 0x30;
    }
    uVar1 = 1;
    *(undefined2 *)param_1 = uVar2;
  }
  return uVar1;
}

