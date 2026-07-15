
int charger_policy_force_disching_sec_get(char *param_1,long param_2)

{
  int iVar1;
  
  if (param_2 == 0) {
    _printk(&DAT_00104512,"charger_policy_force_disching_sec_get");
    iVar1 = 0xb;
    builtin_strncpy(param_1,"arg is null",0xc);
  }
  else {
    _printk(&DAT_00103a3b,"charger_policy_force_disching_sec_get",*(undefined4 *)(param_2 + 0x1f8));
    iVar1 = snprintf(param_1,0x1000,"%u",(ulong)*(uint *)(param_2 + 0x1f8));
  }
  return iVar1;
}

