
uint FUN_00158ff4(undefined8 param_1,undefined8 param_2,int param_3,undefined8 param_4,code *param_5
                 ,undefined8 param_6,ulong param_7,undefined8 param_8,undefined8 param_9,
                 uint param_10)

{
  long lVar1;
  code *pcVar2;
  uint uVar3;
  int iVar4;
  ulong unaff_x19;
  long unaff_x21;
  long unaff_x25;
  int iVar5;
  ulong uVar6;
  uint uVar7;
  long unaff_x29;
  
  if (param_3 < 1) {
    uVar7 = 1;
  }
  else {
    iVar4 = 0;
    iVar5 = 0;
    uVar7 = 1;
    param_9._0_4_ = param_10 << 1;
    param_9._4_4_ = param_3;
    do {
      *(int *)(unaff_x29 + -4) = iVar4;
      if (0 < (int)param_10) {
        uVar6 = 0;
        do {
          lVar1 = 0;
          if (unaff_x19 <= param_7) {
            lVar1 = (long)iVar4;
          }
          if (*(int *)(param_5 + -4) != -0x5ccd7a0e) {
                    /* WARNING: Does not return */
            pcVar2 = (code *)SoftwareBreakpoint(0x8236,0x159088);
            (*pcVar2)();
          }
          uVar3 = (*param_5)(unaff_x25 + iVar4,unaff_x21 + lVar1,uVar6 & 0xffffffff,iVar5);
          uVar6 = uVar6 + 1;
          uVar7 = uVar3 & uVar7;
          iVar4 = iVar4 + 2;
        } while (param_10 != uVar6);
      }
      iVar5 = iVar5 + 1;
      iVar4 = *(int *)(unaff_x29 + -4) + (int)param_9;
    } while (iVar5 != param_9._4_4_);
  }
  return uVar7;
}

