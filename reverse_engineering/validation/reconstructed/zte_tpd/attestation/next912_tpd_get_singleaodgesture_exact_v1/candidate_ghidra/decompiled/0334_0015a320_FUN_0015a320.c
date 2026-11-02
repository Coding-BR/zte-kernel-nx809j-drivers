
undefined8 FUN_0015a320(void)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  long unaff_x20;
  long unaff_x29;
  undefined8 in_stack_00000000;
  
  __check_object_size();
  iVar2 = FUN_0015a320(&stack0x00000008);
  if ((iVar2 == 0) &&
     (iVar2 = kstrtouint(&stack0x00000008,0,(long)&stack0x00000000 + 4), iVar2 == 0)) {
    *(undefined4 *)(unaff_x20 + 0x10) = in_stack_00000000._4_4_;
    uVar3 = _printk(&DAT_00167038,"set_display_rotation");
    return uVar3;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == *(long *)(unaff_x29 + -8)) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

