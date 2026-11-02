
undefined8 syna_tcm_v1_read(long param_1,uint param_2,char *param_3,uint param_4)

{
  int iVar1;
  long lVar2;
  undefined *puVar3;
  code *pcVar4;
  
  if (param_3 == (char *)0x0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016928c,"syna_tcm_v1_read");
  }
  if (param_2 == 0) {
    return 0;
  }
  if (param_4 < param_2) {
    puVar3 = &DAT_0017143e;
  }
  else {
    if ((*(uint *)(param_1 + 0x3c) == 0) || (param_2 <= *(uint *)(param_1 + 0x3c))) {
      lVar2 = *(long *)(param_1 + 0x48);
      if (lVar2 == 0) {
        puVar3 = &DAT_0016d602;
      }
      else {
        pcVar4 = *(code **)(lVar2 + 0x20);
        if (pcVar4 != (code *)0x0) {
          if (*(int *)(pcVar4 + -4) != 0x28a4201f) {
                    /* WARNING: Does not return */
            pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x146b88);
            (*pcVar4)();
          }
          iVar1 = (*pcVar4)(lVar2,param_3,param_2);
          if (-1 < iVar1) {
            if (*param_3 == -0x5b) {
              return 0;
            }
                    /* WARNING: Subroutine does not return */
            _printk(&DAT_0016dcf4,"syna_tcm_v1_read");
          }
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00166cb2,"syna_tcm_v1_read",param_2);
        }
        puVar3 = &DAT_0016b7fc;
      }
                    /* WARNING: Subroutine does not return */
      _printk(puVar3,"syna_tcm_read");
    }
    puVar3 = &DAT_00168cd6;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar3,"syna_tcm_v1_read",param_2);
}

