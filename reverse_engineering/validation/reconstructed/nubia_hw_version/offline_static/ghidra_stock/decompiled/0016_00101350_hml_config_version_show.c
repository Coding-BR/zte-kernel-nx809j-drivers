
long hml_config_version_show(undefined8 param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  ulong uVar2;
  
  if (param_3 != (char *)0x0) {
    if ((ulong)nubia_pcb_gpio3_v < 3) {
      uVar2 = (ulong)*(uint *)(&DAT_00101fbc + (ulong)nubia_pcb_gpio3_v * 4);
    }
    else {
      uVar2 = 0xffffffff;
    }
    if (debug_value == 1) {
      _printk(&DAT_001017c7,uVar2);
    }
    iVar1 = snprintf(param_3,5,"%d",uVar2);
    return (long)iVar1;
  }
  return 0;
}

