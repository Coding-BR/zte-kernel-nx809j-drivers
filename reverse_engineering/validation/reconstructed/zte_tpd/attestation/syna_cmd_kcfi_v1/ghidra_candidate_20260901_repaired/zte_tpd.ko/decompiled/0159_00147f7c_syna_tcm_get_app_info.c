
undefined8 syna_tcm_get_app_info(long param_1,void *param_2,int param_3)

{
  code *pcVar1;
  int iVar2;
  undefined *puVar3;
  undefined8 uVar4;
  uint uVar5;
  ulong __n;
  
  if (param_1 == 0) {
    uVar4 = _printk(&DAT_00168a84,"syna_tcm_get_app_info");
    return uVar4;
  }
  if (*(char *)(param_1 + 9) != '\x01') {
    uVar4 = _printk(&DAT_00169282,"syna_tcm_get_app_info");
    return uVar4;
  }
  if (param_3 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
      uVar4 = _printk(&DAT_00171524,"syna_tcm_get_app_info");
      return uVar4;
    }
    param_3 = 0;
  }
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x147ff4);
    (*pcVar1)();
  }
  iVar2 = (**(code **)(param_1 + 0x398))(param_1,0x20,0,0,0,param_3);
  if (iVar2 < 0) {
    uVar4 = _printk(&DAT_0016f442,"syna_tcm_get_app_info",0x20);
    return uVar4;
  }
  uVar5 = *(uint *)(param_1 + 0x154);
  if (0x2f < uVar5) {
    uVar5 = 0x30;
  }
  __n = (ulong)uVar5;
  if (*(char *)(param_1 + 0x188) != '\0') {
    uVar4 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
    return uVar4;
  }
  mutex_lock(param_1 + 0x158);
  *(char *)(param_1 + 0x188) = *(char *)(param_1 + 0x188) + '\x01';
  if (*(void **)(param_1 + 0x148) == (void *)0x0) {
    uVar4 = _printk(&DAT_0016d142,"syna_tcm_get_app_info");
    return uVar4;
  }
  if (uVar5 <= *(uint *)(param_1 + 0x150)) {
    memcpy((void *)(param_1 + 0xb0),*(void **)(param_1 + 0x148),__n);
    if (*(char *)(param_1 + 0x188) != '\x01') {
      uVar4 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
      return uVar4;
    }
    *(undefined1 *)(param_1 + 0x188) = 0;
    mutex_unlock(param_1 + 0x158);
    if (param_2 != (void *)0x0) {
      memcpy(param_2,(void *)(param_1 + 0xb0),__n);
    }
    if (*(short *)(param_1 + 0xb2) == 0) {
      *(uint *)(param_1 + 0x10) = (uint)*(ushort *)(param_1 + 0xd0);
      *(uint *)(param_1 + 0x14) = (uint)*(ushort *)(param_1 + 0xd2);
      *(uint *)(param_1 + 0x18) = (uint)*(ushort *)(param_1 + 0xd4);
      *(uint *)(param_1 + 0x1c) = (uint)*(ushort *)(param_1 + 0xd8);
      *(uint *)(param_1 + 0x20) = (uint)*(ushort *)(param_1 + 0xda);
      *(undefined8 *)(param_1 + 0x2c) = *(undefined8 *)(param_1 + 200);
      *(undefined8 *)(param_1 + 0x24) = *(undefined8 *)(param_1 + 0xc0);
      return 0;
    }
    if (*(short *)(param_1 + 0xb2) == 0xff) {
      puVar3 = &DAT_0016fef2;
    }
    else {
      puVar3 = &DAT_0016ac5e;
    }
    uVar4 = _printk(puVar3,"syna_tcm_get_app_info");
    return uVar4;
  }
  uVar4 = _printk(&DAT_0016edc2,"syna_pal_mem_cpy",*(uint *)(param_1 + 0x150),0x30,__n);
  return uVar4;
}

