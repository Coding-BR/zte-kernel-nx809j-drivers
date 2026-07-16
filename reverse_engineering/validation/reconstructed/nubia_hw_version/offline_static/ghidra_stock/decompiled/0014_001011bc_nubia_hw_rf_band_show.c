
long nubia_hw_rf_band_show(undefined8 param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  char *pcVar2;
  long lVar3;
  undefined *puVar4;
  
  if (param_3 == (char *)0x0) {
    return 0;
  }
  if (nubia_rf_gpio1_v == '\x02') {
    if (nubia_rf_gpio2_v < 3) {
      puVar4 = &DAT_00101f98;
LAB_0010121c:
      lVar3 = *(long *)(puVar4 + (long)(char)nubia_rf_gpio2_v * 8);
LAB_00101220:
      pcVar2 = "COMMON" + lVar3 * 0x14;
      goto code_r0x00101244;
    }
  }
  else if (nubia_rf_gpio1_v == '\x01') {
    if (nubia_rf_gpio2_v == 0) {
      lVar3 = 6;
      goto LAB_00101220;
    }
  }
  else if ((nubia_rf_gpio1_v == '\0') && (nubia_rf_gpio2_v < 3)) {
    puVar4 = &DAT_00101f80;
    goto LAB_0010121c;
  }
  pcVar2 = "unknow";
code_r0x00101244:
  if (debug_value == 1) {
    _printk(&DAT_00101bd6,pcVar2);
  }
  iVar1 = snprintf(param_3,0xc,"%s",pcVar2);
  return (long)iVar1;
}

