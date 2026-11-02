
void syna_tcm_buf_copy_1(long *param_1,undefined8 *param_2)

{
  uint uVar1;
  uint uVar2;
  void *__s;
  long lVar3;
  undefined *puVar4;
  ulong __n;
  uint uVar5;
  
  if ((char)param_1[8] != '\0') {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016da50,"syna_tcm_buf_lock");
  }
  mutex_lock(param_1 + 2);
  *(char *)(param_1 + 8) = (char)param_1[8] + '\x01';
  if (*(char *)(param_2 + 8) != '\0') {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016da50,"syna_tcm_buf_lock");
  }
  mutex_lock(param_2 + 2);
  uVar5 = *(uint *)((long)param_2 + 0xc);
  *(char *)(param_2 + 8) = *(char *)(param_2 + 8) + '\x01';
  uVar2 = *(uint *)(param_1 + 1);
  __n = (ulong)uVar2;
  if (uVar2 < uVar5) {
    uVar1 = uVar5 + 1;
    __s = (void *)*param_1;
    if (uVar2 < uVar1) {
      if (__s != (void *)0x0) {
        lVar3 = syna_request_managed_device();
        if (lVar3 == 0) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00171996,"syna_pal_mem_free");
        }
        devm_kfree(lVar3,__s);
      }
      lVar3 = syna_request_managed_device();
      if (lVar3 == 0) {
        puVar4 = &DAT_00171996;
LAB_001444e4:
                    /* WARNING: Subroutine does not return */
        _printk(puVar4,"syna_pal_mem_alloc");
      }
      if (0x7ffffffe < uVar5) {
        puVar4 = &DAT_0016da92;
        goto LAB_001444e4;
      }
      __s = (void *)devm_kmalloc(lVar3,(ulong)uVar1,0xdc0);
      *param_1 = (long)__s;
      if (__s == (void *)0x0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016c730,"syna_tcm_buf_alloc",uVar1);
      }
      *(uint *)(param_1 + 1) = uVar1;
      __n = (ulong)uVar1;
    }
    memset(__s,0,__n);
    *(undefined4 *)((long)param_1 + 0xc) = 0;
    __n = (ulong)*(uint *)(param_1 + 1);
    uVar5 = *(uint *)((long)param_2 + 0xc);
  }
  if (((void *)*param_1 == (void *)0x0) || ((void *)*param_2 == (void *)0x0)) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016a4dc,"syna_tcm_buf_copy",uVar5);
  }
  if ((uVar5 <= (uint)__n) && (uVar5 <= *(uint *)(param_2 + 1))) {
    memcpy((void *)*param_1,(void *)*param_2,(ulong)uVar5);
    *(undefined4 *)((long)param_1 + 0xc) = *(undefined4 *)((long)param_2 + 0xc);
    if (*(char *)(param_2 + 8) != '\x01') {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
    }
    *(undefined1 *)(param_2 + 8) = 0;
    mutex_unlock(param_2 + 2);
    if ((char)param_1[8] != '\x01') {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
    }
    *(undefined1 *)(param_1 + 8) = 0;
    mutex_unlock(param_1 + 2);
    return;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016edc2,"syna_pal_mem_cpy",*(uint *)(param_2 + 1),__n,uVar5);
}

