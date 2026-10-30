
void FUN_00102158(void)

{
  long lVar1;
  ulong uVar2;
  undefined *puVar3;
  undefined1 *unaff_x19;
  undefined8 *unaff_x20;
  long in_stack_00000008;
  
  uVar2 = i2c_transfer_buffer_flags();
  if ((int)uVar2 < 0) {
    puVar3 = &DAT_001077a8;
  }
  else {
    uVar2 = i2c_transfer_buffer_flags(*unaff_x20);
    if (-1 < (int)uVar2) goto LAB_001020e0;
    *unaff_x19 = (char)uVar2;
    puVar3 = &DAT_00106d57;
  }
  uVar2 = uVar2 & 0xffffffff;
  _printk(puVar3,"aw22xxx_i2c_read",uVar2);
  msleep(1);
LAB_001020e0:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == in_stack_00000008) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}

