
int tpd_test_cmd_show(undefined8 param_1,char *param_2)

{
  int iVar1;
  
  _printk(&DAT_001352c7,"tpd_test_cmd_show");
  iVar1 = snprintf(param_2,0x1000,"%d,%d,%d,%d",0,0x10,0x25,0);
  return iVar1;
}

