
void aw22xxx_i2c_read(undefined8 *param_1,undefined1 param_2,undefined1 *param_3)

{
  long lVar1;
  uint uVar2;
  ulong uVar3;
  undefined *puVar4;
  undefined1 auStack_2c [4];
  long lStack_28;
  
  lVar1 = sp_el0;
  lStack_28 = *(long *)(lVar1 + 0x710);
  auStack_2c[0] = param_2;
  uVar2 = i2c_transfer_buffer_flags(*param_1,auStack_2c,1,0);
  if ((int)uVar2 < 0) {
    uVar3 = (ulong)uVar2;
    puVar4 = &DAT_00107850;
  }
  else {
    uVar3 = i2c_transfer_buffer_flags(*param_1,param_3,1,1);
    if (-1 < (int)uVar3) goto LAB_001021d0;
    puVar4 = &DAT_00106dff;
    *param_3 = (char)uVar3;
    uVar3 = uVar3 & 0xffffffff;
  }
  _printk(puVar4,"aw22xxx_i2c_read",uVar3);
  msleep(1);
  uVar3 = i2c_transfer_buffer_flags(*param_1,auStack_2c,1,0);
  if ((int)uVar3 < 0) {
    puVar4 = &DAT_00107850;
  }
  else {
    uVar3 = i2c_transfer_buffer_flags(*param_1,param_3,1,1);
    if (-1 < (int)uVar3) goto LAB_001021d0;
    *param_3 = (char)uVar3;
    puVar4 = &DAT_00106dff;
  }
  uVar3 = uVar3 & 0xffffffff;
  _printk(puVar4,"aw22xxx_i2c_read",uVar3);
  msleep(1);
LAB_001021d0:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == lStack_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar3);
}

