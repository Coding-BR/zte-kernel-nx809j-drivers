
void aw22xxx_i2c_read(undefined8 *param_1,undefined1 param_2,undefined1 *param_3)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  undefined1 auStack_2c [4];
  long lStack_28;
  
  lVar1 = sp_el0;
  lStack_28 = *(long *)(lVar1 + 0x710);
  uVar3 = *param_1;
  auStack_2c[0] = param_2;
  iVar2 = i2c_transfer_buffer_flags(uVar3,auStack_2c,1,0);
  if (iVar2 < 0) {
    _printk(&DAT_001090a2,"aw22xxx_i2c_read");
    msleep(1);
    iVar2 = i2c_transfer_buffer_flags(uVar3,auStack_2c,1,0);
    if (iVar2 < 0) goto LAB_001026b4;
  }
  iVar2 = i2c_transfer_buffer_flags(uVar3,param_3,1,1);
  if (iVar2 < 0) {
    *param_3 = (char)iVar2;
    _printk(&DAT_001095fc,"aw22xxx_i2c_read");
    msleep(1);
    i2c_transfer_buffer_flags(uVar3,param_3,1,1);
  }
LAB_001026b4:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) != lStack_28) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

