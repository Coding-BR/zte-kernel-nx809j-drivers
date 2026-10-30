
ulong syna_tcm_get_features(long param_1,void *param_2,int param_3)

{
  uint uVar1;
  code *pcVar2;
  ulong uVar3;
  char cVar4;
  
  if (param_1 == 0) {
    _printk(&DAT_00133fd6,"syna_tcm_get_features");
    uVar3 = 0xffffff0f;
  }
  else if (*(char *)(param_1 + 9) == '\x01') {
    if (param_3 == 0) {
      if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
        param_3 = *(int *)(param_1 + 0x20c);
        _printk(&DAT_0013c851,"syna_tcm_get_features");
      }
      else {
        param_3 = 0;
      }
    }
    if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x123a80);
      (*pcVar2)();
    }
    uVar3 = (**(code **)(param_1 + 0x398))(param_1,0x32,0,0,0,param_3);
    if ((int)uVar3 < 0) {
      uVar3 = uVar3 & 0xffffffff;
      _printk(&DAT_0013a7db,"syna_tcm_get_features",0x32);
    }
    else if (param_2 != (void *)0x0) {
      if (*(char *)(param_1 + 0x188) != '\0') {
        _printk(&DAT_00138e56,"syna_tcm_buf_lock");
      }
      mutex_lock(param_1 + 0x158);
      uVar1 = *(uint *)(param_1 + 0x154);
      if (0xf < uVar1) {
        uVar1 = 0x10;
      }
      *(char *)(param_1 + 0x188) = *(char *)(param_1 + 0x188) + '\x01';
      if (*(void **)(param_1 + 0x148) != (void *)0x0) {
        if (uVar1 <= *(uint *)(param_1 + 0x150)) {
          memcpy(param_2,*(void **)(param_1 + 0x148),(ulong)uVar1);
          if (*(char *)(param_1 + 0x188) == '\x01') {
            cVar4 = '\0';
          }
          else {
            _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
            cVar4 = *(char *)(param_1 + 0x188) + -1;
          }
          *(char *)(param_1 + 0x188) = cVar4;
          mutex_unlock(param_1 + 0x158);
          return 0;
        }
        _printk(&DAT_0013a172,"syna_pal_mem_cpy",*(uint *)(param_1 + 0x150),0x10);
      }
      _printk(&DAT_0013dc94,"syna_tcm_get_features");
      if (*(char *)(param_1 + 0x188) == '\x01') {
        cVar4 = '\0';
      }
      else {
        _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
        cVar4 = *(char *)(param_1 + 0x188) + -1;
      }
      *(char *)(param_1 + 0x188) = cVar4;
      mutex_unlock(param_1 + 0x158);
      uVar3 = 0xffffffea;
    }
  }
  else {
    _printk(&DAT_001347b2,"syna_tcm_get_features");
    uVar3 = 0xffffff0f;
  }
  return uVar3;
}

