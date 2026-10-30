
undefined8 syna_tcm_get_static_config(long param_1,void *param_2,uint param_3,int param_4)

{
  uint uVar1;
  code *pcVar2;
  undefined8 uVar3;
  
  if (param_1 == 0) {
    uVar3 = _printk(&DAT_00168a84,"syna_tcm_get_static_config");
    return uVar3;
  }
  if (*(char *)(param_1 + 9) != '\x01') {
    uVar3 = _printk(&DAT_00169282,"syna_tcm_get_static_config");
    return uVar3;
  }
  if (param_4 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
      uVar3 = _printk(&DAT_00171524,"syna_tcm_get_static_config");
      return uVar3;
    }
    param_4 = 0;
  }
  if (*(ushort *)(param_1 + 0xb4) <= param_3) {
    if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x1490fc);
      (*pcVar2)();
    }
    uVar3 = (**(code **)(param_1 + 0x398))(param_1,0x21,0,0,0,param_4);
    if ((int)uVar3 < 0) {
      uVar3 = _printk(&DAT_0016f442,"syna_tcm_get_static_config",0x21);
      return uVar3;
    }
    if (param_2 != (void *)0x0) {
      if (*(uint *)(param_1 + 0x154) <= param_3) {
        if (*(char *)(param_1 + 0x188) != '\0') {
          uVar3 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
          return uVar3;
        }
        mutex_lock(param_1 + 0x158);
        *(char *)(param_1 + 0x188) = *(char *)(param_1 + 0x188) + '\x01';
        if (*(void **)(param_1 + 0x148) == (void *)0x0) {
          uVar3 = _printk(&DAT_0016f8e2,"syna_tcm_get_static_config");
          return uVar3;
        }
        uVar1 = *(uint *)(param_1 + 0x154);
        if ((param_3 < uVar1) || (*(uint *)(param_1 + 0x150) < uVar1)) {
          uVar3 = _printk(&DAT_0016edc2,"syna_pal_mem_cpy",*(uint *)(param_1 + 0x150),param_3);
          return uVar3;
        }
        memcpy(param_2,*(void **)(param_1 + 0x148),(ulong)uVar1);
        if (*(char *)(param_1 + 0x188) != '\x01') {
          uVar3 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
          return uVar3;
        }
        *(undefined1 *)(param_1 + 0x188) = 0;
        mutex_unlock(param_1 + 0x158);
        uVar3 = 0;
      }
    }
    return uVar3;
  }
  uVar3 = _printk(&DAT_00166cd4,"syna_tcm_get_static_config",param_3);
  return uVar3;
}

