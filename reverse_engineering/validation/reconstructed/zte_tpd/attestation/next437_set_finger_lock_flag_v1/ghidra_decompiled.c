
undefined8 set_finger_lock_flag(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  long lVar2;
  int iVar3;
  uint local_2c;
  long local_28;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar3 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar3 == 0) {
    local_2c = (uint)(local_2c != 0);
    _printk(&DAT_00138090,"set_finger_lock_flag");
    *(uint *)(lVar2 + 0x474) = local_2c;
    if (local_2c != 0) {
      if ((char)DAT_00131c40 == '\x01') {
        complete(&DAT_00131c20);
      }
      if (*(int *)(lVar2 + 0x458) == 0) {
        msleep(100);
        report_ufp_uevent(0);
      }
    }
  }
  else {
    param_3 = 0xffffffffffffffea;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return param_3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

