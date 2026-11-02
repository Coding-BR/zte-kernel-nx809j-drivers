
void FUN_001596f8(void)

{
  long lVar1;
  code *pcVar2;
  int iVar3;
  int in_w3;
  long unaff_x22;
  ulong unaff_x23;
  long unaff_x29;
  
  if (in_w3 != 0) {
    if (200 < unaff_x23) goto LAB_00159808;
    iVar3 = snprintf(&stack0x00000000 + unaff_x23,200 - unaff_x23,"Config version:0x%x\n");
    unaff_x23 = unaff_x23 + (long)iVar3;
  }
  if (*(int *)(unaff_x22 + 0xd08) != 0) {
    if (200 < unaff_x23) goto LAB_00159808;
    iVar3 = snprintf(&stack0x00000000 + unaff_x23,200 - unaff_x23,"Display version:0x%x\n");
    unaff_x23 = unaff_x23 + (long)iVar3;
  }
  if (*(char *)(unaff_x22 + 0xd68) != '\0') {
    if (200 < unaff_x23) goto LAB_00159808;
    iVar3 = snprintf(&stack0x00000000 + unaff_x23,200 - unaff_x23,"Chip hard version:%s\n",
                     unaff_x22 + 0xd68);
    unaff_x23 = unaff_x23 + (long)iVar3;
  }
  if (*(char *)(unaff_x22 + 0xd90) != '\0') {
    if (200 < unaff_x23) {
LAB_00159808:
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x5512,0x15980c);
      (*pcVar2)();
    }
    snprintf(&stack0x00000000 + unaff_x23,200 - unaff_x23,"fw update status:%s\n",unaff_x22 + 0xd90)
    ;
  }
  simple_read_from_buffer();
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == *(long *)(unaff_x29 + -8)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

