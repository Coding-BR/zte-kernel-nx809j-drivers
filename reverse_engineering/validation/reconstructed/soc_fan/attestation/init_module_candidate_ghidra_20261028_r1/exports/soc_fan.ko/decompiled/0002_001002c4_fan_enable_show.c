
long fan_enable_show(undefined8 param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  _printk(&DAT_001003f7,"NB_FAN","fan_enable_show",0x130,*(undefined1 *)(*(long *)(chip + 8) + 0xc))
  ;
  iVar1 = sprintf(param_3,"%d\n",(ulong)*(byte *)(*(long *)(chip + 8) + 0xc));
  return (long)iVar1;
}

