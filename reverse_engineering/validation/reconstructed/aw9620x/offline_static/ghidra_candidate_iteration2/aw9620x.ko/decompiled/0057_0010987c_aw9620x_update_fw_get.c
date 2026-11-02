
long aw9620x_update_fw_get(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  uint local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = aw9620x_i2c_read(lVar2 + -0x38,0x1a10,&local_2c);
  if (iVar1 < 0) {
    _dev_printk(&DAT_0010d797,*(undefined8 *)(lVar2 + -8),"[%s:%d] read firmware version err\n",
                "aw9620x_update_fw_get",0xdf5);
  }
  iVar1 = snprintf(param_3,0x1000,"reg firmware_version:0x%08x\n",(ulong)local_2c);
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return (long)iVar1;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

