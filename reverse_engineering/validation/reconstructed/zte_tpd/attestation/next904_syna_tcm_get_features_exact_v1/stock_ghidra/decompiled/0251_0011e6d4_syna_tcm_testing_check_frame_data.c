
uint syna_tcm_testing_check_frame_data
               (long param_1,ulong param_2,int param_3,uint param_4,code *param_5,long param_6,
               ulong param_7)

{
  int iVar1;
  long lVar2;
  code *pcVar3;
  uint uVar4;
  int iVar5;
  int iVar6;
  ulong uVar7;
  uint uVar8;
  
  if (((param_5 == (code *)0x0) || (param_1 == 0)) || (param_6 == 0)) {
    _printk(&DAT_00134186,"syna_tcm_testing_check_frame_data");
    uVar8 = 0;
  }
  else if (param_2 < param_3 * param_4 * 2) {
    _printk(&DAT_0013a299,"syna_tcm_testing_check_frame_data",param_2 & 0xffffffff);
    uVar8 = 0;
  }
  else if (param_3 < 1) {
    uVar8 = 1;
  }
  else {
    iVar5 = 0;
    iVar6 = 0;
    uVar8 = 1;
    do {
      if (0 < (int)param_4) {
        uVar7 = 0;
        iVar1 = iVar5;
        do {
          lVar2 = 0;
          if (param_2 <= param_7) {
            lVar2 = (long)iVar1;
          }
          if (*(int *)(param_5 + -4) != -0x5ccd7a0e) {
                    /* WARNING: Does not return */
            pcVar3 = (code *)SoftwareBreakpoint(0x8236,0x11e7bc);
            (*pcVar3)();
          }
          uVar4 = (*param_5)(param_1 + iVar1,param_6 + lVar2,uVar7 & 0xffffffff,iVar6);
          uVar7 = uVar7 + 1;
          uVar8 = uVar4 & uVar8;
          iVar1 = iVar1 + 2;
        } while (param_4 != uVar7);
      }
      iVar6 = iVar6 + 1;
      iVar5 = iVar5 + param_4 * 2;
    } while (iVar6 != param_3);
  }
  return uVar8;
}

