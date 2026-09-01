
uint FUN_00159004(void)

{
  int iVar1;
  long lVar2;
  code *pcVar3;
  uint uVar4;
  ulong unaff_x19;
  ulong unaff_x20;
  long unaff_x21;
  code *unaff_x22;
  ulong unaff_x23;
  long unaff_x25;
  int unaff_w26;
  ulong uVar5;
  uint unaff_w28;
  long unaff_x29;
  int iStack0000000000000000;
  int iStack0000000000000004;
  int in_stack_00000008;
  
  do {
    do {
      unaff_w26 = unaff_w26 + 1;
      iVar1 = *(int *)(unaff_x29 + -4) + iStack0000000000000000;
      if (unaff_w26 == iStack0000000000000004) {
        return unaff_w28 & 1;
      }
      *(int *)(unaff_x29 + -4) = iVar1;
    } while (in_stack_00000008 < 1);
    uVar5 = 0;
    do {
      lVar2 = 0;
      if (unaff_x19 <= unaff_x20) {
        lVar2 = (long)iVar1;
      }
      if (*(int *)(unaff_x22 + -4) != -0x5ccd7a0e) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8236,0x158fec);
        (*pcVar3)();
      }
      uVar4 = (*unaff_x22)(unaff_x25 + iVar1,unaff_x21 + lVar2,uVar5 & 0xffffffff,unaff_w26);
      uVar5 = uVar5 + 1;
      unaff_w28 = uVar4 & unaff_w28;
      iVar1 = iVar1 + 2;
    } while (unaff_x23 != uVar5);
  } while( true );
}

