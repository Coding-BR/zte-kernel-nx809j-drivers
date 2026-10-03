
undefined8 syna_tcm_get_features(long param_1,void *param_2,int param_3)

{
  uint uVar1;
  code *pcVar2;
  undefined8 uVar3;
  
  if (param_1 == 0) {
    uVar3 = _printk(&DAT_00168a84,"syna_tcm_get_features");
    return uVar3;
  }
  if (*(char *)(param_1 + 9) != '\x01') {
    uVar3 = _printk(&DAT_00169282,"syna_tcm_get_features");
    return uVar3;
  }
  if (param_3 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
      uVar3 = _printk(&DAT_00171524,"syna_tcm_get_features");
      return uVar3;
    }
    param_3 = 0;
  }
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x148694);
    (*pcVar2)();
  }
  uVar3 = (**(code **)(param_1 + 0x398))(param_1,0x32,0,0,0,param_3);
  if ((int)uVar3 < 0) {
    uVar3 = _printk(&DAT_0016f442,"syna_tcm_get_features",0x32);
    return uVar3;
  }
  if (param_2 != (void *)0x0) {
    if (*(char *)(param_1 + 0x188) != '\0') {
      uVar3 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
      return uVar3;
    }
    mutex_lock(param_1 + 0x158);
    uVar1 = *(uint *)(param_1 + 0x154);
    if (0xf < uVar1) {
      uVar1 = 0x10;
    }
    *(char *)(param_1 + 0x188) = *(char *)(param_1 + 0x188) + '\x01';
    if (*(void **)(param_1 + 0x148) == (void *)0x0) {
      uVar3 = _printk(&DAT_001729ae,"syna_tcm_get_features");
      return uVar3;
    }
    if (*(uint *)(param_1 + 0x150) < uVar1) {
      uVar3 = _printk(&DAT_0016edc2,"syna_pal_mem_cpy",*(uint *)(param_1 + 0x150),0x10);
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
  return uVar3;
}

