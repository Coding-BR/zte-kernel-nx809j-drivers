
void aw86320_interrupt_setup(undefined8 param_1)

{
  long lVar1;
  int iVar2;
  undefined *puVar3;
  undefined8 uVar4;
  ushort local_2c [2];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c[0] = 0;
  iVar2 = haptic_i2c_read(param_1,5,local_2c);
  if (iVar2 < 0) {
    puVar3 = &DAT_00104ba2;
    uVar4 = 0xaf;
LAB_00102118:
    _printk(puVar3,"aw86320",uVar4,"haptic_i2c_write_bits",iVar2);
  }
  else {
    iVar2 = haptic_i2c_write(param_1,5,local_2c[0] & 0xfdff);
    if (iVar2 < 0) {
      puVar3 = &DAT_00104e12;
      uVar4 = 0xb8;
      goto LAB_00102118;
    }
  }
  local_2c[0] = 0;
  iVar2 = haptic_i2c_read(param_1,5,local_2c);
  if (iVar2 < 0) {
    puVar3 = &DAT_00104ba2;
    uVar4 = 0xaf;
LAB_00102140:
    _printk(puVar3,"aw86320",uVar4,"haptic_i2c_write_bits",iVar2);
  }
  else {
    iVar2 = haptic_i2c_write(param_1,5,local_2c[0] & 0xfeff);
    if (iVar2 < 0) {
      puVar3 = &DAT_00104e12;
      uVar4 = 0xb8;
      goto LAB_00102140;
    }
  }
  local_2c[0] = 0;
  iVar2 = haptic_i2c_read(param_1,5,local_2c);
  if (iVar2 < 0) {
    puVar3 = &DAT_00104ba2;
    uVar4 = 0xaf;
LAB_00102168:
    _printk(puVar3,"aw86320",uVar4,"haptic_i2c_write_bits",iVar2);
  }
  else {
    iVar2 = haptic_i2c_write(param_1,5,local_2c[0] & 0xff7f);
    if (iVar2 < 0) {
      puVar3 = &DAT_00104e12;
      uVar4 = 0xb8;
      goto LAB_00102168;
    }
  }
  local_2c[0] = 0;
  iVar2 = haptic_i2c_read(param_1,5,local_2c);
  if (iVar2 < 0) {
    puVar3 = &DAT_00104ba2;
    uVar4 = 0xaf;
LAB_00102190:
    _printk(puVar3,"aw86320",uVar4,"haptic_i2c_write_bits",iVar2);
  }
  else {
    iVar2 = haptic_i2c_write(param_1,5,local_2c[0] & 0xffbf);
    if (iVar2 < 0) {
      puVar3 = &DAT_00104e12;
      uVar4 = 0xb8;
      goto LAB_00102190;
    }
  }
  local_2c[0] = 0;
  iVar2 = haptic_i2c_read(param_1,5,local_2c);
  if (iVar2 < 0) {
    puVar3 = &DAT_00104ba2;
    uVar4 = 0xaf;
LAB_001021b8:
    _printk(puVar3,"aw86320",uVar4,"haptic_i2c_write_bits",iVar2);
  }
  else {
    iVar2 = haptic_i2c_write(param_1,5,local_2c[0] & 0xffdf);
    if (iVar2 < 0) {
      puVar3 = &DAT_00104e12;
      uVar4 = 0xb8;
      goto LAB_001021b8;
    }
  }
  local_2c[0] = 0;
  iVar2 = haptic_i2c_read(param_1,5,local_2c);
  if (iVar2 < 0) {
    puVar3 = &DAT_00104ba2;
    uVar4 = 0xaf;
LAB_001021e0:
    _printk(puVar3,"aw86320",uVar4,"haptic_i2c_write_bits",iVar2);
  }
  else {
    iVar2 = haptic_i2c_write(param_1,5,local_2c[0] & 0xffef);
    if (iVar2 < 0) {
      puVar3 = &DAT_00104e12;
      uVar4 = 0xb8;
      goto LAB_001021e0;
    }
  }
  local_2c[0] = 0;
  iVar2 = haptic_i2c_read(param_1,5,local_2c);
  if (iVar2 < 0) {
    puVar3 = &DAT_00104ba2;
    uVar4 = 0xaf;
  }
  else {
    iVar2 = haptic_i2c_write(param_1,5,local_2c[0] & 0xfff7);
    if (-1 < iVar2) goto LAB_00101fd4;
    puVar3 = &DAT_00104e12;
    uVar4 = 0xb8;
  }
  _printk(puVar3,"aw86320",uVar4,"haptic_i2c_write_bits",iVar2);
LAB_00101fd4:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

