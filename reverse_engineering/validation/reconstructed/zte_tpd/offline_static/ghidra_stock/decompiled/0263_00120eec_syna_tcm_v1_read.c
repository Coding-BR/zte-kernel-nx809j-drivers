
int syna_tcm_v1_read(long param_1,uint param_2,char *param_3,uint param_4)

{
  int iVar1;
  long lVar2;
  undefined *puVar3;
  code *pcVar4;
  
  if (param_3 == (char *)0x0) {
    _printk(&DAT_0013477d,"syna_tcm_v1_read");
    return -0xf1;
  }
  if (param_2 == 0) {
    return 0;
  }
  if (param_4 < param_2) {
    puVar3 = &DAT_0013c72e;
LAB_00120fac:
    _printk(puVar3,"syna_tcm_v1_read",param_2);
    return -0xf1;
  }
  if ((*(uint *)(param_1 + 0x3c) != 0) && (*(uint *)(param_1 + 0x3c) < param_2)) {
    puVar3 = &DAT_001341e1;
    goto LAB_00120fac;
  }
  lVar2 = *(long *)(param_1 + 0x48);
  if (lVar2 == 0) {
    iVar1 = -0xf1;
    puVar3 = &DAT_001389db;
  }
  else {
    pcVar4 = *(code **)(lVar2 + 0x20);
    if (pcVar4 != (code *)0x0) {
      if (*(int *)(pcVar4 + -4) != 0x28a4201f) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x120f54);
        (*pcVar4)();
      }
      iVar1 = (*pcVar4)(lVar2,param_3,param_2);
      if (-1 < iVar1) {
        if (*param_3 == -0x5b) {
          return 0;
        }
        _printk(&DAT_001390b1,"syna_tcm_v1_read");
        return -0xf2;
      }
      goto LAB_00120ff4;
    }
    iVar1 = -0xf5;
    puVar3 = &DAT_00136c67;
  }
  _printk(puVar3,"syna_tcm_read");
LAB_00120ff4:
  _printk(&DAT_0013222b,"syna_tcm_v1_read",param_2);
  return iVar1;
}

