
long FUN_00109f18(undefined8 param_1,long param_2,undefined8 param_3,undefined8 param_4,long param_5
                 )

{
  int iVar1;
  code *pcVar2;
  long in_x9;
  long lVar3;
  long lVar4;
  int iStack0000000000000004;
  long lStack0000000000000008;
  
  lVar4 = *(long *)(param_2 + 0x98);
  iStack0000000000000004 = 0;
  lStack0000000000000008 = in_x9;
  iVar1 = kstrtouint(param_1);
  if (iVar1 < 0) {
    param_5 = (long)iVar1;
  }
  else {
    lVar3 = lVar4 + -0xa8;
    pcVar2 = *(code **)(*(long *)(lVar4 + 0x520) + 0x38);
    if (*(int *)(pcVar2 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x109f5c);
      (*pcVar2)();
    }
    (*pcVar2)(lVar3);
    if (iStack0000000000000004 != 0) {
      pcVar2 = *(code **)(*(long *)(lVar4 + 0x520) + 0x118);
      if (*(int *)(pcVar2 + -4) != -0x2c84916b) {
                    /* WARNING: Does not return */
        pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x109f90);
        (*pcVar2)();
      }
      (*pcVar2)(lVar3,1);
      pcVar2 = *(code **)(*(long *)(lVar4 + 0x520) + 0x48);
      if (*(int *)(pcVar2 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
        pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x109fb8);
        (*pcVar2)();
      }
      (*pcVar2)(lVar3);
    }
  }
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) == lStack0000000000000008) {
    return param_5;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

