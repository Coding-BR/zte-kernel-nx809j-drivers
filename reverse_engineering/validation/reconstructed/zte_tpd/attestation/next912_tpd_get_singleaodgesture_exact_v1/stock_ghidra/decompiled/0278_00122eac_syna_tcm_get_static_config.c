
ulong syna_tcm_get_static_config(long param_1,void *param_2,uint param_3,int param_4)

{
  uint uVar1;
  code *pcVar2;
  ulong uVar3;
  char cVar4;
  
  if (param_1 == 0) {
    _printk(&DAT_00133fd6,"syna_tcm_get_static_config");
    uVar3 = 0xffffff0f;
  }
  else if (*(char *)(param_1 + 9) == '\x01') {
    if (param_4 == 0) {
      if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
        param_4 = *(int *)(param_1 + 0x20c);
        _printk(&DAT_0013c851,"syna_tcm_get_static_config");
      }
      else {
        param_4 = 0;
      }
    }
    if (param_3 < *(ushort *)(param_1 + 0xb4)) {
      _printk(&DAT_0013228a,"syna_tcm_get_static_config",param_3);
      uVar3 = 0xffffff0f;
    }
    else {
      if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
        pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x122f34);
        (*pcVar2)();
      }
      uVar3 = (**(code **)(param_1 + 0x398))(param_1,0x21,0,0,0,param_4);
      if ((int)uVar3 < 0) {
        uVar3 = uVar3 & 0xffffffff;
        _printk(&DAT_0013a7db,"syna_tcm_get_static_config",0x21);
      }
      else if ((param_2 != (void *)0x0) && (*(uint *)(param_1 + 0x154) <= param_3)) {
        if (*(char *)(param_1 + 0x188) != '\0') {
          _printk(&DAT_00138e56,"syna_tcm_buf_lock");
        }
        mutex_lock(param_1 + 0x158);
        *(char *)(param_1 + 0x188) = *(char *)(param_1 + 0x188) + '\x01';
        if (*(void **)(param_1 + 0x148) != (void *)0x0) {
          uVar1 = *(uint *)(param_1 + 0x154);
          if ((uVar1 <= param_3) && (uVar1 <= *(uint *)(param_1 + 0x150))) {
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
          _printk(&DAT_0013a172,"syna_pal_mem_cpy",*(uint *)(param_1 + 0x150),param_3);
        }
        _printk(&DAT_0013ac6a,"syna_tcm_get_static_config");
        syna_tcm_buf_unlock(param_1 + 0x148);
        uVar3 = 0xffffffea;
      }
    }
  }
  else {
    _printk(&DAT_001347b2,"syna_tcm_get_static_config");
    uVar3 = 0xffffff0f;
  }
  return uVar3;
}

