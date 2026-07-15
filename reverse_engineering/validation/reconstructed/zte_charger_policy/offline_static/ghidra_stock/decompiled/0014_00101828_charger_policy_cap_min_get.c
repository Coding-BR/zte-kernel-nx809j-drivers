
int charger_policy_cap_min_get(char *param_1,long param_2)

{
  int iVar1;
  
  if (param_2 == 0) {
    _printk(&DAT_00104512,"charger_policy_cap_min_get");
    iVar1 = 0xb;
    builtin_strncpy(param_1,"arg is null",0xc);
  }
  else {
    iVar1 = snprintf(param_1,0x1000,"%u",(ulong)*(uint *)(param_2 + 0x19c));
  }
  return iVar1;
}

