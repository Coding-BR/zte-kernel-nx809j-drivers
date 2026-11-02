
long cont_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  code *pcVar2;
  long lVar3;
  long lVar4;
  int iStack_3c;
  long lStack_38;
  
  lVar4 = sp_el0;
  lStack_38 = *(long *)(lVar4 + 0x710);
  lVar4 = *(long *)(param_1 + 0x98);
  iStack_3c = 0;
  iVar1 = kstrtouint(param_3,0,&iStack_3c);
  if (iVar1 < 0) {
    param_4 = (long)iVar1;
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
    if (iStack_3c != 0) {
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
  if (*(long *)(lVar4 + 0x710) == lStack_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

