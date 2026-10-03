
undefined8 charger_policy_demo_sts_get(char *param_1,long param_2)

{
  char cVar1;
  undefined8 uVar2;
  char cVar3;
  
  if (param_2 == 0) {
    _printk(&DAT_001044c9,"charger_policy_demo_sts_get");
    uVar2 = 0xb;
    builtin_strncpy(param_1,"arg is null",0xc);
  }
  else {
    _printk(&DAT_001054c8,"charger_policy_demo_sts_get",*(undefined1 *)(param_2 + 0x219));
    cVar1 = *(char *)(param_2 + 0x219);
    uVar2 = 1;
    param_1[1] = '\0';
    cVar3 = '0';
    if (cVar1 != '\0') {
      cVar3 = '1';
    }
    *param_1 = cVar3;
  }
  return uVar2;
}

