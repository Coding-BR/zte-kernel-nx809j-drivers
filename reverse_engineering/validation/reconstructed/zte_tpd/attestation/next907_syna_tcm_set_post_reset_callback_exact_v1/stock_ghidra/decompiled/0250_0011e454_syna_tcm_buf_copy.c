
void syna_tcm_buf_copy(long *param_1,undefined8 *param_2)

{
  uint uVar1;
  uint uVar2;
  void *__s;
  long lVar3;
  undefined *puVar4;
  ulong __n;
  char cVar5;
  uint uVar6;
  ulong uVar7;
  
  if ((char)param_1[8] != '\0') {
    _printk(&DAT_00138e56,"syna_tcm_buf_lock");
  }
  mutex_lock(param_1 + 2);
  *(char *)(param_1 + 8) = (char)param_1[8] + '\x01';
  if (*(char *)(param_2 + 8) != '\0') {
    _printk(&DAT_00138e56,"syna_tcm_buf_lock");
  }
  mutex_lock(param_2 + 2);
  uVar6 = *(uint *)((long)param_2 + 0xc);
  *(char *)(param_2 + 8) = *(char *)(param_2 + 8) + '\x01';
  uVar2 = *(uint *)(param_1 + 1);
  __n = (ulong)uVar2;
  if (uVar2 < uVar6) {
    uVar1 = uVar6 + 1;
    uVar7 = (ulong)uVar1;
    __s = (void *)*param_1;
    if (uVar1 <= uVar2) {
LAB_0011e518:
      memset(__s,0,__n);
      *(undefined4 *)((long)param_1 + 0xc) = 0;
      __n = (ulong)*(uint *)(param_1 + 1);
      uVar6 = *(uint *)((long)param_2 + 0xc);
      goto LAB_0011e530;
    }
    if (__s == (void *)0x0) {
LAB_0011e4e4:
      lVar3 = syna_request_managed_device();
      if (lVar3 != 0) goto LAB_0011e4ec;
LAB_0011e680:
      puVar4 = &DAT_0013ccb3;
LAB_0011e688:
      _printk(puVar4,"syna_pal_mem_alloc");
      *param_1 = 0;
    }
    else {
      lVar3 = syna_request_managed_device();
      if (lVar3 != 0) {
        devm_kfree(lVar3,__s);
        goto LAB_0011e4e4;
      }
      _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      lVar3 = syna_request_managed_device();
      if (lVar3 == 0) goto LAB_0011e680;
LAB_0011e4ec:
      if (0x7ffffffe < uVar6) {
        puVar4 = &DAT_00138e98;
        goto LAB_0011e688;
      }
      __s = (void *)devm_kmalloc(lVar3,uVar7,0xdc0);
      *param_1 = (long)__s;
      if (__s != (void *)0x0) {
        *(uint *)(param_1 + 1) = uVar1;
        __n = uVar7;
        goto LAB_0011e518;
      }
    }
    _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",uVar7);
    param_1[1] = 0;
    puVar4 = &DAT_00138466;
    uVar6 = *(int *)((long)param_2 + 0xc) + 1;
  }
  else {
LAB_0011e530:
    if (((void *)*param_1 != (void *)0x0) && ((void *)*param_2 != (void *)0x0)) {
      if ((uVar6 <= (uint)__n) && (uVar6 <= *(uint *)(param_2 + 1))) {
        memcpy((void *)*param_1,(void *)*param_2,(ulong)uVar6);
        *(undefined4 *)((long)param_1 + 0xc) = *(undefined4 *)((long)param_2 + 0xc);
        goto LAB_0011e564;
      }
      _printk(&DAT_0013a172,"syna_pal_mem_cpy",*(uint *)(param_2 + 1),__n,uVar6);
      uVar6 = *(uint *)((long)param_2 + 0xc);
    }
    puVar4 = &DAT_001359ca;
  }
  _printk(puVar4,"syna_tcm_buf_copy",uVar6);
LAB_0011e564:
  if (*(char *)(param_2 + 8) == '\x01') {
    cVar5 = '\0';
  }
  else {
    _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
    cVar5 = *(char *)(param_2 + 8) + -1;
  }
  *(char *)(param_2 + 8) = cVar5;
  mutex_unlock(param_2 + 2);
  if ((char)param_1[8] == '\x01') {
    cVar5 = '\0';
  }
  else {
    _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
    cVar5 = (char)param_1[8] + -1;
  }
  *(char *)(param_1 + 8) = cVar5;
  mutex_unlock(param_1 + 2);
  return;
}

