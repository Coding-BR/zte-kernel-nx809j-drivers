
undefined8 charger_policy_expired_sts_get(char *param_1,long param_2)

{
  undefined2 uVar1;
  
  if (param_2 != 0) {
    if (*(char *)(param_2 + 0x21b) == '\x01') {
      uVar1 = 0x31;
    }
    else {
      uVar1 = 0x30;
    }
    *(undefined2 *)param_1 = uVar1;
    return 1;
  }
  _printk(&DAT_00104512,"charger_policy_expired_sts_get");
  builtin_strncpy(param_1,"arg is null",0xc);
  return 0xb;
}

