
void syna_dev_resume(long param_1)

{
  long lVar1;
  undefined8 uVar2;
  long lVar3;
  
  lVar1 = sp_el0;
  lVar3 = *(long *)(param_1 + 0x98);
  if (lVar3 == 0) {
    uVar2 = 0xffffffea;
  }
  else {
    if (*(int *)(lVar3 + 0x57c) != 1) {
      if ((char)DAT_0015fb38 != '\x01') {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00166b74,"syna_dev_resume");
      }
      if (*(int *)(lVar3 + 0x5d4) == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016cdb8,"syna_dev_resume");
      }
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00168362,"syna_dev_resume");
    }
    uVar2 = 0;
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}

