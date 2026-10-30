
void syna_tcm_read_flash_mtp_config
               (long param_1,long param_2,long *param_3,uint param_4,int param_5,undefined4 param_6)

{
  int iVar1;
  int iVar2;
  void *__s;
  long lVar3;
  undefined1 *puVar4;
  undefined *puVar5;
  char cVar6;
  size_t __n;
  
  if (param_2 == 0) {
    puVar4 = &DAT_0016936a;
  }
  else {
    if (param_3 != (long *)0x0) {
      if (*(char *)(param_1 + 9) == '\x01') {
        puVar5 = &DAT_0016e922;
        cVar6 = '\x01';
      }
      else {
        if (param_4 == 0) {
          param_4 = *(uint *)(param_2 + 0x28);
        }
        cVar6 = **(char **)(param_2 + 0x20);
        if (cVar6 == '\x03') {
          __n = (size_t)*(uint *)(param_3 + 1);
          iVar1 = *(int *)(param_2 + 0x3c);
          __s = (void *)*param_3;
          if (param_4 <= *(uint *)(param_3 + 1)) {
LAB_00136358:
            memset(__s,0,__n);
            *(undefined4 *)((long)param_3 + 0xc) = 0;
            iVar2 = syna_tcm_read_flash(param_1,iVar1 + param_5,*param_3,param_4,param_6);
            if (-1 < iVar2) {
              *(uint *)((long)param_3 + 0xc) = param_4;
              return;
            }
            _printk(&DAT_0016ad4a,"syna_tcm_read_flash_mtp_config",iVar1 + param_5);
            return;
          }
          if (__s != (void *)0x0) {
            lVar3 = syna_request_managed_device();
            if (lVar3 == 0) {
              _printk(&DAT_00171996,"syna_pal_mem_free");
              return;
            }
            devm_kfree(lVar3,__s);
          }
          lVar3 = syna_request_managed_device();
          if (lVar3 == 0) {
            puVar5 = &DAT_00171996;
          }
          else {
            if (0 < (int)param_4) {
              __n = (size_t)param_4;
              __s = (void *)devm_kmalloc(lVar3,__n,0xdc0);
              *param_3 = (long)__s;
              if (__s == (void *)0x0) {
                _printk(&DAT_0016c730,"syna_tcm_buf_alloc",param_4);
                return;
              }
              *(uint *)(param_3 + 1) = param_4;
              goto LAB_00136358;
            }
            puVar5 = &DAT_0016da92;
          }
          _printk(puVar5,"syna_pal_mem_alloc");
          return;
        }
        puVar5 = &DAT_00171d34;
      }
      _printk(puVar5,"syna_tcm_read_flash_mtp_config",cVar6);
      return;
    }
    puVar4 = &DAT_0016a6a4;
  }
  _printk(puVar4,"syna_tcm_read_flash_mtp_config");
  return;
}

