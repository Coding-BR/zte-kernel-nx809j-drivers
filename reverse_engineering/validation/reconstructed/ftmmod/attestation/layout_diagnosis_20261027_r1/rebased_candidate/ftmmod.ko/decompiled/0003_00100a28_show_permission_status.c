
long show_permission_status(undefined8 param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  _printk(&DAT_00100eee);
  iVar1 = snprintf(param_3,0x1000,"%d\n",0);
  return (long)iVar1;
}

