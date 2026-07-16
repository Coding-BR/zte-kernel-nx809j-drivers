
long nubia_hw_pcb_version_show(undefined8 param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  if (param_3 != (char *)0x0) {
    nubia_get_hw_pcb_version(param_3);
    if (debug_value == 1) {
      _printk(&DAT_0010174d,param_3);
    }
    iVar1 = snprintf(param_3,0xc,"%s",param_3);
    return (long)iVar1;
  }
  return 0;
}

