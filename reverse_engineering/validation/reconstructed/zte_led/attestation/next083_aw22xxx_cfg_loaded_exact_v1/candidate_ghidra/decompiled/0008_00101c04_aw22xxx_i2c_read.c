
void aw22xxx_i2c_read(undefined8 *param_1,undefined1 param_2,undefined1 *param_3)

{
  long lVar1;
  int iVar2;
  undefined *puVar3;
  undefined1 local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c[0] = param_2;
  iVar2 = i2c_transfer_buffer_flags(*param_1,local_2c,1,0);
  if (iVar2 < 0) {
    puVar3 = &DAT_001072e0;
  }
  else {
    iVar2 = i2c_transfer_buffer_flags(*param_1,param_3,1,1);
    if (-1 < iVar2) {
      lVar1 = sp_el0;
      if (*(long *)(lVar1 + 0x710) == local_28) {
        return;
      }
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail();
    }
    puVar3 = &DAT_0010688f;
    *param_3 = (char)iVar2;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar3,"aw22xxx_i2c_read",iVar2);
}

