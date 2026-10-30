
char * nubia_get_rf_band_by_gpio(long param_1,uint param_2)

{
  char *pcVar1;
  ulong uVar2;
  
  pcVar1 = "unknow";
  if ((param_1 != 0) && (param_2 != 0)) {
    uVar2 = (ulong)param_2;
    pcVar1 = (char *)(param_1 + 8);
    while ((*(uint *)(pcVar1 + -8) != (uint)nubia_rf_gpio1_v ||
           (*(uint *)(pcVar1 + -4) != (uint)nubia_rf_gpio2_v))) {
      uVar2 = uVar2 - 1;
      pcVar1 = pcVar1 + 0x14;
      if (uVar2 == 0) {
        return "unknow";
      }
    }
  }
  return pcVar1;
}

