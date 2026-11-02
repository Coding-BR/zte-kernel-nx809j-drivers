
ulong syna_tcm_read_flash_mtp_config
                (long param_1,long param_2,long *param_3,uint param_4,int param_5,undefined4 param_6
                )

{
  int iVar1;
  void *__s;
  long lVar2;
  ulong uVar3;
  undefined *puVar4;
  char cVar5;
  size_t __n;
  
  if (param_2 == 0) {
    puVar4 = &DAT_00134898;
LAB_00125b2c:
    _printk(puVar4,"syna_tcm_read_flash_mtp_config");
    return 0xffffff0f;
  }
  if (param_3 == (long *)0x0) {
    puVar4 = &DAT_00135b8d;
    goto LAB_00125b2c;
  }
  if (*(char *)(param_1 + 9) == '\x01') {
    puVar4 = &DAT_00139ceb;
    cVar5 = '\x01';
LAB_00125b68:
    _printk(puVar4,"syna_tcm_read_flash_mtp_config",cVar5);
    return 0xffffff0f;
  }
  if (param_4 == 0) {
    param_4 = *(uint *)(param_2 + 0x28);
  }
  cVar5 = **(char **)(param_2 + 0x20);
  if (cVar5 != '\x03') {
    puVar4 = &DAT_0013d047;
    goto LAB_00125b68;
  }
  __n = (size_t)*(uint *)(param_3 + 1);
  iVar1 = *(int *)(param_2 + 0x3c);
  __s = (void *)*param_3;
  if (param_4 <= *(uint *)(param_3 + 1)) goto LAB_00125acc;
  if (__s == (void *)0x0) {
LAB_00125aa0:
    lVar2 = syna_request_managed_device();
    if (lVar2 != 0) goto LAB_00125aa8;
LAB_00125bc4:
    puVar4 = &DAT_0013ccb3;
  }
  else {
    lVar2 = syna_request_managed_device();
    if (lVar2 != 0) {
      devm_kfree(lVar2,__s);
      goto LAB_00125aa0;
    }
    _printk(&DAT_0013ccb3,"syna_pal_mem_free");
    lVar2 = syna_request_managed_device();
    if (lVar2 == 0) goto LAB_00125bc4;
LAB_00125aa8:
    if (0 < (int)param_4) {
      __n = (size_t)param_4;
      __s = (void *)devm_kmalloc(lVar2,__n,0xdc0);
      *param_3 = (long)__s;
      if (__s != (void *)0x0) {
        *(uint *)(param_3 + 1) = param_4;
LAB_00125acc:
        memset(__s,0,__n);
        *(undefined4 *)((long)param_3 + 0xc) = 0;
        uVar3 = syna_tcm_read_flash(param_1,iVar1 + param_5,*param_3,param_4,param_6);
        if (-1 < (int)uVar3) {
          *(uint *)((long)param_3 + 0xc) = param_4;
          return uVar3;
        }
        _printk(&DAT_0013621c,"syna_tcm_read_flash_mtp_config",iVar1 + param_5);
        return uVar3 & 0xffffffff;
      }
      goto LAB_00125bdc;
    }
    puVar4 = &DAT_00138e98;
  }
  _printk(puVar4,"syna_pal_mem_alloc");
  *param_3 = 0;
LAB_00125bdc:
  _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",param_4);
  param_3[1] = 0;
  _printk(&DAT_001347f0,"syna_tcm_read_flash_mtp_config");
  return 0xffffff0d;
}

