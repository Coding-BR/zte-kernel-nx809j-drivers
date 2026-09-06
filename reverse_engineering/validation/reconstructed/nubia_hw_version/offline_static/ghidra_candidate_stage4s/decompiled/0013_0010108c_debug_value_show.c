
long debug_value_show(undefined8 param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,5,"%d",(ulong)debug_value);
  return (long)iVar1;
}

