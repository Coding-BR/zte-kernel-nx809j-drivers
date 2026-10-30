
void FUN_001022e4(long param_1,undefined8 *param_2,undefined1 param_3)

{
  long lVar1;
  uint uVar2;
  ulong uVar3;
  undefined *puVar4;
  undefined1 *unaff_x19;
  undefined8 *unaff_x20;
  undefined1 uStack0000000000000004;
  long lStack0000000000000008;
  
  lStack0000000000000008 = *(long *)(param_1 + 0x710);
  uStack0000000000000004 = param_3;
  uVar2 = i2c_transfer_buffer_flags(*param_2,&stack0x00000004,1,0);
  if ((int)uVar2 < 0) {
    uVar3 = (ulong)uVar2;
    puVar4 = &DAT_001077b0;
  }
  else {
    uVar3 = i2c_transfer_buffer_flags(*unaff_x20);
    if (-1 < (int)uVar3) goto LAB_00102320;
    puVar4 = &DAT_00106d5f;
    *unaff_x19 = (char)uVar3;
    uVar3 = uVar3 & 0xffffffff;
  }
  _printk(puVar4,"aw22xxx_i2c_read",uVar3);
  msleep(1);
  uVar3 = i2c_transfer_buffer_flags(*unaff_x20,&stack0x00000004,1,0);
  if ((int)uVar3 < 0) {
    puVar4 = &DAT_001077b0;
  }
  else {
    uVar3 = i2c_transfer_buffer_flags(*unaff_x20);
    if (-1 < (int)uVar3) goto LAB_00102320;
    *unaff_x19 = (char)uVar3;
    puVar4 = &DAT_00106d5f;
  }
  uVar3 = uVar3 & 0xffffffff;
  _printk(puVar4,"aw22xxx_i2c_read",uVar3);
  msleep(1);
LAB_00102320:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == lStack0000000000000008) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar3);
}

