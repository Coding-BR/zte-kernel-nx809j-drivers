
int syna_tcm_get_boot_info(long param_1,void *param_2,int param_3)

{
  code *pcVar1;
  int iVar2;
  char cVar3;
  uint uVar4;
  ulong __n;
  
  if (param_1 == 0) {
    _printk(&DAT_00133fd6,"syna_tcm_get_boot_info");
    iVar2 = -0xf1;
  }
  else if (*(char *)(param_1 + 9) == '\v') {
    if (param_3 == 0) {
      if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
        param_3 = *(int *)(param_1 + 0x20c);
        _printk(&DAT_0013c851,"syna_tcm_get_boot_info");
      }
      else {
        param_3 = 0;
      }
    }
    if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x122a40);
      (*pcVar1)();
    }
    iVar2 = (**(code **)(param_1 + 0x398))(param_1,0x10,0,0,0,param_3);
    if (iVar2 < 0) {
      _printk(&DAT_0013a7db,"syna_tcm_get_boot_info",0x10);
    }
    else {
      uVar4 = *(uint *)(param_1 + 0x154);
      if (0x1f < uVar4) {
        uVar4 = 0x20;
      }
      __n = (ulong)uVar4;
      if (*(char *)(param_1 + 0x188) != '\0') {
        _printk(&DAT_00138e56,"syna_tcm_buf_lock");
      }
      mutex_lock(param_1 + 0x158);
      *(char *)(param_1 + 0x188) = *(char *)(param_1 + 0x188) + '\x01';
      if (*(void **)(param_1 + 0x148) != (void *)0x0) {
        if (uVar4 <= *(uint *)(param_1 + 0x150)) {
          memcpy((void *)(param_1 + 0xe0),*(void **)(param_1 + 0x148),__n);
          if (*(char *)(param_1 + 0x188) == '\x01') {
            cVar3 = '\0';
          }
          else {
            _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
            cVar3 = *(char *)(param_1 + 0x188) + -1;
          }
          *(char *)(param_1 + 0x188) = cVar3;
          mutex_unlock(param_1 + 0x158);
          if (param_2 != (void *)0x0) {
            memcpy(param_2,(void *)(param_1 + 0xe0),__n);
          }
          return 0;
        }
        _printk(&DAT_0013a172,"syna_pal_mem_cpy",*(uint *)(param_1 + 0x150),0x20,__n);
      }
      _printk(&DAT_0013a397,"syna_tcm_get_boot_info");
      if (*(char *)(param_1 + 0x188) == '\x01') {
        cVar3 = '\0';
      }
      else {
        _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
        cVar3 = *(char *)(param_1 + 0x188) + -1;
      }
      *(char *)(param_1 + 0x188) = cVar3;
      mutex_unlock(param_1 + 0x158);
      iVar2 = -0x16;
    }
  }
  else {
    _printk(&DAT_0013c195,"syna_tcm_get_boot_info");
    iVar2 = -0xf1;
  }
  return iVar2;
}

