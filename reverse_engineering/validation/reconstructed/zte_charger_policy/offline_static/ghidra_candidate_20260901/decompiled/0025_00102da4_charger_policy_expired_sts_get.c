
undefined8 charger_policy_expired_sts_get(char *param_1,long param_2)

{
  char cVar1;
  char cVar2;
  
  if (param_2 != 0) {
    cVar1 = *(char *)(param_2 + 0x21b);
    param_1[1] = '\0';
    cVar2 = '0';
    if (cVar1 != '\0') {
      cVar2 = '1';
    }
    *param_1 = cVar2;
    return 1;
  }
  _printk(&DAT_001044c9,"charger_policy_expired_sts_get");
  builtin_strncpy(param_1,"arg is null",0xc);
  return 0xb;
}

