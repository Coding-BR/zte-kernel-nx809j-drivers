
void FUN_00159670(long param_1)

{
  long lVar1;
  code *pcVar2;
  int iVar3;
  long in_x9;
  long unaff_x22;
  long unaff_x23;
  ulong uVar4;
  long unaff_x29;
  
  iVar3 = snprintf((char *)(in_x9 + unaff_x23),param_1 - unaff_x23,"Config version:0x%x\n");
  uVar4 = unaff_x23 + iVar3;
  if (*(int *)(unaff_x22 + 0xd08) != 0) {
    if (200 < uVar4) goto LAB_0015976c;
    iVar3 = snprintf(&stack0x00000000 + uVar4,200 - uVar4,"Display version:0x%x\n");
    uVar4 = uVar4 + (long)iVar3;
  }
  if (*(char *)(unaff_x22 + 0xd68) != '\0') {
    if (200 < uVar4) goto LAB_0015976c;
    iVar3 = snprintf(&stack0x00000000 + uVar4,200 - uVar4,"Chip hard version:%s\n",unaff_x22 + 0xd68
                    );
    uVar4 = uVar4 + (long)iVar3;
  }
  if (*(char *)(unaff_x22 + 0xd90) != '\0') {
    if (200 < uVar4) {
LAB_0015976c:
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x5512,0x159770);
      (*pcVar2)();
    }
    snprintf(&stack0x00000000 + uVar4,200 - uVar4,"fw update status:%s\n",unaff_x22 + 0xd90);
  }
  simple_read_from_buffer();
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == *(long *)(unaff_x29 + -8)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

