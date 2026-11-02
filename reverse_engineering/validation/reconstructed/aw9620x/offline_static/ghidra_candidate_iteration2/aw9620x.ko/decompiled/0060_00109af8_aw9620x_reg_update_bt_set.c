
undefined8
aw9620x_reg_update_bt_set(long param_1,undefined8 param_2,undefined8 param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  int local_3c;
  long local_38;
  
  lVar2 = sp_el0;
  local_38 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar1 = kstrtouint(param_3,0,&local_3c);
  if (iVar1 == 0) {
    mutex_lock(&DAT_0010e7f8);
    if (local_3c == 1) {
      if (*(char *)(lVar2 + -0x33) == '\0') {
        disable_irq(*(undefined4 *)(lVar2 + -0x1c));
        *(undefined1 *)(lVar2 + -0x33) = 1;
      }
      aw9620x_reg_update_boot_work(lVar2 + -0x38);
      if (*(char *)(lVar2 + -0x33) == '\x01') {
        enable_irq(*(undefined4 *)(lVar2 + -0x1c));
        *(undefined1 *)(lVar2 + -0x33) = 0;
      }
    }
    mutex_unlock(&DAT_0010e7f8);
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

