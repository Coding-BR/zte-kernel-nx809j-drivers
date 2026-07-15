
undefined4 syna_tcm_buf_copy(long *param_1,undefined8 *param_2)

{
  uint uVar1;
  uint uVar2;
  void *__s;
  long lVar3;
  undefined *puVar4;
  ulong __n;
  char cVar5;
  undefined4 uVar6;
  uint uVar7;
  ulong uVar8;
  
  if ((char)param_1[8] != '\0') {
    _printk(&DAT_00138e56,"syna_tcm_buf_lock");
  }
  mutex_lock(param_1 + 2);
  *(char *)(param_1 + 8) = (char)param_1[8] + '\x01';
  if (*(char *)(param_2 + 8) != '\0') {
    _printk(&DAT_00138e56,"syna_tcm_buf_lock");
  }
  mutex_lock(param_2 + 2);
  uVar7 = *(uint *)((long)param_2 + 0xc);
  *(char *)(param_2 + 8) = *(char *)(param_2 + 8) + '\x01';
  uVar2 = *(uint *)(param_1 + 1);
  __n = (ulong)uVar2;
  if (uVar2 < uVar7) {
    if (param_1 == (long *)0x0) {
      _printk(&DAT_0013c894,"syna_tcm_buf_alloc");
    }
    else {
      uVar1 = uVar7 + 1;
      uVar8 = (ulong)uVar1;
      __s = (void *)*param_1;
      if (uVar1 <= uVar2) {
LAB_00121cd8:
        memset(__s,0,__n);
        *(undefined4 *)((long)param_1 + 0xc) = 0;
        __n = (ulong)*(uint *)(param_1 + 1);
        uVar7 = *(uint *)((long)param_2 + 0xc);
        goto LAB_00121cf0;
      }
      if (__s == (void *)0x0) {
LAB_00121ca4:
        lVar3 = syna_request_managed_device();
        if (lVar3 != 0) goto LAB_00121cac;
LAB_00121e74:
        puVar4 = &DAT_0013ccb3;
LAB_00121e7c:
        _printk(puVar4,"syna_pal_mem_alloc");
        *param_1 = 0;
      }
      else {
        lVar3 = syna_request_managed_device();
        if (lVar3 != 0) {
          devm_kfree(lVar3,__s);
          goto LAB_00121ca4;
        }
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
        lVar3 = syna_request_managed_device();
        if (lVar3 == 0) goto LAB_00121e74;
LAB_00121cac:
        if (0x7ffffffe < uVar7) {
          puVar4 = &DAT_00138e98;
          goto LAB_00121e7c;
        }
        __s = (void *)devm_kmalloc(lVar3,uVar8,0xdc0);
        *param_1 = (long)__s;
        if (__s != (void *)0x0) {
          *(uint *)(param_1 + 1) = uVar1;
          __n = uVar8;
          goto LAB_00121cd8;
        }
      }
      _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",uVar8);
      param_1[1] = 0;
    }
    _printk(&DAT_00138466,"syna_tcm_buf_copy",*(int *)((long)param_2 + 0xc) + 1);
    if (*(char *)(param_2 + 8) == '\x01') {
      cVar5 = '\0';
    }
    else {
      _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
      cVar5 = *(char *)(param_2 + 8) + -1;
    }
    *(char *)(param_2 + 8) = cVar5;
    mutex_unlock(param_2 + 2);
    cVar5 = (char)param_1[8];
    uVar6 = 0xffffff0d;
joined_r0x00121eec:
    if (cVar5 == '\x01') {
      cVar5 = '\0';
      goto LAB_00121d54;
    }
  }
  else {
LAB_00121cf0:
    if (((void *)*param_1 == (void *)0x0) || ((void *)*param_2 == (void *)0x0)) {
LAB_00121dc8:
      _printk(&DAT_001359ca,"syna_tcm_buf_copy",uVar7);
      if (*(char *)(param_2 + 8) == '\x01') {
        cVar5 = '\0';
      }
      else {
        _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
        cVar5 = *(char *)(param_2 + 8) + -1;
      }
      *(char *)(param_2 + 8) = cVar5;
      mutex_unlock(param_2 + 2);
      cVar5 = (char)param_1[8];
      uVar6 = 0xffffffea;
      goto joined_r0x00121eec;
    }
    if (((uint)__n < uVar7) || (*(uint *)(param_2 + 1) < uVar7)) {
      _printk(&DAT_0013a172,"syna_pal_mem_cpy",*(uint *)(param_2 + 1),__n,uVar7);
      uVar7 = *(uint *)((long)param_2 + 0xc);
      goto LAB_00121dc8;
    }
    memcpy((void *)*param_1,(void *)*param_2,(ulong)uVar7);
    *(undefined4 *)((long)param_1 + 0xc) = *(undefined4 *)((long)param_2 + 0xc);
    if (*(char *)(param_2 + 8) == '\x01') {
      cVar5 = '\0';
    }
    else {
      _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
      cVar5 = *(char *)(param_2 + 8) + -1;
    }
    *(char *)(param_2 + 8) = cVar5;
    mutex_unlock(param_2 + 2);
    uVar6 = 0;
    if ((char)param_1[8] == '\x01') {
      cVar5 = '\0';
      goto LAB_00121d54;
    }
  }
  _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
  cVar5 = (char)param_1[8] + -1;
LAB_00121d54:
  *(char *)(param_1 + 8) = cVar5;
  mutex_unlock(param_1 + 2);
  return uVar6;
}

