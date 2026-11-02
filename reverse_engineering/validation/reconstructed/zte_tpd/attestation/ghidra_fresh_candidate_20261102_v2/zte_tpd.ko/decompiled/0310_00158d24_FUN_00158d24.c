
void FUN_00158d24(void)

{
  uint uVar1;
  bool in_CY;
  void *__s;
  undefined8 *unaff_x19;
  undefined8 *unaff_x20;
  ulong unaff_x22;
  
  if (in_CY) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00180da7,"syna_pal_mem_alloc");
  }
  __s = (void *)devm_kmalloc();
  *unaff_x19 = __s;
  if (__s == (void *)0x0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00180576,"syna_tcm_buf_alloc",unaff_x22 & 0xffffffff);
  }
  *(int *)(unaff_x19 + 1) = (int)unaff_x22;
  memset(__s,0,unaff_x22);
  *(undefined4 *)((long)unaff_x19 + 0xc) = 0;
  uVar1 = *(uint *)((long)unaff_x20 + 0xc);
  if (((void *)*unaff_x19 == (void *)0x0) || ((void *)*unaff_x20 == (void *)0x0)) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0017f87b,"syna_tcm_buf_copy",uVar1);
  }
  if ((uVar1 <= *(uint *)(unaff_x19 + 1)) && (uVar1 <= *(uint *)(unaff_x20 + 1))) {
    memcpy((void *)*unaff_x19,(void *)*unaff_x20,(ulong)uVar1);
    *(undefined4 *)((long)unaff_x19 + 0xc) = *(undefined4 *)((long)unaff_x20 + 0xc);
    if (*(char *)(unaff_x20 + 8) != '\x01') {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00180d77,"syna_tcm_buf_unlock");
    }
    *(undefined1 *)(unaff_x20 + 8) = 0;
    mutex_unlock(unaff_x20 + 2);
    if (*(char *)(unaff_x19 + 8) == '\x01') {
      *(undefined1 *)(unaff_x19 + 8) = 0;
      mutex_unlock(unaff_x19 + 2);
      return;
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00180d77,"syna_tcm_buf_unlock");
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00181608,"syna_pal_mem_cpy",*(uint *)(unaff_x20 + 1),*(uint *)(unaff_x19 + 1),uVar1);
}

