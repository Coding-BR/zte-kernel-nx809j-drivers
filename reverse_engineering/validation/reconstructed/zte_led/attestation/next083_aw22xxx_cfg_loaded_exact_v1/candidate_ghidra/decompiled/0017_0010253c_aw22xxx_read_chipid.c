
void aw22xxx_read_chipid(long param_1)

{
  long lVar1;
  int iVar2;
  char local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c[0] = '\0';
  aw22xxx_i2c_write(param_1,0xff,0);
  aw22xxx_i2c_write(param_1,1,0x55);
  usleep_range_state(2000,3000,2);
  iVar2 = aw22xxx_i2c_read(param_1,1,local_2c);
  if (-1 < iVar2) {
    if (local_2c[0] == 'v') {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00106d61,"aw22xxx_read_chipid",0x76,iVar2);
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0010791f,"aw22xxx_read_chipid",local_2c[0],iVar2);
  }
  _dev_err(*(undefined8 *)(param_1 + 8),"%s: failed to read register AW22XXX_REG_ID: %d\n",
           "aw22xxx_read_chipid");
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0xfffffffb);
}

