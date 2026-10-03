
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void aw22xxx_i2c_read(long param_1,byte param_2,undefined *param_3)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  byte abStack_2c [4];
  long lStack_28;
  
  lVar1 = sp_el0;
  lStack_28 = *(long *)(lVar1 + 0x710);
  uVar3 = *(undefined8 *)param_1;
  abStack_2c[0] = param_2;
  iVar2 = i2c_transfer_buffer_flags(uVar3,abStack_2c,1,0);
  if (iVar2 < 0) {
    _printk(&DAT_00108f95,"aw22xxx_i2c_read");
    msleep(1);
    iVar2 = i2c_transfer_buffer_flags(uVar3,abStack_2c,1,0);
    if (iVar2 < 0) goto LAB_001028cc;
  }
  iVar2 = i2c_transfer_buffer_flags(uVar3,param_3,1,1);
  if (iVar2 < 0) {
    *param_3 = (char)iVar2;
    _printk(&DAT_001094c6,"aw22xxx_i2c_read");
    msleep(1);
    i2c_transfer_buffer_flags(uVar3,param_3,1,1);
  }
LAB_001028cc:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) != lStack_28) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

