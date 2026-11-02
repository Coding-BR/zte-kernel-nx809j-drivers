
int zlog_enable_test_get(char *param_1)

{
  int iVar1;
  
  iVar1 = snprintf(param_1,0x1000,"%d",(ulong)zlog_enable_test_flag);
  return iVar1;
}

