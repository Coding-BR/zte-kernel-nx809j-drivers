
undefined8 syna_tcm_v1_read(long param_1,uint param_2,char *param_3,uint param_4)

{
  int iVar1;
  long lVar2;
  undefined *puVar3;
  undefined8 uVar4;
  code *pcVar5;
  
  if (param_3 == (char *)0x0) {
    uVar4 = _printk(&DAT_0016924c,"syna_tcm_v1_read");
    return uVar4;
  }
  if (param_2 == 0) {
    return 0;
  }
  if (param_4 < param_2) {
    puVar3 = &DAT_001713fe;
  }
  else {
    if ((*(uint *)(param_1 + 0x3c) == 0) || (param_2 <= *(uint *)(param_1 + 0x3c))) {
      lVar2 = *(long *)(param_1 + 0x48);
      if (lVar2 == 0) {
        puVar3 = &DAT_0016d5c2;
      }
      else {
        pcVar5 = *(code **)(lVar2 + 0x20);
        if (pcVar5 != (code *)0x0) {
          if (*(int *)(pcVar5 + -4) != 0x28a4201f) {
                    /* WARNING: Does not return */
            pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x146aec);
            (*pcVar5)();
          }
          iVar1 = (*pcVar5)(lVar2,param_3,param_2);
          if (-1 < iVar1) {
            if (*param_3 == -0x5b) {
              return 0;
            }
            uVar4 = _printk(&DAT_0016dcb4,"syna_tcm_v1_read");
            return uVar4;
          }
          uVar4 = _printk(&DAT_00166c72,"syna_tcm_v1_read",param_2);
          return uVar4;
        }
        puVar3 = &DAT_0016b7bc;
      }
      uVar4 = _printk(puVar3,"syna_tcm_read");
      return uVar4;
    }
    puVar3 = &DAT_00168c96;
  }
  uVar4 = _printk(puVar3,"syna_tcm_v1_read",param_2);
  return uVar4;
}

