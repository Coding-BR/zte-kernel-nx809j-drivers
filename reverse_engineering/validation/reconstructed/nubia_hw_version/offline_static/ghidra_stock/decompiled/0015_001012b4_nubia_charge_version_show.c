
long nubia_charge_version_show(undefined8 param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  if (param_3 != (char *)0x0) {
    if ((ulong)nubia_pcb_gpio3_v < 3) {
      *(undefined4 *)param_3 = *(undefined4 *)(&DAT_00101fb0 + (ulong)nubia_pcb_gpio3_v * 4);
    }
    if (debug_value == 1) {
      _printk(&DAT_001018c5,param_3);
    }
    iVar1 = snprintf(param_3,0xc,"%s",param_3);
    return (long)iVar1;
  }
  return 0;
}

